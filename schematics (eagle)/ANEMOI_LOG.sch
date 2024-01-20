<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="30" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ANEMOI_LOG">
<packages>
<package name="ANEMOI_LOG_NANO">
<wire x1="-8.5" y1="40" x2="8.5" y2="40" width="0.15" layer="51"/>
<wire x1="-8.5" y1="2.5" x2="-8.5" y2="40" width="0.15" layer="51"/>
<wire x1="-8.5" y1="2.5" x2="8.5" y2="2.5" width="0" layer="51"/>
<wire x1="8.5" y1="2.5" x2="8.5" y2="40" width="0.15" layer="51"/>
<pad name="PL$2" x="7.62" y="36.84" drill="0.9"/>
<pad name="PR$2" x="-7.62" y="36.84" drill="0.9"/>
<pad name="PL$3" x="7.62" y="34.3" drill="0.9"/>
<pad name="PL$4" x="7.62" y="31.76" drill="0.9"/>
<pad name="PR$3" x="-7.62" y="34.3" drill="0.9"/>
<pad name="PR$4" x="-7.62" y="31.76" drill="0.9"/>
<pad name="PL$13" x="7.62" y="8.9" drill="0.9"/>
<pad name="PL$14" x="7.62" y="6.36" drill="0.9"/>
<pad name="PL$15" x="7.62" y="3.82" drill="0.9"/>
<pad name="PR$13" x="-7.62" y="8.9" drill="0.9"/>
<pad name="PR$14" x="-7.62" y="6.36" drill="0.9"/>
<pad name="PR$15" x="-7.62" y="3.82" drill="0.9"/>
<text x="0" y="21" size="1.9304" layer="21" align="center">NANO</text>
<wire x1="-3.5" y1="0" x2="-3.5" y2="-1.5" width="0.15" layer="21"/>
<wire x1="-3.5" y1="-1.5" x2="3.5" y2="-1.5" width="0.15" layer="21"/>
<wire x1="3.5" y1="-1.5" x2="3.5" y2="0" width="0.15" layer="21"/>
<wire x1="-9" y1="0" x2="-9" y2="43.2" width="0.15" layer="21"/>
<wire x1="-9" y1="43.2" x2="9" y2="43.2" width="0.15" layer="21"/>
<wire x1="9" y1="43.2" x2="9" y2="0" width="0.15" layer="21"/>
<wire x1="9" y1="0" x2="-9" y2="0" width="0.15" layer="21"/>
<text x="0" y="27" size="1.778" layer="25" align="center">&gt;NAME</text>
<text x="0" y="15" size="1.778" layer="25" align="center">&gt;VALUE</text>
<rectangle x1="-3.45" y1="-1.48" x2="3.45" y2="-0.02" layer="21"/>
</package>
<package name="ANEMOI_LOG_SD">
<wire x1="-8" y1="40" x2="-8.035" y2="7.579" width="0" layer="51"/>
<wire x1="-8.035" y1="7.579" x2="7.965" y2="7.579" width="0" layer="51"/>
<wire x1="7.965" y1="7.579" x2="8" y2="40" width="0" layer="51"/>
<wire x1="8" y1="40" x2="-8" y2="40" width="0" layer="51"/>
<pad name="P$CS" x="-6.35" y="38" drill="0.9"/>
<pad name="P$MISO" x="1.27" y="38" drill="0.9"/>
<pad name="P$MOSI" x="-1.27" y="38" drill="0.9"/>
<pad name="P$VCC" x="3.81" y="38" drill="0.9"/>
<pad name="P$SCX" x="-3.81" y="38" drill="0.9"/>
<pad name="P$GND" x="6.35" y="38" drill="0.9"/>
<text x="0" y="20" size="2.54" layer="21" align="center">SD</text>
<wire x1="-11.5" y1="0" x2="-11.5" y2="41" width="0.15" layer="21"/>
<wire x1="-11.5" y1="41" x2="11.5" y2="41" width="0.15" layer="21"/>
<wire x1="11.5" y1="41" x2="11.5" y2="0" width="0.15" layer="21"/>
<wire x1="11.5" y1="0" x2="-11.3" y2="0" width="0.15" layer="21"/>
<text x="0" y="29" size="1.778" layer="25" align="center">&gt;NAME</text>
<text x="0" y="10" size="1.778" layer="25" align="center">&gt;VALUE</text>
</package>
<package name="ANEMOI_LOG_RJ45">
<pad name="P$8" x="11.57" y="6.46" drill="0.9"/>
<pad name="P$7" x="10.55" y="9" drill="0.9"/>
<pad name="P$6" x="9.53" y="6.46" drill="0.9"/>
<pad name="P$5" x="8.51" y="9" drill="0.9"/>
<pad name="P$4" x="7.49" y="6.46" drill="0.9"/>
<pad name="P$3" x="6.47" y="9" drill="0.9"/>
<pad name="P$2" x="5.45" y="6.46" drill="0.9"/>
<pad name="P$1" x="4.43" y="9" drill="0.9"/>
<text x="7.75" y="1" size="1.27" layer="21" align="center">RJ45</text>
<wire x1="-0.065" y1="0" x2="-0.065" y2="15" width="0.2" layer="21"/>
<wire x1="-0.065" y1="15" x2="16.065" y2="15" width="0.2" layer="21"/>
<wire x1="16.065" y1="15" x2="16.065" y2="0" width="0.2" layer="21"/>
<wire x1="16.065" y1="0" x2="-0.065" y2="0" width="0.2" layer="21"/>
<text x="0.58" y="13.32" size="1.27" layer="25">&gt;NAME</text>
<text x="9.11" y="13.33" size="1.27" layer="25">&gt;VALUE</text>
<wire x1="0" y1="2.06" x2="0" y2="10" width="0.127" layer="51"/>
<wire x1="0" y1="10" x2="16" y2="10.016" width="0.127" layer="51"/>
<wire x1="16" y1="10.016" x2="16" y2="2.076" width="0.127" layer="51"/>
<wire x1="16" y1="2.076" x2="0" y2="2.06" width="0.127" layer="51"/>
<pad name="H1" x="1.75" y="3.92" drill="3.25" diameter="3.5" shape="octagon"/>
<pad name="H2" x="14.25" y="3.92" drill="3.25" diameter="3.5" shape="octagon"/>
</package>
<package name="ANEMOI_LOG_MAX2323">
<wire x1="8" y1="-11" x2="8" y2="-30" width="0" layer="51"/>
<wire x1="8" y1="-30" x2="24" y2="-30" width="0" layer="51"/>
<wire x1="24" y1="-30" x2="24" y2="-11" width="0" layer="51"/>
<wire x1="24" y1="-11" x2="8" y2="-11" width="0" layer="51"/>
<pad name="P2$1" x="16.81" y="-29" drill="0.9" shape="square"/>
<pad name="P2$2" x="14.27" y="-29" drill="0.9"/>
<pad name="P2$3" x="11.73" y="-29" drill="0.9"/>
<pad name="P2$4" x="9.19" y="-29" drill="0.9"/>
<pad name="P1$1" x="22.46" y="-19.81" drill="0.9" shape="square"/>
<pad name="P1$3" x="22.46" y="-17.27" drill="0.9"/>
<pad name="P1$5" x="22.46" y="-14.73" drill="0.9"/>
<pad name="P1$7" x="22.46" y="-12.19" drill="0.9"/>
<text x="13" y="-3" size="2.54" layer="22" rot="MR0" align="center">MAX3232</text>
<wire x1="0" y1="0" x2="26" y2="0" width="0.15" layer="22"/>
<wire x1="26" y1="0" x2="26" y2="-32" width="0.15" layer="22"/>
<wire x1="26" y1="-32" x2="0" y2="-32" width="0.15" layer="22"/>
<wire x1="0" y1="-32" x2="0" y2="0" width="0.15" layer="22"/>
<text x="4.209" y="-21.145" size="1.27" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="2.145" y="-20.868" size="1.27" layer="25" rot="R90" align="center">&gt;VALUE</text>
<pad name="P1$8" x="19.92" y="-12.19" drill="0.9"/>
<pad name="P1$6" x="19.92" y="-14.73" drill="0.9"/>
<pad name="P1$4" x="19.92" y="-17.27" drill="0.9"/>
<pad name="P1$2" x="19.92" y="-19.81" drill="0.9"/>
</package>
</packages>
<symbols>
<symbol name="ANEMOI_LOG_NANO">
<pin name="RX" x="-12.7" y="12.7" length="middle"/>
<pin name="D10" x="-12.7" y="7.62" length="middle"/>
<pin name="D11" x="-12.7" y="2.54" length="middle"/>
<pin name="D12" x="-12.7" y="-2.54" length="middle"/>
<pin name="GND" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="5V" x="15.24" y="5.08" length="middle" rot="R180"/>
<wire x1="-7.62" y1="20.32" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-7.62" y2="20.32" width="0.254" layer="94"/>
<pin name="D13" x="15.24" y="-2.54" length="middle" rot="R180"/>
<text x="-5.08" y="15.24" size="2.54" layer="94">NANO</text>
<text x="-7.38" y="20.83" size="1.9304" layer="95">&gt;NAME</text>
<text x="-7.41" y="-7.34" size="1.9304" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ANEMOI_LOG_SD">
<pin name="P$CS" x="-12.7" y="25.4" length="middle"/>
<pin name="P$SCX" x="-12.7" y="20.32" length="middle"/>
<pin name="P$MOSI" x="-12.7" y="15.24" length="middle"/>
<pin name="P$MISO" x="-12.7" y="10.16" length="middle"/>
<pin name="P$VCC" x="-12.7" y="5.08" length="middle"/>
<pin name="P$GND" x="-12.7" y="0" length="middle"/>
<wire x1="-7.62" y1="33.02" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="33.02" width="0.254" layer="94"/>
<wire x1="10.16" y1="33.02" x2="-7.62" y2="33.02" width="0.254" layer="94"/>
<text x="2.54" y="12.7" size="2.54" layer="94">SD</text>
<text x="-4.33" y="30.02" size="1.9304" layer="95">&gt;NAME</text>
<text x="-3.89" y="-6.62" size="1.9304" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ANEMOI_LOG_RJ45">
<pin name="P1" x="-12.7" y="30.48" length="middle" rot="R180"/>
<pin name="P2" x="-12.7" y="25.4" length="middle" rot="R180"/>
<pin name="P3" x="-12.7" y="20.32" length="middle" rot="R180"/>
<pin name="P4" x="-12.7" y="15.24" length="middle" rot="R180"/>
<pin name="P5" x="-12.7" y="10.16" length="middle" rot="R180"/>
<pin name="P6" x="-12.7" y="5.08" length="middle" rot="R180"/>
<pin name="P7" x="-12.7" y="0" length="middle" rot="R180"/>
<pin name="P8" x="-12.7" y="-5.08" length="middle" rot="R180"/>
<wire x1="-17.78" y1="35.56" x2="-17.78" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-10.16" x2="-35.56" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-35.56" y1="-10.16" x2="-35.56" y2="35.56" width="0.254" layer="94"/>
<wire x1="-35.56" y1="35.56" x2="-17.78" y2="35.56" width="0.254" layer="94"/>
<text x="-27.94" y="7.62" size="2.54" layer="94" rot="R90">RJ45</text>
<text x="-34.52" y="32.76" size="1.9304" layer="95">&gt;NAME</text>
<text x="-34.6" y="-9.18" size="1.9304" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ANEMOI_LOG_MAX2323">
<text x="6.08" y="3.7" size="2.54" layer="94">MAX3232</text>
<pin name="VCC" x="0" y="10.16" length="middle"/>
<pin name="GND" x="0" y="0" length="middle"/>
<pin name="R2IN" x="27.94" y="10.16" length="middle" rot="R180"/>
<pin name="R2OUT" x="27.94" y="0" length="middle" rot="R180"/>
<wire x1="5.08" y1="12.78" x2="5.08" y2="-4.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-4.08" x2="22.86" y2="-4.08" width="0.254" layer="94"/>
<wire x1="22.86" y1="-4.08" x2="22.86" y2="12.78" width="0.254" layer="94"/>
<wire x1="22.86" y1="12.78" x2="5.08" y2="12.78" width="0.254" layer="94"/>
<text x="8.85" y="13.54" size="1.9304" layer="95">&gt;NAME</text>
<text x="8.71" y="-6.39" size="1.9304" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ANEMOI_LOG_NANO">
<gates>
<gate name="G$1" symbol="ANEMOI_LOG_NANO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ANEMOI_LOG_NANO">
<connects>
<connect gate="G$1" pin="5V" pad="PR$4"/>
<connect gate="G$1" pin="D10" pad="PL$13"/>
<connect gate="G$1" pin="D11" pad="PL$14"/>
<connect gate="G$1" pin="D12" pad="PL$15"/>
<connect gate="G$1" pin="D13" pad="PR$15"/>
<connect gate="G$1" pin="GND" pad="PR$2"/>
<connect gate="G$1" pin="RX" pad="PL$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANEMOI_LOG_SD">
<gates>
<gate name="G$1" symbol="ANEMOI_LOG_SD" x="0" y="-10.16"/>
</gates>
<devices>
<device name="" package="ANEMOI_LOG_SD">
<connects>
<connect gate="G$1" pin="P$CS" pad="P$CS"/>
<connect gate="G$1" pin="P$GND" pad="P$GND"/>
<connect gate="G$1" pin="P$MISO" pad="P$MISO"/>
<connect gate="G$1" pin="P$MOSI" pad="P$MOSI"/>
<connect gate="G$1" pin="P$SCX" pad="P$SCX"/>
<connect gate="G$1" pin="P$VCC" pad="P$VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANEMOI_LOG_RJ45">
<gates>
<gate name="G$1" symbol="ANEMOI_LOG_RJ45" x="25.4" y="-12.7"/>
</gates>
<devices>
<device name="" package="ANEMOI_LOG_RJ45">
<connects>
<connect gate="G$1" pin="P1" pad="P$1"/>
<connect gate="G$1" pin="P2" pad="P$2"/>
<connect gate="G$1" pin="P3" pad="P$3"/>
<connect gate="G$1" pin="P4" pad="P$4"/>
<connect gate="G$1" pin="P5" pad="P$5"/>
<connect gate="G$1" pin="P6" pad="P$6"/>
<connect gate="G$1" pin="P7" pad="P$7"/>
<connect gate="G$1" pin="P8" pad="P$8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANEMOI_LOG_MAX3232">
<gates>
<gate name="G$1" symbol="ANEMOI_LOG_MAX2323" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ANEMOI_LOG_MAX2323">
<connects>
<connect gate="G$1" pin="GND" pad="P1$7"/>
<connect gate="G$1" pin="R2IN" pad="P2$3"/>
<connect gate="G$1" pin="R2OUT" pad="P2$2"/>
<connect gate="G$1" pin="VCC" pad="P1$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$3" library="ANEMOI_LOG" deviceset="ANEMOI_LOG_NANO" device=""/>
<part name="U$4" library="ANEMOI_LOG" deviceset="ANEMOI_LOG_SD" device=""/>
<part name="U$1" library="ANEMOI_LOG" deviceset="ANEMOI_LOG_RJ45" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U$2" library="ANEMOI_LOG" deviceset="ANEMOI_LOG_MAX3232" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$3" gate="G$1" x="127" y="124.46" smashed="yes">
<attribute name="NAME" x="119.62" y="145.29" size="1.9304" layer="95"/>
<attribute name="VALUE" x="119.59" y="117.12" size="1.9304" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="144.78" y="71.12" smashed="yes" rot="MR270">
<attribute name="NAME" x="114.76" y="75.45" size="1.9304" layer="95" rot="MR270"/>
<attribute name="VALUE" x="151.4" y="75.01" size="1.9304" layer="96" rot="MR270"/>
</instance>
<instance part="U$1" gate="G$1" x="33.02" y="121.92" smashed="yes">
<attribute name="NAME" x="-1.5" y="154.68" size="1.9304" layer="95"/>
<attribute name="VALUE" x="-1.58" y="112.74" size="1.9304" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="25.4" y="139.7" smashed="yes">
<attribute name="VALUE" x="22.86" y="142.24" size="1.778" layer="96"/>
</instance>
<instance part="U$2" gate="G$1" x="55.88" y="127" smashed="yes">
<attribute name="NAME" x="64.73" y="140.54" size="1.9304" layer="95"/>
<attribute name="VALUE" x="64.59" y="120.61" size="1.9304" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="55.88" y="124.46" smashed="yes">
<attribute name="VALUE" x="53.34" y="121.92" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="142.24" y="134.62" smashed="yes">
<attribute name="VALUE" x="144.78" y="134.62" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="147.32" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="149.86" y="81.28" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="P$GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="P3"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="20.32" y1="142.24" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="35.56" y1="137.16" x2="48.26" y2="137.16" width="0.1524" layer="91"/>
<wire x1="48.26" y1="137.16" x2="55.88" y2="137.16" width="0.1524" layer="91"/>
<wire x1="48.26" y1="137.16" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
<junction x="48.26" y="137.16"/>
<wire x1="48.26" y1="48.26" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="5V"/>
<wire x1="142.24" y1="129.54" x2="147.32" y2="129.54" width="0.1524" layer="91"/>
<wire x1="147.32" y1="129.54" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<wire x1="147.32" y1="91.44" x2="139.7" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="P$VCC"/>
<wire x1="139.7" y1="91.44" x2="139.7" y2="83.82" width="0.1524" layer="91"/>
<wire x1="165.1" y1="48.26" x2="165.1" y2="91.44" width="0.1524" layer="91"/>
<wire x1="165.1" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<junction x="147.32" y="91.44"/>
<pinref part="U$1" gate="G$1" pin="P6"/>
<wire x1="20.32" y1="127" x2="35.56" y2="127" width="0.1524" layer="91"/>
<wire x1="35.56" y1="127" x2="35.56" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="R2OUT"/>
<wire x1="83.82" y1="127" x2="96.52" y2="127" width="0.1524" layer="91"/>
<wire x1="96.52" y1="127" x2="96.52" y2="137.16" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="RX"/>
<wire x1="96.52" y1="137.16" x2="114.3" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="D10"/>
<wire x1="114.3" y1="132.08" x2="104.14" y2="132.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="132.08" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="P$CS"/>
<wire x1="104.14" y1="83.82" x2="119.38" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCX" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$SCX"/>
<wire x1="124.46" y1="83.82" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="D13"/>
<wire x1="124.46" y1="111.76" x2="142.24" y2="111.76" width="0.1524" layer="91"/>
<wire x1="142.24" y1="111.76" x2="142.24" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="D11"/>
<wire x1="114.3" y1="127" x2="109.22" y2="127" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="P$MOSI"/>
<wire x1="129.54" y1="83.82" x2="129.54" y2="96.52" width="0.1524" layer="91"/>
<wire x1="129.54" y1="96.52" x2="109.22" y2="96.52" width="0.1524" layer="91"/>
<wire x1="109.22" y1="96.52" x2="109.22" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$MISO"/>
<wire x1="134.62" y1="83.82" x2="134.62" y2="106.68" width="0.1524" layer="91"/>
<wire x1="134.62" y1="106.68" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="D12"/>
<wire x1="114.3" y1="106.68" x2="114.3" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P4"/>
<wire x1="20.32" y1="137.16" x2="30.48" y2="137.16" width="0.1524" layer="91"/>
<wire x1="30.48" y1="137.16" x2="30.48" y2="154.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="154.94" x2="83.82" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="R2IN"/>
<wire x1="83.82" y1="154.94" x2="83.82" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
