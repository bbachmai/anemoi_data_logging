vGND = []
vTAS = []
track = []
T_C = []
pitot_pct = []
FL = []
phi = []
theta = []
psi = []
diam = []
wdir_live = []
wmag_live = []
wdir_avg = []
wmag_avg = []

def signed_8bit(b):
    if (b > 127):
        return (256-b) * (-1)
    else:
        return b
 
def signed_16bit(msb, lsb):
    b = msb*256 + lsb
    if (b > 32767):
        return (65536-b) * (-1)
    else:
        return b

def decode_sentence(s):
    if s[0] == 0x57 or s[0] == 0x77:
        # Wind sentence
        wdir_live.append(s[1]*256 + s[2])
        wmag_live.append(s[3])
        wdir_avg.append(s[4]*256 + s[5])
        wmag_avg.append(s[6])
        
    elif s[0] == 0x61 or s[0] == 0x41:
        # AHRS sentence
        phi.append(signed_16bit(s[1], s[2]))
        theta.append(signed_8bit(s[3]))
        psi_local = s[4]*256 + s[5]
        if psi_local > 1000:
            psi_local = 0
        psi.append(psi_local)
        diam.append(s[6]*256 + s[7])
        
    elif s[0] == 0x64 or s[0] == 0x44:
        # Data sentence
        vGND_local = s[1]*256 + s[2]
        if vGND_local > 1000:
            vGND_local = 0
        vGND.append(vGND_local)
        vTAS.append(s[3]*256 + s[4])
        track_local = s[5]*256 + s[6]
        if (track_local > 1000):
            track_local = 0
        track.append(track_local)
        T_C.append(signed_8bit(s[9]))
        pitot_pct.append(s[10])
        FL_local = s[11]*256 + s[12]
        if FL_local >= 255:
            FL_local = 0
        FL.append(FL_local)
        
    else:
        print('Error: Unknown sentence found')

def get_expected_bytes(id):
    if (id == 0x57 or id == 0x77):
        return 10
    elif (id == 0x61 or id == 0x41):
        return 9
    elif (id == 0x64 or id == 0x44):
        return 14
    else:
        print('Error: No valid identifier')
        return 0

def read_FLOG(filename):
    file = open(filename,'rb')
    data = file.read()
    count = 0
    line_finished = True
    line_count = 0
    for b in data:
        if b == 0x24 and line_finished and count > 15:
            line_finished = False
            sentence = []
            count = 0
            target_count = 99
            
        if not line_finished and count == 1:
            target_count = get_expected_bytes(b)
            if (target_count == 0):
                print(b, line_count)
            
        if b == 0x0A and not line_finished and (count == target_count):
            line_finished = True
            line_count += 1
            try:
                decode_sentence(sentence)
            except:
                print(sentence, line_count-1)
            if len(sentence) != 8 and len(sentence) != 9 and len(sentence) != 13:
                print('Error at sentence', line_count)
     
        if not line_finished and count > 0:
            sentence.append(b)
        count += 1