#include <SD.h>

#define BUF_SIZE 16 
#define WIND_MSG 1
#define AHRS_MSG 2
#define DATA_MSG 3
#define NO_VALID_MSG 0
#define LOG_INTERVAL_MS 1000

File LogFile;
uint8_t buf[BUF_SIZE];
uint8_t incoming_byte, msg_type, expected_msg_type;
uint8_t idx, n_bytes_expected;
bool line_valid;
unsigned long t;

uint8_t get_msg_type(uint8_t marker);
uint8_t get_n_bytes(uint8_t msg_type);
bool check_line_valid(uint8_t line[BUF_SIZE], uint8_t line_size);

void setup()
{
  /*
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(5000);  
  */
     
  // Initialize CS
  pinMode(10, OUTPUT);
  if (!SD.begin(10)) {
    return;
  }
 
  // Initialize log file
  LogFile = SD.open("FLOG.moi", FILE_WRITE);
  if (LogFile) {
    LogFile.print("STARTING LOGGING");
  }
  
  if (LogFile) {
    LogFile.close();
  }
  LogFile = SD.open("FLOG.moi", FILE_WRITE);
  
  // Initialize serial Rx
  Serial.begin(19200);
  while(!Serial);

  expected_msg_type = 1;
  t = millis();
}
 
void loop()
{ 
  
  // CLEAR BUFFER
  buf[0] = 0x24;
  for (int i = 1; i<BUF_SIZE; i++) {
    buf[i] = 0;
  }
  
  // WAIT FOR SENTENCE START
  while(Serial.available() <= 0);
  incoming_byte = Serial.read();
  
  // CHECK IF SENTENCE HAS STARTED
  if (incoming_byte == 0x24) {
    while(Serial.available() <= 0);
    incoming_byte = Serial.read();
    msg_type = get_msg_type(incoming_byte);

    // Check if started sentence is the one currently expected
    if (msg_type == expected_msg_type) {
      buf[1] = incoming_byte;
      idx = 2;
      n_bytes_expected = get_n_bytes(msg_type);
      
      // Record all bytes until expected length
      while (idx <= n_bytes_expected+1) {
        while(Serial.available() <= 0);
        buf[idx] = Serial.read();
        idx += 1;
      }
      
      // Record stop byte and checksum
      while(Serial.available() <= 0);
      buf[idx] = Serial.read();
      while(Serial.available() <= 0);
      buf[idx+1] = Serial.read();

      // Write message to SD card
      if (check_line_valid(buf, idx+2)) {
        if (LogFile) {
          LogFile.write(&buf[0], BUF_SIZE);
        }

        // Cycle to next msg type; if full, save file and wait until interval is past
        expected_msg_type += 1;
        if (expected_msg_type > 3) {
          expected_msg_type = 1;
          if (LogFile) {
            LogFile.close();
          }
          LogFile = SD.open("FLOG.moi", FILE_WRITE);
          while ((millis() - t) < LOG_INTERVAL_MS);
          t = millis();
        }
      }
    }
  }
}

uint8_t get_n_bytes(uint8_t msg_type) {
  if (msg_type == WIND_MSG) {
    return 8;
  }
  if (msg_type == AHRS_MSG) {
    return 7;
  }
  if (msg_type == DATA_MSG) {
    return 12;
  }
  return 0;
}

uint8_t get_msg_type(uint8_t marker) {
    if (marker == 0x57 || marker == 0x77) {
    return WIND_MSG;
  }
  if (marker == 0x61 || marker == 0x41) {
    return AHRS_MSG;
  }
  if (marker == 0x64 || marker == 0x44) {
    return DATA_MSG;
  }
  return NO_VALID_MSG;
}

bool check_line_valid(uint8_t line[BUF_SIZE], uint8_t line_size) {
  uint8_t crc8ccitt( const void * data , size_t size );
  if (line[line_size - 2] != 0x0A) {
    return false;
  }
  if (crc8ccitt(line, line_size) != 0) {
    return false;
  }
  return true;
}

uint8_t crc8ccitt( const void * data , size_t size ) {
  /*
  * crc8.c
  *
  *
  Created on: 05.08.2021
  * Source : https://www.3dbrew.org/wiki/CRC_8_CCITT
  */
  static const uint8_t CRC_TABLE[256] = {
  0x00, 0x07, 0x0E, 0x09, 0x1C, 0x1B, 0x12, 0x15,
  0x38, 0x3F, 0x36, 0x31, 0x24, 0x23, 0x2A, 0x2D,
  0x70, 0x77, 0x7E, 0x79, 0x6C, 0x6B, 0x62, 0x65,
  0x48, 0x4F, 0x46, 0x41, 0x54, 0x53, 0x5A, 0x5D,
  0xE0, 0xE7, 0xEE, 0xE9, 0xFC, 0xFB, 0xF2, 0xF5,
  0xD8, 0xDF, 0xD6, 0xD1, 0xC4, 0xC3, 0xCA, 0xCD,
  0x90, 0x97, 0x9E, 0x99, 0x8C, 0x8B, 0x82, 0x85,
  0xA8, 0xAF, 0xA6, 0xA1, 0xB4, 0xB3, 0xBA, 0xBD,
  0xC7, 0xC0, 0xC9, 0xCE, 0xDB, 0xDC, 0xD5, 0xD2,
  0xFF, 0xF8, 0xF1, 0xF6, 0xE3, 0xE4, 0xED, 0xEA,
  0xB7, 0xB0, 0xB9, 0xBE, 0xAB, 0xAC, 0xA5, 0xA2,
  0x8F, 0x88, 0x81, 0x86, 0x93, 0x94, 0x9D, 0x9A,
  0x27, 0x20, 0x29, 0x2E, 0x3B, 0x3C, 0x35, 0x32,
  0x1F, 0x18, 0x11, 0x16, 0x03, 0x04, 0x0D, 0x0A,
  0x57, 0x50, 0x59, 0x5E, 0x4B, 0x4C, 0x45, 0x42,
  0x6F, 0x68, 0x61, 0x66, 0x73, 0x74, 0x7D, 0x7A,
  0x89, 0x8E, 0x87, 0x80, 0x95, 0x92, 0x9B, 0x9C,
  0xB1, 0xB6, 0xBF, 0xB8, 0xAD, 0xAA, 0xA3, 0xA4,
  0xF9, 0xFE, 0xF7, 0xF0, 0xE5, 0xE2, 0xEB, 0xEC,
  0xC1, 0xC6, 0xCF, 0xC8, 0xDD, 0xDA, 0xD3, 0xD4,
  0x69, 0x6E, 0x67, 0x60, 0x75, 0x72, 0x7B, 0x7C,
  0x51, 0x56, 0x5F, 0x58, 0x4D, 0x4A, 0x43, 0x44,
  0x19, 0x1E, 0x17, 0x10, 0x05, 0x02, 0x0B, 0x0C,
  0x21, 0x26, 0x2F, 0x28, 0x3D, 0x3A, 0x33, 0x34,
  0x4E, 0x49, 0x40, 0x47, 0x52, 0x55, 0x5C, 0x5B,
  0x76, 0x71, 0x78, 0x7F, 0x6A, 0x6D, 0x64, 0x63,
  0x3E, 0x39, 0x30, 0x37, 0x22, 0x25, 0x2C, 0x2B,
  0x06, 0x01, 0x08, 0x0F, 0x1A, 0x1D, 0x14, 0x13,
  0xAE, 0xA9, 0xA0, 0xA7, 0xB2, 0xB5, 0xBC, 0xBB,
  0x96, 0x91, 0x98, 0x9F, 0x8A, 0x8D, 0x84, 0x83,
  0xDE, 0xD9, 0xD0, 0xD7, 0xC2, 0xC5, 0xCC, 0xCB,
  0xE6, 0xE1, 0xE8, 0xEF, 0xFA, 0xFD, 0xF4, 0xF3
  };
  uint8_t val = 0; 
  uint8_t * pos = (uint8_t *) data;
  uint8_t * end = pos + size;
  while (pos < end) {
    val = CRC_TABLE[val ^ *pos];
    pos++;
  }
  return val;
}