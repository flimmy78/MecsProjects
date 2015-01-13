PROGRAM_NAME='Hermitage'
(***********************************************************)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 04/05/2006  AT: 09:00:25        *)
(***********************************************************)
(* System Type : NetLinx                                   *)
(***********************************************************)
(* REV HISTORY:                                            *)
(***********************************************************)
(*
    $History: $
*)
(***********************************************************)
(*          DEVICE NUMBER DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_DEVICE

dvDebug	= 0:0:0

//RS-232
dvAudiaNexiaSP		= 5001:2:0
dvExtronIN15081		= 5001:4:0
dvExtronIN15082		= 5001:5:0
dvExtronMVX88VGAA 	= 5001:7:0
dvCamera		= 5001:3:0
dvCamera2		= 5001:6:0
dvChristieHD10KM	= 5001:1:0
dvExtronMAV44SVA	= 5001:9:0

//Relay
dvRelay		= 5001:8:0

//TCP/IP
dvSony = 0:3:0
dvChristieHD10KM1 = 0:3:0

//IR
dvExtronIRMAV44SVA	= 5001:13:0

//Touch Panels
dvTPMain	= 10001:1:0

//AMX panel channels
portProjector	= 10001:98:0
portScreen	= 10001:21:0
portIns 	= 10001:2:0
portOuts	= 10001:3:0
portVolume	= 10001:11:0
portMenu	= 10001:13:0
portCamera	= 10001:25:0
portCamera2	= 10001:26:0
portVolumesEach = 10001:23:0
portEx1		= 10001:31:0
portEx2		= 10001:32:0
portExIn	= 10001:33:0
portExOut	= 10001:34:0
portUtils	= 10001:12:0

DEFINE_CONSTANT

VIDEO = 1
AUDIO = 2
BOTH = 3

TL = 1

integer chEx[8]	= {1, 2, 3, 4, 5, 6, 7, 8}
integer chEx2[4]	= {1, 2}
integer chScreen[2]	= {1, 2}
integer chCamera[6]	= {1, 2, 3, 4, 5, 6}
integer chIns[3]	= {1, 2, 3}
integer vols[2]	= {1, 2}
integer chVolumesEach[4]	= {1, 2, 3, 4}
integer chOUTs[5] 	= {1, 2, 3, 4, 5}
integer inExtronCode[3] = {1, 2, 3}
integer inExtronCode2[8] = {0, 0, 3, 1, 2}
integer outExtronCode[5] = {3, 4, 5, 1, 2}
integer outExtronCode2[5] = {4, 5, 1, 2, 3}
integer chVolume[3] 	= {1, 2, 3}

Sony_Port = 3001
Sony_IP = "192.168.0.55"
Christie_Port = 3002
Christie_IP = "192.168.0.108"

DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

persistent long TimeArray[10] = {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000}
volatile char dbgText[8][255]
volatile char volumes[4][255]
volatile char portTie[255]
volatile char chrTime[255]
volatile char portTie2[255][255]
volatile integer i = 0
volatile integer k = 0
volatile integer pos = 0

volatile integer chrInput = 2

volatile integer activePC 	= 0
volatile integer activeCam 	= 0
volatile integer activeInCh 	= 0
volatile integer activeInCh2 	= 0
volatile integer volumeTest 	= 0
volatile integer useOfVolume 	= 0 // 0 = null | 1 = + | 2 = -
volatile char volumeFail 	= 0 // one is bad

volatile integer ex1In = 0
volatile integer ex2In = 0

volatile char christieTest 	= 0
volatile char extronTest 	= 0
volatile char extronTest2 	= 0
volatile char ex1Test 	= 0
volatile char ex2Test 	= 0
volatile char extronCount 	= 0

volatile integer christiePreset = 0
volatile integer christieAS = 1

volatile char ProjectorPower 	= 0
volatile char ProjectorMute 	= 0
volatile char ProjectorFreeze 	= 0

    persistent char curCameraID  = 1
    persistent integer CameraPreviewFunc
    persistent char CameraSpeed  = 5
    persistent char CameraZSpeed = 2
    persistent char CameraFSpeed = 2
    persistent integer ProjectorSourceID
    persistent integer PreviewSourceID

volatile char ChristieConnection = 0

volatile char AudioMute 	= 0
volatile char cam1 		= 0
volatile char cam2 		= 0

volatile integer chMatrix[][] 	= {{0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}}
volatile integer chMatrix2[][] 	= {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}
volatile integer matrixPos 	= 0
volatile integer matrixPos2 	= 0
volatile integer activeStuff 	= 0

volatile integer maxVolume 		= 1120;
persistent integer isMaxVolume[6] 	= {0, 0, 0, 0, 0, 0}
persistent integer isFullMax	= 0
persistent integer isFullMin	= 0
volatile integer numberChanel	= 16

DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE
([dvRelay, 1], [dvRelay, 2])
(***********************************************************)
(*        SUBROUTINE/FUNCTION DEFINITIONS GO BELOW         *)
(***********************************************************)
(* EXAMPLE: DEFINE_FUNCTION <RETURN_TYPE> <NAME> (<PARAMETERS>) *)
(* EXAMPLE: DEFINE_CALL '<NAME>' (<PARAMETERS>) *)

(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)

DEFINE_FUNCTION ChristieConnect()
{
    if(!ChristieConnection)
    {
	IP_CLIENT_OPEN(dvChristieHD10KM1.PORT, Christie_IP, Christie_Port, IP_TCP)
    }
}

DEFINE_FUNCTION SonyUp()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=0801', $0D"
}

DEFINE_FUNCTION SonyDown()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=0201', $0D"
}

DEFINE_FUNCTION SonyLeft()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=0401', $0D"
}

DEFINE_FUNCTION SonyRight()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=0601', $0D"
}

DEFINE_FUNCTION SonyWide()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=1001', $0D"
}

DEFINE_FUNCTION SonyTele()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=1101', $0D"
}

DEFINE_FUNCTION SonyNear()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=1201', $0D"
}

DEFINE_FUNCTION SonyFar()
{
    SEND_STRING dvSony, "'http://192.168.0.33/command/ptzf.cgi?Relative=1301', $0D"
}

// Camera control
DEFINE_FUNCTION Camera_AddressSet()
{
    send_string dvCamera, "$88, $30, $01, $FF"
}

DEFINE_FUNCTION Camera_IF_Clear()
{
    send_string dvCamera, "$88, $01, $00, $01, $FF"
}

DEFINE_FUNCTION Camera_MemorySet(char chan)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $3F, $01, chan, $FF"
}
DEFINE_FUNCTION Camera_MemoryRecall(char chan)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $3F, $02, chan, $FF"
}
DEFINE_FUNCTION Camera_Up(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $01, $FF"
}
DEFINE_FUNCTION Camera_Down(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $02, $FF"
}
DEFINE_FUNCTION Camera_Left(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $06, $01, speed, speed, $01, $03, $FF"
}
DEFINE_FUNCTION Camera_Right(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $06, $01, speed, speed, $02, $03, $FF"
}
DEFINE_FUNCTION Camera_StopPanTilt(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $03, $FF"
}
DEFINE_FUNCTION Camera_Tele(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $07, $20+speed, $FF"
}
DEFINE_FUNCTION Camera_Wide(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $07, $30+speed, $FF"
}
DEFINE_FUNCTION Camera_ZoomStop()
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $07, $00, $FF"
}
DEFINE_FUNCTION Camera_Far(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $08, $20+speed, $FF"
}
DEFINE_FUNCTION Camera_Near(char speed)
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $08, $30+speed, $FF"
}
DEFINE_FUNCTION Camera_FocusStop()
{
    send_string dvCamera, "$80 + curCameraID, $01, $04, $08, $00, $FF"
}
DEFINE_FUNCTION Camera_BackLight(char onoff)
{
    if(onoff == 1)
    {
	send_string dvCamera, "$80 + curCameraID, $01, $04, $33, $02, $FF"
    }
    else
    {
	send_string dvCamera, "$80 + curCameraID, $01, $04, $33, $03, $FF"
    }
}

DEFINE_FUNCTION Camera2_AddressSet()
{
    send_string dvCamera2, "$88, $30, $01, $FF"
}

DEFINE_FUNCTION Camera2_IF_Clear()
{
    send_string dvCamera2, "$88, $01, $00, $01, $FF"
}

DEFINE_FUNCTION Camera2_MemorySet(char chan)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $3F, $01, chan, $FF"
}
DEFINE_FUNCTION Camera2_MemoryRecall(char chan)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $3F, $02, chan, $FF"
}
DEFINE_FUNCTION Camera2_Up(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $01, $FF"
}
DEFINE_FUNCTION Camera2_Down(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $02, $FF"
}
DEFINE_FUNCTION Camera2_Left(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $06, $01, speed, speed, $01, $03, $FF"
}
DEFINE_FUNCTION Camera2_Right(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $06, $01, speed, speed, $02, $03, $FF"
}
DEFINE_FUNCTION Camera2_StopPanTilt(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $03, $FF"
}
DEFINE_FUNCTION Camera2_Tele(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $07, $20+speed, $FF"
}
DEFINE_FUNCTION Camera2_Wide(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $07, $30+speed, $FF"
}
DEFINE_FUNCTION Camera2_ZoomStop()
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $07, $00, $FF"
}
DEFINE_FUNCTION Camera2_Far(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $08, $20+speed, $FF"
}
DEFINE_FUNCTION Camera2_Near(char speed)
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $08, $30+speed, $FF"
}
DEFINE_FUNCTION Camera2_FocusStop()
{
    send_string dvCamera2, "$80 + curCameraID, $01, $04, $08, $00, $FF"
}

DEFINE_FUNCTION MatrixChange(integer in, integer out, integer val)
{
    for(i=1; i<=3; i=i+1)
    {
	chMatrix[i][out] = 0
    }
    chMatrix[in][out] = val
}

DEFINE_FUNCTION MatrixChange2(integer in, integer out, integer val)
{
    for(i=1; i<=4; i=i+1)
    {
	chMatrix2[i][out] = 0
    }
    chMatrix2[in][out] = val
}

DEFINE_FUNCTION DeactivateAll()
{   
    OFF[portINs, chIns]
    OFF[portOUTs, chOUTs]
    
    activeInCh = 0
    
    CANCEL_WAIT 'BUTTONS_TIMEOUT'
}

/*DEFINE_FUNCTION DeactivateAll2()
{   
    OFF[portExIn, chEx2]
    OFF[portExOut, chEx2]
    
    activeInCh2 = 0
    
    CANCEL_WAIT 'BUTTONS2_TIMEOUT'
}*/

DEFINE_FUNCTION DeactivateTime()
{   
    SEND_COMMAND portProjector, "'^TXT-7,1&2,LAMP'"
    CANCEL_WAIT 'CHR_TIMEOUT'
}

DEFINE_FUNCTION NexiaVolumeIsMax()
{
    useOfVolume = 1
    for(i=1; i<=4; i=i+1)
    {
	NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, i)
    }
}

DEFINE_FUNCTION NexiaVolumeIsMin()
{
    useOfVolume = 2
    for(i=1; i<=4; i=i+1)
    { 
	NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, i)
    }
}

DEFINE_FUNCTION NexiaVolumeCheck(integer chan)
{
    useOfVolume = 3
    switch(chan)
    {
	case 1:
	{
	    NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, 1)
	    volumeTest = 1
	}
	case 2:
	{
	    NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, 2)
	    volumeTest = 1
	}
	case 3:
	{
	    NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, 2)
	    volumeTest = 2
	}
	case 4:
	{
	    NexiaGetVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, 2)
	    volumeTest = 2
	}
    }
}

DEFINE_FUNCTION NexiaVolumeUp()
{
    for(i=1; i<=4; i=i+1)
    {
	NexiaIncVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, i)
    }
}

DEFINE_FUNCTION NexiaVolumeDown()
{
    for(i=1; i<=4; i=i+1)
    {
	NexiaDecVolumeOutput(dvAudiaNexiaSP, 1, numberChanel, i)
    }
}

DEFINE_FUNCTION NexiaVolumeSetPercent(integer chan)
{
    stack_var result
    stack_var result2
    result = atoi(volumes[1])
    result2 = (result*100)/maxVolume
    //SEND_COMMAND portVolumesEach, "'^TXT-',itoa(i),',1&2,',itoa((atoi(volumes[i])*100)/1120),'%'"
    SEND_COMMAND portVolumesEach, "'^TXT-',itoa(vols[chan]),',1&2,',itoa(result2),'%'"
}

DEFINE_FUNCTION NexiaVolumeSetPercent2(integer chan)
{
    stack_var result
    stack_var result2
    result = atoi(volumes[chan])
    result2 = (result*100)/maxVolume
    //SEND_COMMAND portVolumesEach, "'^TXT-',itoa(i),',1&2,',itoa((atoi(volumes[i])*100)/1120),'%'"
    SEND_COMMAND portVolumesEach, "'^TXT-',itoa(vols[chan]),',1&2,',itoa(result2),'%'"
}

// 13 L 12 R instance
// 1 device

DEFINE_FUNCTION NexiaSetVolumeInput(dev dv, integer device, integer instance, integer output, integer volume)
{    
    //"'SET 1 FDRLVL 6 3 -50', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(output),' ', itoa(volume), $0A"
}

DEFINE_FUNCTION NexiaGetVolumeOutput(dev dv, integer device, integer instance, integer output)
{    
    //"'GETL 1 FDRLVL 6 3', $0A"
    SEND_STRING dv, "'GETL ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(output), $0A"
}

DEFINE_FUNCTION NexiaIncVolumeOutput(dev dv, integer device, integer instance, integer output)
{
    SEND_STRING dv, "'INC ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(output), ' 1', $0A"
}

DEFINE_FUNCTION NexiaDecVolumeOutput(dev dv, integer device, integer instance, integer output)
{
    SEND_STRING dv, "'DEC ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(output), ' 1', $0A"
}

DEFINE_FUNCTION NexiaSetMuteOutput(dev dv, integer device, integer instance, integer output, integer mode)
{
    //"'SET 1 FDRMUTE 6 3 0', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' FDRMUTE ', itoa(instance),' ', itoa(output),' ', itoa(mode), $0A"
}

DEFINE_FUNCTION NexiaSetMuteOutputMixer(dev dv, integer device, integer instance, integer input, integer mode)
{
    //"'SET 1 FDRMUTE 6 3 0', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' SMOUTMUTE ', itoa(instance),' ', itoa(input),' ', itoa(mode), $0A"
}

DEFINE_FUNCTION Christie232QueryPowerState(dev projector) //Christie projector RS-232 protocol commands
{
    SEND_STRING dvChristieHD10KM, "'(PWR ?)', $0D"
}

DEFINE_FUNCTION Christie232Hours(dev projector)
{
    SEND_STRING dvChristieHD10KM, "'(PJH ?)', $0D"
}

DEFINE_FUNCTION Christie232Preset()
{
    SEND_STRING dvChristieHD10KM, "'(SZP ',ITOA(christiePreset),')', $0D"
}

DEFINE_FUNCTION Christie232AS()
{

    SEND_STRING dvChristieHD10KM, "'(ASU)', $0D"
    SEND_COMMAND portProjector, "'^TXT-6,1&2,Calibrate'"
}

DEFINE_FUNCTION Christie232PowerToggle(dev projector, char shouldBeOn)
{
    if(shouldBeOn)
	SEND_STRING projector, "'(PWR 1)', $0D"
    else
	SEND_STRING projector, "'(PWR 0)', $0D"
}

DEFINE_FUNCTION Christie232MuteToggle(dev projector, char shouldBeOn)
{
    if(shouldBeOn)
	SEND_STRING projector, "'(PMT 1)', $0D"
    else
	SEND_STRING projector, "'(PMT 0)', $0D"
}

DEFINE_FUNCTION Christie232FreezeToggle(dev projector, char shouldBeOn)
{
    if(shouldBeOn)
	SEND_STRING projector, "'(FRZ 1)', $0D"
    else
	SEND_STRING projector, "'(FRZ 0)', $0D"
}

DEFINE_FUNCTION Christie232AutoPositionToggle(dev projector)
{
    SEND_STRING projector, "'(ASU)', $0D"
}

DEFINE_FUNCTION Christie232ResponseHadnler(char txt[])
{
    STACK_VAR char i
    STACK_VAR integer pos

    pos = FIND_STRING(txt, 'PWR!', 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, '000', pos) || FIND_STRING(txt, '023', pos)):
	    {
		OFF[portProjector, 1]
		OFF[portProjector, 2]
		OFF[portProjector, 3]
		ProjectorPower = 0
	    }
	    ACTIVE(FIND_STRING(txt, '001', pos)):
	    {
		ON[portProjector, 1]
		ON[portProjector, 2]
		OFF[portProjector, 3]
		ProjectorPower = 1
	    }
	    ACTIVE(FIND_STRING(txt, '010', pos)):
	    {
		ON[portProjector, 3]
	    }
	}
    }
}

DEFINE_FUNCTION ExtronGainInc(dev dv, integer chan)
{
    SEND_STRING dv, "itoa(chan), '+G'"
}
DEFINE_FUNCTION ExtronGainDec(dev dv, integer chan)
{
    SEND_STRING dv, "itoa(chan), '-G'"
}
DEFINE_FUNCTION ExtronMuteToggle(dev dv, integer chan, char shouldBeOn)
{
    if(shouldBeOn)
	SEND_STRING dv, "itoa(chan), '*1!'"
    else
	SEND_STRING dv, "itoa(chan), '*0!'"
}
DEFINE_FUNCTION ExtronSwitchInput(dev dv, integer in, integer mode)
{
    if(mode == VIDEO)		SEND_STRING dv, "itoa(in), '&'"
    else if(mode == AUDIO)	SEND_STRING dv, "itoa(in), '$'"
    else if(mode == BOTH)	SEND_STRING dv, "itoa(in), '!'"
}
DEFINE_FUNCTION ExtronTieInputToOutput(dev dv, integer in, integer out, integer mode)
{
    if(mode == VIDEO)		SEND_STRING dv, "itoa(in),'*', itoa(out), '&'"
    else if(mode == AUDIO)	SEND_STRING dv, "itoa(in),'*', itoa(out), '$'"
    else if(mode == BOTH)	SEND_STRING dv, "itoa(in),'*', itoa(out), '!'"
}
DEFINE_FUNCTION ExtronTieInputToAllOutput(dev dv, integer in, integer mode)
{
    if(mode == VIDEO)		SEND_STRING dv, "itoa(in), '*&'"
    else if(mode == AUDIO)	SEND_STRING dv, "itoa(in), '*$'"
    else if(mode == BOTH)	SEND_STRING dv, "itoa(in), '*!'"
}

DEFINE_FUNCTION ExtronLookForTie(dev dv, integer out, integer mode)
{
    if(mode == VIDEO)		SEND_STRING dv, "itoa(out), '&'"
    else if(mode == AUDIO)	SEND_STRING dv, "itoa(out), '$'"
    else if(mode == BOTH)	SEND_STRING dv, "itoa(out), '!'"
}

DEFINE_FUNCTION ExtronLookForInput(dev dv, integer mode)
{
    if(mode == VIDEO)		SEND_STRING dv, "'&'"
    else if(mode == AUDIO)	SEND_STRING dv, "'$'"
    else if(mode == BOTH)	SEND_STRING dv, "'!'"
}

DEFINE_START

SET_PULSE_TIME (2)
Camera_AddressSet()
Camera_IF_Clear()
Camera2_AddressSet()
Camera2_IF_Clear()
Christie232Preset()
SEND_STRING dvChristieHD10KM, "'(SIN 22)', $0D"
OFF[portUtils, 4]

TIMELINE_CREATE (TL, TimeArray, 10, TIMELINE_ABSOLUTE, TIMELINE_REPEAT)


DEFINE_EVENT

TIMELINE_EVENT [TL]
{
    switch (timeline.sequence)
    {
	case 1:
	{

	}
	case 2:
	{
	    Christie232QueryPowerState(dvChristieHD10KM)
	}
	case 3:
	{
	    for(i=1; i<=3; i=i+1)
	    {
		for(k=1; k<=5; k=k+1)
		{
		    chMatrix[i][k] = 0
		}
	    }
	    for(i=1; i<=5; i=i+1)
	    {
		ExtronLookForTie(dvExtronMVX88VGAA, i, VIDEO)
	    }
	    extronTest = 1
	    extronCount = 0
	}
	case 4:
	{
	    ExtronLookForInput(dvExtronIN15081, VIDEO)
	    ex1Test = 1
	}
	case 5:
	{
	    ExtronLookForInput(dvExtronIN15082, VIDEO)
	    ex2Test = 1
	}
	case 6: // 44extron uncomment this to use when connected
	{
	    /*for(i=1; i<=4; i=i+1)
	    {
		for(k=1; k<=4; k=k+1)
		{
		    chMatrix2[i][k] = 0
		}
	    }
	    for(i=1; i<=4; i=i+1)
	    {
		ExtronLookForTie(dvExtronMAV44SVA, i, VIDEO)
	    }
	    extronTest2 = 1*/
	}
    }
}

DATA_EVENT[dvChristieHD10KM1]
{
    ONERROR:
    {
	ChristieConnection = 0
    }
    ONLINE:
    {
	ChristieConnection = 1
    }
    OFFLINE:
    {
	ChristieConnection = 0
    }
    STRING:
    {
	ChristieConnection = 1
	dbgText[5] = DATA.TEXT
    }
}

DATA_EVENT[dvAudiaNexiaSP]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 38400, N, 8, 1'"
    }
    STRING:
    {
	dbgText[3] = DATA.TEXT
	
	if(useOfVolume != 0)
	{
	    for(i=1; i<=4; i=i+1)
	    {
		volumes[i] = ' '
	    }
	}
	if(useOfVolume == 1)
	{
	    pos = 1
	    k = 1
	    for(i=1; i<=4; i=i+1)
	    {
		set_length_array(volumes[i], 255)
		while(dbgText[3][pos] != ' ')
		{
		    pos = pos + 1
		}
		volumes[i] = mid_string(dbgText[3], k , pos-k)
		k = pos
		pos = pos + 1
		
		if(ATOI(volumes[i]) > maxVolume-10) 
		{
		    volumeFail = 1
		    ON[portVolume, 11]
		}
	    }
	    if(!volumeFail) NexiaVolumeUp()

	    useOfVolume = 0
	    volumeFail = 0
	    
	    OFF[portVolume, 10]	    
	}
	if(useOfVolume == 2)
	{
	    pos = 1		
	    k = 1
	    for(i=1; i<=4; i=i+1)
	    {
		set_length_array(volumes[i], 255)
		while(dbgText[3][pos] != ' ')
		{
		    pos = pos + 1
		}
		volumes[i] = mid_string(dbgText[3], k , pos-k)
		k = pos
		pos = pos + 1
		if(ATOI(volumes[i]) < 10) 
		{
		    volumeFail = 1
		    ON[portVolume, 10]
		}
	    }
	    if(!volumeFail) NexiaVolumeDown()

	    volumeFail = 0
	    useOfVolume = 0
	    
	    OFF[portVolume, 11]
	}
	if(useOfVolume == 3)
	{
	    /*if(ATOI(mid_string(dbgText[4], 4 , 255)) < 1110 && (mid_string(dbgText[4], 4 , 255)) > 10)
	    {
		set_length_array(volumes[1], 255)
		volumes[1] = mid_string(dbgText[4], 4 , 255)
		BiampVolumeSetPercent(volumeTest)
		useOfVolume = 0
	    }*/
	    
	    stack_var res
	    res = ATOI(mid_string(dbgText[3], 4 , 255))
	    if(res == 0 && isMaxVolume[volumeTest])
	    {
		set_length_array(volumes[1], 255)
		volumes[1] = itoa(maxVolume)
		
		NexiaVolumeSetPercent(volumeTest)
		useOfVolume = 0
	    }
	    else if(ATOI(mid_string(dbgText[3], 4 , 255)) < maxVolume && (mid_string(dbgText[3], 4 , 255)) > 10)
	    {		
		set_length_array(volumes[1], 255)
		volumes[1] = mid_string(dbgText[3], 4 , 255)
		
		isMaxVolume[volumeTest] = 0;
		
		NexiaVolumeSetPercent(volumeTest)
		useOfVolume = 0
		
		if(ATOI(mid_string(dbgText[3], 4 , 255)) + 10 >= maxVolume)
		    isMaxVolume[volumeTest] = 1
	    }
	}
	if(useOfVolume == 4)
	{
	    stack_var res
	    
	    pos = 1		
	    k = 1
	    for(i=1; i<=2; i=i+1)
	    {
		set_length_array(volumes[i], 255)
		while(dbgText[3][pos] != ' ')
		{
		    pos = pos + 1
		}
		volumes[i] = mid_string(dbgText[3], k , pos-k)
		
		
		res = atoi(volumes[i])
		if(res + 10 > maxVolume)
		volumes[i] = itoa(maxVolume)
		//res = res + 1
		//volumes[i] = itoa(res)
		//if(res == 0) volumes[i] = itoa(maxVolume)
		
		if(isMaxVolume[i])
		    volumes[i] = itoa(maxVolume)
		
		k = pos
		pos = pos + 1
	    }
            for(i=1; i<=2; i=i+1)
	    {
		NexiaVolumeSetPercent2(i)
	    }
	    useOfVolume = 0
	}
	useOfVolume = 0
    }
}

DATA_EVENT[dvExtronIN15081]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
    }
    STRING:
    {
	set_length_array(dbgText[5], 255)
	dbgText[5] = DATA.TEXT
	if(ex1Test == 1)
	{
	    ex1In = ATOI(mid_string(dbgText[5], 3 , 1))
	    OFF[portEx1, chEx]
	    ON[portEx1, ex1In]
	    ex1Test = 0
	}
    }
}

DATA_EVENT[dvExtronIN15082]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
    }
    STRING:
    {
	set_length_array(dbgText[6], 255)
	dbgText[6] = DATA.TEXT
	if(ex2Test == 1)
	{
	    ex2In = ATOI(mid_string(dbgText[6], 3 , 1))
	    OFF[portEx2, chEx]
	    ON[portEx2, ex2In]
	    ex2Test = 0
	}
    }
}

DATA_EVENT[dvExtronMVX88VGAA]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
    }
    STRING:
    {
	set_length_array(dbgText[2], 255)
	dbgText[2] = DATA.TEXT
	for(i=1; i<=24; i=i+1)
	{
	portTie2[i]=mid_string(dbgText[2], i , 1)
	}
	if(extronTest)
	{
	    pos = 1
	    k = 0
	    for(i=1; i<=5; i=i+1)
	    {
		set_length_array(portTie, 255)
		portTie = mid_string(dbgText[2], pos , 1)
		if(ATOI(portTie2[pos]) > 0)
		{
		    chMatrix[ATOI(portTie2[pos])][i] = 1
		}
		pos=pos+3	    
	    }
	    extronTest = 0
	}
    }
}

DATA_EVENT[dvExtronMAV44SVA]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'CARON'"
	SEND_COMMAND DATA.DEVICE, "'SET MODE DATA'"
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
    }
    STRING:
    {
	/*set_length_array(dbgText[7], 255)
	dbgText[7] = DATA.TEXT
	for(i=1; i<=24; i=i+1)
	{
	    portTie2[i]=mid_string(dbgText[7], i , 1)
	}
	if(extronTest2)
	{
	    pos = 1
	    k = 0
	    for(i=1; i<=4; i=i+1)
	    {
		set_length_array(portTie, 255)
		portTie = mid_string(dbgText[7], pos , 1)
		if(ATOI(portTie2[pos]) > 0)
		{
		    chMatrix2[ATOI(portTie2[pos])][i] = 1
		}
		pos=pos+3   
	    }
	    extronTest2 = 0
	}*/
    }
}

DATA_EVENT[dvChristieHD10KM]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
    }
    STRING:
    {
	dbgText[1] = DATA.TEXT
	if(christieTest == 1)
	{
	    set_length_array(chrTime, 255)
	    christieTest = 0
	    pos = 1
	    k = 1
	    while(dbgText[1][pos]!='"')
	    {
		pos=pos+1
	    }
	    pos=pos+1
	    k=pos
	    while(dbgText[1][pos]!=':')
	    {
		pos=pos+1
	    }
	    chrTime=mid_string(dbgText[1], k , pos-k)	    
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,',chrTime,' hours'"
	    wait 100 'CHR_TIMEOUT' { DeactivateTime() }
	}
	else
	{
	    Christie232ResponseHadnler(DATA.TEXT)
	}
    }
}

DATA_EVENT[dvCamera]
{
    online:
    {
	SEND_COMMAND dvCamera, "'SET BAUD 9600, N, 8, 1'"
	Camera_AddressSet()
	Camera_IF_Clear()
    }
    string:
    {
	dbgText[4] = DATA.TEXT
    }
}

DATA_EVENT[dvCamera2]
{
    online:
    {
	SEND_COMMAND dvCamera2, "'SET BAUD 9600, N, 8, 1'"
	Camera2_AddressSet()
	Camera2_IF_Clear()
    }
    string:
    {
	dbgText[8] = DATA.TEXT
    }
}

BUTTON_EVENT[portScreen, chScreen]
{
    push:
    {
	ON[dvRelay, BUTTON.INPUT.CHANNEL]
    }
    release:
    {
	OFF[dvRelay, BUTTON.INPUT.CHANNEL]
    }
}

BUTTON_EVENT[portProjector, 1]
BUTTON_EVENT[portProjector, 2]
BUTTON_EVENT[portProjector, 4]
BUTTON_EVENT[portProjector, 5]
BUTTON_EVENT[portProjector, 6]
BUTTON_EVENT[portProjector, 7]
BUTTON_EVENT[portProjector, 8]
{
    push:
    {
	if((BUTTON.INPUT.CHANNEL == 2 && ProjectorPower) ||	// If 'OFF' button pushed and power is on..
	    (BUTTON.INPUT.CHANNEL == 1 && !ProjectorPower)) 	// ..or ff 'ON' button pushed and power is off
	{
	    ProjectorPower = !ProjectorPower
	    Christie232PowerToggle(dvChristieHD10KM, ProjectorPower)
	    ON[portProjector, 3]
	    
	    if(ProjectorFreeze)
	    {
		ProjectorFreeze = 0//!ProjectorFreeze
		Christie232FreezeToggle(dvChristieHD10KM, 0)
		OFF[portProjector, 4]
	    }
	    
	    //if(ProjectorMute)
	    {
		ProjectorMute = 0//!ProjectorMute
		Christie232MuteToggle(dvChristieHD10KM, 0)
		OFF[portProjector, 5]
	    }
	}
	else if(BUTTON.INPUT.CHANNEL == 4)
	{
	    if(ProjectorFreeze)
	    {
		Christie232FreezeToggle(dvChristieHD10KM, 0)
		OFF[portProjector, BUTTON.INPUT.CHANNEL]
		ProjectorFreeze = !ProjectorFreeze
	    }
	    else if(!ProjectorFreeze && !ProjectorMute)
	    {
		Christie232FreezeToggle(dvChristieHD10KM, 1)
		ON[portProjector, BUTTON.INPUT.CHANNEL]
		ProjectorFreeze = !ProjectorFreeze
	    }
	}	
	else if(BUTTON.INPUT.CHANNEL == 5)
	{
	    if(ProjectorMute)
	    {
		Christie232MuteToggle(dvChristieHD10KM, 0)
		OFF[portProjector, BUTTON.INPUT.CHANNEL]
		ProjectorMute = !ProjectorMute
	    }
	    else if(!ProjectorFreeze && !ProjectorMute)
	    {
		Christie232MuteToggle(dvChristieHD10KM, 1)
		ON[portProjector, BUTTON.INPUT.CHANNEL]
		ProjectorMute = !ProjectorMute
	    }
	}
	else if(BUTTON.INPUT.CHANNEL == 6)
	{
	    Christie232AS()
	}
	else if(BUTTON.INPUT.CHANNEL == 7)
	{
	    Christie232Hours(dvChristieHD10KM)
	    christieTest = 1
	}
	else if(BUTTON.INPUT.CHANNEL == 8)
	{
	    christiePreset = christiePreset + 1
	    if (christiePreset == 7) christiePreset = 0
	    Christie232Preset()
	    switch(christiePreset)
	    {
		case 0:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Default'"
		}
		case 1:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,None'"
		}
		case 2:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Full Screen'"
		}
		case 3:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Full Width'"
		}
		case 4:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Full Height'"
		}
		case 5:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Anamorphic'"
		}
		case 6:
		{
		    SEND_COMMAND portProjector, "'^TXT-8,1&2,Custom'"
		}
	    }
	}
    }
}

BUTTON_EVENT[portUtils, 1]
{
    push:
    {
	if(cam1 == 0)
	{
	    ON[portUtils, 1]
	    cam1 = 1
	}
	else if(cam1 == 1)
	{
	    OFF[portUtils, 1]
	    cam1 = 0
	}
    }
}

BUTTON_EVENT[portUtils, 3]
{
    push:
    {
	if(cam2 == 0)
	{
	    ON[portUtils, 3]
	    cam2 = 1
	}
	else if(cam2 == 1)
	{
	    OFF[portUtils, 3]
	    cam2 = 0
	}
    }
}

BUTTON_EVENT[portINs, chIns]
{
    push:
    {
	DeactivateAll()
	
	activeInCh = BUTTON.INPUT.CHANNEL

	matrixPos = BUTTON.INPUT.CHANNEL
	ON[portINs, matrixPos]
	
	for(i=1; i<=5; i=i+1)
	{
	    if(chMatrix[matrixPos][i] == 1)
	    {
		ON[portOUTs, i]
	    }
	}
	
	wait 100 'BUTTONS_TIMEOUT' { DeactivateAll() }
    }
}

BUTTON_EVENT[portExIn, chEx2]
{
    push:
    {
	//DeactivateAll2()
	
	//activeInCh2 = BUTTON.INPUT.CHANNEL
	if(button.input.channel == 1)
	{
	    ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 1, VIDEO)	
	    wait 2
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 2, VIDEO)
	    }
	    wait 4
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 3, VIDEO)
	    }
	    wait 6
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 4, VIDEO)
	    }
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 2, VIDEO)
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 3, VIDEO)	
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 1, 4, VIDEO)
	}
	else
	{
	    ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 1, VIDEO)	
	    wait 2
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 2, VIDEO)
	    }
	    wait 4
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 3, VIDEO)	
	    }	    
	    wait 6
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 4, VIDEO)
	    }
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 2, VIDEO)
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 3, VIDEO)	
	    //ExtronTieInputToOutput(dvExtronMAV44SVA, 0, 4, VIDEO)
	}
	/*matrixPos2 = BUTTON.INPUT.CHANNEL
	ON[portExIn, matrixPos2]
	
	for(i=1; i<=4; i=i+1)
	{
	    if(chMatrix2[matrixPos2][i] == 1)
	    {
		ON[portExOut, i]
	    }
	}
	
	wait 100 'BUTTONS2_TIMEOUT' { DeactivateAll2() }*/
    }
}

BUTTON_EVENT[portEx1, chEx]
{
    push:
    {
	ex1In = button.input.channel
	ExtronSwitchInput(dvExtronIN15081, button.input.channel, VIDEO)
	OFF[portEx1, chEx]
	ON[portEx1, button.input.channel]
    }
}

BUTTON_EVENT[portEx2, chEx]
{
    push:
    {
	ex2In = button.input.channel
	ExtronSwitchInput(dvExtronIN15082, button.input.channel, VIDEO)
	OFF[portEx2, chEx]
	ON[portEx2, button.input.channel]
    }
}

BUTTON_EVENT[portOUTs, chOUTs]
{
    push:
    {
	if(activeInCh != 0)
	{	
	    if(chMatrix[matrixPos][BUTTON.INPUT.CHANNEL] == 0) //if button state OFF
	    {
		ExtronTieInputToOutput(dvExtronMVX88VGAA, activeInCh, BUTTON.INPUT.CHANNEL, VIDEO)
		MatrixChange(matrixPos, BUTTON.INPUT.CHANNEL, 1)
	    }
	    else //if button state ON
	    {
		ExtronTieInputToOutput(dvExtronMVX88VGAA, 0, BUTTON.INPUT.CHANNEL, VIDEO)
		MatrixChange(matrixPos, BUTTON.INPUT.CHANNEL, 0)
	    }
	    
	    for(i=1; i<=5; i=i+1)
	    {
		[portOUTs, i] = chMatrix[matrixPos][i]
	    }
	}
    }
}

BUTTON_EVENT[portExOut, chEx2]
{
    push:
    {
	if(activeInCh2 != 0)
	{	
	    /*if(chMatrix2[matrixPos2][BUTTON.INPUT.CHANNEL] == 0) //if button state OFF
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, activeInCh2, BUTTON.INPUT.CHANNEL, VIDEO)
		MatrixChange2(matrixPos2, BUTTON.INPUT.CHANNEL, 1)
	    }
	    else //if button state ON
	    {
		ExtronTieInputToOutput(dvExtronMAV44SVA, 0, BUTTON.INPUT.CHANNEL, VIDEO)
		MatrixChange2(matrixPos2, BUTTON.INPUT.CHANNEL, 0)
	    }
	    
	    for(i=1; i<=4; i=i+1)
	    {
		[portExOut, i] = chMatrix2[matrixPos2][i]
	    }*/
	    /*PULSE[dvExtronIRMAV44SVA, 5]
	    PULSE[dvExtronIRMAV44SVA, 6]
	    PULSE[dvExtronIRMAV44SVA, activeInCh2]
	    PULSE[dvExtronIRMAV44SVA, 7]
	    PULSE[dvExtronIRMAV44SVA, button.input.channel]
	    PULSE[dvExtronIRMAV44SVA, 8]
	    activeInCh2 = 0*/
	}
    }
}

BUTTON_EVENT[portUtils, 4]
{
    push:
    {
	if(chrInput == 2)
	{
	    SEND_STRING dvChristieHD10KM, "'(SIN 21)', $0D"
	    chrInput = 1
	}
	else if(chrInput == 1)
	{
	    SEND_STRING dvChristieHD10KM, "'(SIN 22)', $0D"
	    chrInput = 2
	}
    }
}

BUTTON_EVENT[portVolume, chVolume]
{
    push:
    {
	if(BUTTON.INPUT.CHANNEL == 3)
	{	    
	    AudioMute = !AudioMute
	    
	    for(i=1; i<=4; i=i+1)
	    {
		NexiaSetMuteOutput(dvAudiaNexiaSP, 1, numberChanel, i, AudioMute)
	    }
	    [portVolume, 3] = AudioMute
	}
	else if(BUTTON.INPUT.CHANNEL == 1) 
	{
	    NexiaVolumeIsMax()
	}
	else if(BUTTON.INPUT.CHANNEL == 2) 
	{
	    NexiaVolumeIsMin()    
	}
    }
    hold[2, repeat]:
    {
	if(BUTTON.INPUT.CHANNEL == 1) 
	{
	    NexiaVolumeIsMax()
	}
	else if(BUTTON.INPUT.CHANNEL == 2) 
	{
	    NexiaVolumeIsMin()    
	}
    }
}

button_event [portCamera, 2]
{
    push:
    {
	CameraSpeed = 1
	Camera_Left(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera_Left(CameraSpeed)
    }
    release:
    {
	Camera_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera, 1]
{
    push:
    {
	CameraSpeed = 1
	Camera_Up(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera_Up(CameraSpeed)
    }
    release:
    {
	Camera_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera, 4]
{
    push:
    {
	CameraSpeed = 1
	Camera_Right(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera_Right(CameraSpeed)
    }
    release:
    {
	Camera_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera, 3]
{
    push:
    {
	CameraSpeed = 1
	Camera_Down(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera_Down(CameraSpeed)
    }
    release:
    {
	Camera_StopPanTilt(CameraSpeed)
    }
}

button_event [portCamera, 7]
{
    push:
    {
	CameraZSpeed = 0
	Camera_Tele(CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > 7)
	{
	    CameraZSpeed = 7
	}
	Camera_Tele(CameraZSpeed)
    }
    release:
    {
	Camera_ZoomStop()
    }
}
button_event [portCamera, 8]
{
    push:
    {
	CameraZSpeed = 0
	Camera_Wide(CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > 7)
	{
	    CameraZSpeed = 7
	}
	Camera_Wide(CameraZSpeed)
    }
    release:
    {
	Camera_ZoomStop()
    }
}

button_event [portCamera2, 2]
{
    push:
    {
	CameraSpeed = 1
	Camera2_Left(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera2_Left(CameraSpeed)
    }
    release:
    {
	Camera2_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera2, 1]
{
    push:
    {
	CameraSpeed = 1
	Camera2_Up(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera2_Up(CameraSpeed)
    }
    release:
    {
	Camera2_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera2, 4]
{
    push:
    {
	CameraSpeed = 1
	Camera2_Right(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera2_Right(CameraSpeed)
    }
    release:
    {
	Camera2_StopPanTilt(CameraSpeed)
    }
}
button_event [portCamera2, 3]
{
    push:
    {
	CameraSpeed = 1
	Camera2_Down(CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > 17)
	{
	    CameraSpeed = 17
	}
	Camera2_Down(CameraSpeed)
    }
    release:
    {
	Camera2_StopPanTilt(CameraSpeed)
    }
}

button_event [portCamera2, 7]
{
    push:
    {
	CameraZSpeed = 0
	Camera2_Tele(CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > 7)
	{
	    CameraZSpeed = 7
	}
	Camera2_Tele(CameraZSpeed)
    }
    release:
    {
	Camera2_ZoomStop()
    }
}
button_event [portCamera2, 8]
{
    push:
    {
	CameraZSpeed = 0
	Camera2_Wide(CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > 7)
	{
	    CameraZSpeed = 7
	}
	Camera2_Wide(CameraZSpeed)
    }
    release:
    {
	Camera2_ZoomStop()
    }
}

/*BUTTON_EVENT[portCamera, chCamera]
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		SonyUp()
	    }
	    case 2:
	    {
		SonyLeft()
	    }
	    case 3:
	    {
		SonyDown()
	    }
	    case 4:
	    {
		SonyRight()
	    }
	    case 5:
	    {
		SonyNear()
	    }
	    case 6:
	    {
		SonyFar()
	    }
	    case 7:
	    {
		SonyWide()
	    }
	    case 8:
	    {
		SonyTele()
	    }
	}
    }
    hold[2, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		SonyUp()
	    }
	    case 2:
	    {
		SonyLeft()
	    }
	    case 3:
	    {
		SonyDown()
	    }
	    case 4:
	    {
		SonyRight()
	    }
	    case 5:
	    {
		SonyNear()
	    }
	    case 6:
	    {
		SonyFar()
	    }
	    case 7:
	    {
		SonyWide()
	    }
	    case 8:
	    {
		SonyTele()
	    }
	}
    }
}*/


DEFINE_PROGRAM

(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

