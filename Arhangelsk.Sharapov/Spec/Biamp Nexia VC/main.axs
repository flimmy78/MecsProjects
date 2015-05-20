PROGRAM_NAME='main'
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

#include 'Polycom9000.axi'
#include 'Biamp.axi'
#include 'ExtronDVS605A.axi'
#include 'ExtronSMX.axi'
#include 'SamsungME46C.axi'
#include 'ChristieProjectorHD20KJ.axi'
#include 'PanasonicPanelTH103PF12.axi'
#include 'DIS.axi'
#include 'PanasonicCameraAWHE60HE.axi'
#include 'PolycomHDX9004_Main.axi'
#include 'EpiphanRecorder.axi'


DEFINE_DEVICE

dvRS_Biamp		=	5001:1:0
dvRS_DVS605A		=	5001:2:0
dvRS_Panel1		=	5001:3:0
dvRS_Panel2		=	5001:4:0
dvRS_SMX		=	5001:5:0
dvRS_Polycom		=	5001:6:0

dvIP_Camera1		=	0:3:0
dvIP_Camera2		=	0:4:0
dvIP_Camera3		=	0:5:0
dvIP_Camera4		=	0:6:0
dvIP_Camera5		=	0:7:0

dvIP_Panel1		= 	0:8:0
dvIP_Panel2		= 	0:9:0
dvIP_Panel3		= 	0:10:0
dvIP_Panel4		= 	0:11:0

dvIP_DIS6000		=	0:12:0
dvIP_Projector		=	0:13:0

dvIP_Recorder		=	0:14:0

//Pages
vdvTP			=	33001:1:0

dvTPMXT			=	10001:1:0
dvTPNXV			=	10002:1:0
dvTPIPad		=	10003:1:0

//Ports
portPages		=	33002:2:0//33002:1:0 //ПРОВЕРИТЬ !!! 33002
portCamera		=	33002:3:0//33003:1:0
portExtron		=	33002:4:0//33004:1:0
portBiamp		=	33002:5:0//33005:1:0
portProjector		=	33002:6:0//33006:1:0
portPanasonic		=	33002:7:0//33007:1:0
portSamsung		=	33002:8:0//33008:1:0
portPolycomKeypad	=	33002:11:0//33009:11:0
portPolycom		=	33002:12:0//33009:12:0
portDevicesState	=	33002:13:0
portSettings		=	33002:14:0
portRecorder		=	33002:15:0
portExtronBackground	=	33002:70:1

portPagesMXT		=	10001:2:0
portCameraMXT		=	10001:3:0
portExtronMXT		=	10001:4:0
portBiampMXT		=	10001:5:0
portProjectorMXT	=	10001:6:0
portPanasonicMXT	=	10001:7:0
portSamsungMXT		=	10001:8:0
portStateConnectMXT	=	10001:10:0
portPolycomKeypadMXT	=	10001:11:0
portPolycomMXT		=	10001:12:0
portDevicesStateMXT	=	10001:13:0
portSettingsMXT		=	10001:14:0
portRecorderMXT		=	10001:15:0
portExtronBackgroundMXT	=	10001:70:1

portPagesNXV		=	10002:2:0
portCameraNXV		=	10002:3:0
portExtronNXV		=	10002:4:0
portBiampNXV		=	10002:5:0
portProjectorNXV	=	10002:6:0
portPanasonicNXV	=	10002:7:0
portSamsungNXV		=	10002:8:0
portStateConnectNXV	=	10002:10:0
portPolycomKeypadNXV	=	10002:11:0
portPolycomNXV		=	10002:12:0
portDevicesStateNXV	=	10002:13:0
portSettingsNXV		=	10002:14:0
portRecorderNXV		=	10002:15:0
portExtronBackgroundNXV	=	10002:70:1

portPagesIPAD		=	10003:2:0
portCameraIPAD		=	10003:3:0
portExtronIPAD		=	10003:4:0
portBiampIPAD		=	10003:5:0
portProjectorIPAD	=	10003:6:0
portPanasonicIPAD	=	10003:7:0
portSamsungIPAD		=	10003:8:0
portStateConnectIPAD	=	10003:10:0
portPolycomKeypadIPAD	=	10003:11:0
portPolycomIPAD		=	10003:12:0
portDevicesStateIPAD	=	10003:13:0
portSettingsIPAD	=	10003:14:0
portRecorderIPAD	=	10003:15:0
portExtronBackgroundIPAD	=	10003:70:1


DEFINE_COMBINE
(portPages,		portPagesMXT,		portPagesNXV,		portPagesIPAD)
(portCamera,		portCameraMXT,		portCameraNXV,		portCameraIPAD)
(portExtron,		portExtronMXT,		portExtronNXV,		portExtronIPAD)
(portBiamp,		portBiampMXT,		portBiampNXV,		portBiampIPAD)
(portProjector,		portProjectorMXT,	portProjectorNXV,	portProjectorIPAD)
(portPanasonic,		portPanasonicMXT,	portPanasonicNXV,	portPanasonicIPAD)
(portSamsung,		portSamsungMXT,		portSamsungNXV,		portSamsungIPAD)
(portPolycomKeypad,	portPolycomKeypadMXT,	portPolycomKeypadNXV,	portPolycomKeypadIPAD)
(portPolycom,		portPolycomMXT,		portPolycomNXV,		portPolycomIPAD)
(portDevicesState,	portDevicesStateMXT,	portDevicesStateNXV,	portDevicesStateIPAD)
(portSettings,		portSettingsMXT,	portSettingsNXV,	portSettingsIPAD)
(portRecorder,		portRecorderMXT,	portRecorderNXV,	portRecorderIPAD)
(portExtronBackground,	portExtronBackgroundMXT,	portExtronBackgroundNXV,	portExtronBackgroundIPAD)

(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT

TL 			= 	1

// IP Setting ----------------------------------- //

IP_ADD_PROJECTOR	=	'192.168.1.10'
IP_PORT_PROJECTOR	=	3002

IP_ADD_RECORDER		=	'192.168.1.20'

IP_ADD_CAMERA1		= 	'192.168.1.12' //left
IP_ADD_CAMERA2		= 	'192.168.1.11' //right
IP_ADD_CAMERA3		= 	'192.168.1.16' //center
IP_ADD_CAMERA4		= 	'192.168.1.13' //presidium
IP_ADD_CAMERA5		= 	'192.168.1.14' //tribune
IP_PORT_CAMERA		=	80

TribuneCamera		=	5
PresidiumCamera		=	4
CenterCamera		=	3

// --------------------------------------------- //

IP_ADD_PANEL1		= 	'192.168.1.50'
IP_ADD_PANEL2		= 	'192.168.1.51'
IP_ADD_PANEL3		= 	'192.168.1.52'
IP_ADD_PANEL4		= 	'192.168.1.53'

// --------------------------------------------- //

IP_ADD_DIS		=	'192.168.1.159'
IP_PORT_DIS		=	3142

// --------------------------------------------- //

IP_ADD_BROADCAST	= 	'255.255.255.0'
IP_PORT_BROADCAST	= 	9

// Audio Settings------------------------------- //

// Input
ID_POLYCOM		=	27
ID_EXTRON1		=	28
ID_EXTRON2		=	29
ID_DIS			=	32
// Output
ID_POLYCOMOUT		=	26
ID_MAIN			=	25
ID_RECORDER		=	24

integer maxVolumeBiamp	=	1118//1120
integer numberOfChanel 	=	6
integer maxLevel	=	113

EXTRON605MainIn		=	3
EXTRON605ExtIn		=	4

// --------------------------------------------- //

MIC_COUNT		=	44
MIC_Presidium[4]	=	{1, 2, 3, 4}
// Соответствие микрофонов камере и пресету
//[preset number, camera number]
integer MicToCameraPreset[44][2] = {
	    {1, 0}, 		{16, CenterCamera}, 	{8, CenterCamera}, 	{1, CenterCamera}, 	{13, CenterCamera},	//1-5
	    {15, CenterCamera}, {11, CenterCamera}, 	{2, CenterCamera}, 	{5, CenterCamera}, 	{12, CenterCamera},	//6-10
	    {4, CenterCamera}, 	{10, CenterCamera}, 	{19, CenterCamera}, 	{9, CenterCamera}, 	{1, 0},	//11-15
	    {3, CenterCamera}, 	{14, CenterCamera},	{17, CenterCamera},	{18, CenterCamera}, 	{6, CenterCamera},	//16-20
	    
	    {28, CenterCamera},	{25, CenterCamera},	{35, CenterCamera},	{30, CenterCamera},	{26, CenterCamera},	//21-25
	    {22, CenterCamera},	{36, CenterCamera},	{27, CenterCamera},	{33, CenterCamera},	{37, CenterCamera},	//26-30
	    {29, CenterCamera},	{34, CenterCamera},	{32, CenterCamera},	{23, CenterCamera},	{21, CenterCamera},	//31-35
	    {20, CenterCamera},	{24, CenterCamera},	{31, CenterCamera},	{7, CenterCamera}, 		//36-39
	    //40	41	42	43	Presidium mic
	    {2, TribuneCamera}, {3, TribuneCamera}, {1, PresidiumCamera}, {2, PresidiumCamera}, {1, 0}}

integer inputsExtron[16]	=	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
integer outputsExtron[16]	=	{21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36}
integer inputsExtronCameras[5]	=	{6, 7, 8, 9, 10}

//-----------------------------------------------//
//Polycom
char KeypadSymbols[13]		=	{'1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0', '*', '#' }
integer buttonSymbols[13]	=	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}

integer NumberDeviceToInterfaceState[18]	=	{12, 4, 5, 6, 11, 1, 2 , 0, 0, 0, 0, 0, 7, 8, 9, 10, 3, 13}
 
(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

persistent long TimeArray[20] = 
    {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 16000, 17000, 18000, 19000, 20000}

//Cameras
volatile char		strIPADD_Camera1[15]
volatile char		strIPADD_Camera2[15]
volatile char		strIPADD_Camera3[15]
volatile char		strIPADD_Camera4[15]
volatile char		strIPADD_Camera5[15]
volatile integer	nIPPort_Camera		=	IP_PORT_CAMERA
volatile integer	selectedCamera[5]	=	{0, 0, 0, 0, 0}
volatile integer	isCamerasConnect[5]	=	{0, 0, 0, 0, 0}
volatile integer	commandNumber		= 	0
volatile integer	cameraNumber		=	0
volatile integer	presetNumber		=	0
volatile integer	isAutonavigation	=	1

volatile integer	activeCamera		=	TribuneCamera
volatile integer	activeCameraInExtron	= 	0
volatile integer	activeScript		=	0

//DIS
volatile char 		DIS_response[2048]
volatile char 		workResponse[2048]
volatile char 		DIS_ID = 0
volatile integer 	AddrMSB
volatile integer 	AddrLSB
volatile integer 	MSBaddr 		=	15
volatile integer 	LSBaddr			=	173
volatile char 		isConnectDIS 		=	0
volatile integer	ExUnitAddr
volatile integer 	ExIdentity	 	=	60
volatile integer 	numMic			=	1000
volatile char		strIPADD_DIS[15]
volatile integer	nIPPort_DIS		=	IP_PORT_DIS
volatile integer	isRequestMode		=	1
volatile integer	countOnMic		=	0

//Samsung panels
volatile char		strIPADD_Panel1[15]
volatile char		strMACADD_Panel1[15]
volatile char		strIPADD_Panel2[15]
volatile char		strMACADD_Panel2[15]
volatile char		strIPADD_Panel3[15]
volatile char		strMACADD_Panel3[15]
volatile char		strIPADD_Panel4[15]
volatile char		strMACADD_Panel4[15]
volatile integer	nIPPort_Panel		=	IP_PORT_PANEL
volatile integer	selectedSamsungPanel[4]	=	{0, 0, 0, 0}
volatile integer	isSamsungConnect[4]	=	{0, 0, 0, 0}
volatile integer	samsungMute[4]		=	{0, 0, 0, 0}
volatile integer 	samsungVolume[4] 	=	{0, 0, 0, 0}
volatile integer	samsungPower[4]		=	{0, 0, 0, 0}
volatile integer	samsungInput[4]		=	{MAGICINFO, MAGICINFO, MAGICINFO, MAGICINFO}

volatile char		strIPADD_Broadcast[15]
volatile integer	nIPPort_Broadcast	=	IP_PORT_BROADCAST

//Biamp
volatile char		volumeText[255]
volatile char 		volumesBiamp[6][255]
volatile integer	currentIDVolume		=	0
volatile integer 	isMaxVolume[6] 		=	{0, 0, 0, 0, 0, 0}
volatile integer 	audioLevel[6] 		=	{0, 0, 0, 0, 0, 0}
volatile integer	audioMute[6]		=	{0, 0, 0, 0, 0, 0}
volatile char 		sentAudioCommand[40]
volatile integer	isOnMicTranslate	=	0
volatile integer	isHoldAudioButton	=	0
volatile integer	isOnChannelTranlate[4]	=	{1, 1, 1, 1}


//Panasonic panels
volatile integer	selectedPanasonicPanel[2]	=	{0, 0}
volatile integer	isPowerPanasonicPanel[2]	=	{0, 0}
volatile integer	panasonicMute[2]		=	{0, 0}

//Projector
volatile char		strIPADD_Projector[15]
volatile integer	nIPPort_Projector		=	IP_PORT_PROJECTOR
volatile integer	isProjectorConnect		=	0
volatile integer	isProjectorPower		=	0
volatile integer	isProjectorFreeze		=	0
volatile integer	isProjectorMute			=	0
volatile integer	picturePresetProjector		=	0
volatile integer	isProjectorPIP			=	0
//EXTRON

// Intputs:
// 1 - Blu-ray
// 2 - PC 1
// 3 - PC 2
// 4 - Polycom
// 5 - Polycom
// 6:10 - camera
// 11 - люк 1
// 12 - люк 2
// 13 - e-Station

// Outputs:
// 1:4 - NEC display
// 5:6 - Polycom
// 7 - Epiphan
// 8 - Arthur display
// 9:10 - Panasonic panel
// 11:12 - Christie
// 13 - Audio
// 14 - Samsung panel
// 15 - Audio
volatile integer extronMatrix[][] 	= 	{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
						{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}

volatile integer 	selectedInput		=	0
volatile integer 	selectedOutput		=	0
volatile char 		Extron_response[1024]
volatile char 		dbgResponse[18][255]
volatile integer 	inputExtron605		=	0


//Polycom
volatile char phoneNumberString[20]
//volatile widechar msg[255]
volatile char msg[255]
volatile integer msgLen = 0
volatile integer msgPos = 1


volatile char		strIPADD_Recorder[15]
volatile integer	nIPPort_Recorder		=	IP_PORT_RECORDER
volatile integer 	isRecorderConnect		=	0
volatile integer	commandToRecorder			=	0

(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE

(***********************************************************)
(*        SUBROUTINE/FUNCTION DEFINITIONS GO BELOW         *)
(***********************************************************)
(* EXAMPLE: DEFINE_FUNCTION <RETURN_TYPE> <NAME> (<PARAMETERS>) *)
(* EXAMPLE: DEFINE_CALL '<NAME>' (<PARAMETERS>) *)

// Command audio Biamp
DEFINE_FUNCTION BiampGetParameters()
{
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
    BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
        
    currentIDVolume = 7 //опрос всех и всего
}

// Command for camera

DEFINE_FUNCTION PanasonicPresetActivate(integer presetNum, integer cameraNum)
{   
    switch(cameraNum)
    {
	case 1:
	{
	    callPreset(dvIP_Camera1, strIPADD_Camera1, presetNum)
	    break
	}
	case 2:
	{
	    callPreset(dvIP_Camera2, strIPADD_Camera2, presetNum)
	    break
	}
	case 3:
	{
	    callPreset(dvIP_Camera3, strIPADD_Camera3, presetNum)
	    break
	}
	case 4:
	{
	    callPreset(dvIP_Camera4, strIPADD_Camera4, presetNum)
	    break
	}
	case 5:
	{
	    callPreset(dvIP_Camera5, strIPADD_Camera5, presetNum)
	    break
	}
    }
}

DEFINE_FUNCTION CallCameraCommand(dev device, char strIPAdd[], integer presetNum, integer cameraNum)
{   
    switch(commandNumber)
    {
	case 1:
	{
	    setPanTilt(device, strIPADD, 0, 10)
	    break
	}
	case 2:
	{
	    setPanTilt(device, strIPADD, 0, -10)
	    break
	}
	case 3:
	{
	    setPanTilt(device, strIPADD, -10, 0)
	    break
	}
	case 4:
	{
	    setPanTilt(device, strIPADD, 10, 0)
	    break
	}
	case 5:
	{
	    // Установить режим manual
	    setFocusAuto(device, strIPADD, 0)
	    // Проверить на задержку между командами
	    //setFocus(device, strIPADD, 20)
	    break
	}
	case 6:
	{
	    setFocusStop(device, strIPADD)
	    break
	}
	case 7:
	{
	    // Установить режим manual
	    setFocusAuto(device, strIPADD, 0)
	    // Проверить на задержку между командами
	    //setFocus(device, strIPADD, -20)
	    break
	}
	case 8:
	{
	    setFocusAuto(device, strIPADD, 1)
	    break
	}
	case 9:
	{
	    PanasonicPresetActivate(presetNum, cameraNum)
	    break
	}
	case 10:
	{
	    setPanTiltStop(device, strIPADD)
	    break
	}
	case 11:
	{
	    setZoom(device, strIPADD, 10)
	    break
	}
	case 12:
	{
	    setZoomStop(device, strIPADD)
	    break
	}
	case 13:
	{
	    setZoom(device, strIPADD, -10)
	    break
	}
	case 14:
	{
	    setZoomABS(device, strIPADD, 555)
	    break
	}
	case 21:
	{
	    setFocus(device, strIPADD, 10)
	    break
	}
	case 22:
	{
	    setFocus(device, strIPADD, -10)
	    break
	}
    }
}

// Command for DIS
DEFINE_FUNCTION DISParserPackage(char package[])
{
    stack_var char msg[255]
    stack_var char CRC
    stack_var char pos
	
    //line_output_volume C -41
    if(FIND_STRING(package, 'line_output_volume', 1))
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(package, 'C -41', 1)):
	    {
		isOnChannelTranlate[1] = 0
	    }
	    ACTIVE(FIND_STRING(package, 'C 0', 1)):
	    {
		isOnChannelTranlate[1] = 1
	    }
	    ACTIVE(FIND_STRING(package, 'D -41', 1)):
	    {
		isOnChannelTranlate[2] = 0
	    }
	    ACTIVE(FIND_STRING(package, 'D 0', 1)):
	    {
		isOnChannelTranlate[2] = 1
	    }
	    ACTIVE(FIND_STRING(package, 'E -41', 1)):
	    {
		isOnChannelTranlate[3] = 0
	    }
	    ACTIVE(FIND_STRING(package, 'E 0', 1)):
	    {
		isOnChannelTranlate[3] = 1
	    }
	    ACTIVE(FIND_STRING(package, 'F -41', 1)):
	    {
		isOnChannelTranlate[4] = 0
	    }
	    ACTIVE(FIND_STRING(package, 'F 0', 1)):
	    {
		isOnChannelTranlate[4] = 1
	    }
	}
    }    
    else if(find_string(package, 'seat_state', 1) || find_string(package, 'mic_priority', 1) || find_string(package, 'mic_interrupt', 1))
    {
	isRequestMode = 1	//режим опроса включен
    }
    else if(find_string(package, 'mic_status_done', 1))
    {
	isRequestMode = 0	//режим опроса закончен
	if(countOnMic == 0)
	    DoScript(0)		//выполнить скрипт в состояние по-умолчанию
	countOnMic = 0		//обнуление счетчика
    }
    else if(FIND_STRING(package, 'mic_off', 1))
    {
	pos = FIND_STRING(package, 'mic_off', 1)
	numMic = atoi(mid_string(package, pos+7 , pos+10))
    }
    else if(FIND_STRING(package, 'mic_on', 1))
    {
	pos = FIND_STRING(package, 'mic_on', 1)
	numMic = atoi(mid_string(package, pos+7, pos+10))
	
	if(isRequestMode == 1)
	{// В режиме опроса считаем количество включенных микрофонов
	    countOnMic ++
	}
	else if(isAutonavigation == 1 && isRequestMode == 0)
	{
	    presetNumber = MicToCameraPreset[numMic][1] - 1	//нумерация с нуля!
	    cameraNumber = MicToCameraPreset[numMic][2]
	    commandNumber = 9   
	        
	    switch(cameraNumber)
	    {
		case 1:
		{
		    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
		    break
		}
		case 2:
		{
		    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
		    break
		}
		case 3:
		{
		    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
		    break
		}
		case 4:
		{
		    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
		    break
		}
		case 5:
		{
		    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
		    break
		}
	    }
	    
	    activeCamera = cameraNumber
	    DoScript(1)
	}
    }
}

// Christie projector LAN protocol commands

DEFINE_FUNCTION Christie232Preset(dev projector)
{   
    switch(picturePresetProjector)    
    {
	case 0:
	{
	    SEND_STRING projector, "'(SZP 0)', $0D"
	    break
	}
	case 1:
	{
	    SEND_STRING projector, "'(SZP 1)', $0D"
	    break
	}
	case 2:
	{
	    SEND_STRING projector, "'(SZP 2)', $0D"
	    break
	}
	case 3:
	{
	    SEND_STRING projector, "'(SZP 3)', $0D"
	    break
	}
	case 4:
	{
	    SEND_STRING projector, "'(SZP 4)', $0D"
	    break
	}
	case 5:
	{
	    SEND_STRING projector, "'(SZP 5)', $0D"
	    break
	}
	case 6:
	{
	    SEND_STRING projector, "'(SZP 6)', $0D"
	    break
	}
    }    
}

DEFINE_FUNCTION Christie232ResponseHadnler(char txt[])
{
    STACK_VAR integer pos, k
    STACK_VAR char chrTime[10]
    stack_var integer workHours

    pos = FIND_STRING(txt, 'PWR!', 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, '000', pos) || FIND_STRING(txt, '023', pos)):
	    {
		//OFF
		ON[portProjector, 1]
		OFF[portProjector, 2]
		OFF[portProjector, 3]
		isProjectorPower = 0
		
		SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[5]),',2,','Connect: OFF'"
	    }
	    ACTIVE(FIND_STRING(txt, '001', pos)):
	    {
		//ON
		OFF[portProjector, 1]
		ON[portProjector, 2]
		OFF[portProjector, 3]
		isProjectorPower = 1
		
		SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[5]),',2,','Connect: ON'"
	    }
	    ACTIVE(FIND_STRING(txt, '010', pos) || FIND_STRING(txt, 'Power Up', pos) || FIND_STRING(txt, 'Cooling down', pos)):
	    {
		ON[portProjector, 3]
	    }
	}
    }
    
    pos = FIND_STRING(txt, 'PJH!', 1)
    if(pos)
    {
	set_length_array(chrTime, 10)
	pos = 1
	k = 1
	while(txt[pos] != '"')
	{
	    pos = pos + 1
	}
	pos = pos+1
	k = pos
	while(txt[pos] != ':')
	{
	    pos = pos + 1
	}
	chrTime = mid_string(txt, k , pos-k)
	
	SEND_COMMAND portProjector, "'^TXT-50,1&2,','Lamp hours: ', chrTime"
	
	workHours = atoi(chrTime)
	if(workHours >= 750)
	{
	    ON[portProjector, 20]
	}
    }
    
    pos = FIND_STRING(txt, 'SHU!', 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, '001', pos)):
	    {
		ON[portProjector, 8]
		isProjectorMute = 1
	    }
	    ACTIVE(FIND_STRING(txt, '000', pos)):
	    {
		OFF[portProjector, 8]
		isProjectorMute = 0
	    }
	}
    }
    
    /*pos = FIND_STRING(txt, 'FRZ', 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, 'F1', pos)):
	    {
		ON[portProjector, 7]
		isProjectorFreeze = 1
	    }
	    ACTIVE(FIND_STRING(txt, '0', pos)):
	    {
		OFF[portProjector, 7]
		isProjectorFreeze = 0
	    }
	}
    }*/
}

DEFINE_FUNCTION ParserExtronPackage(char package[])
{
    stack_var char response[255]
    stack_var integer i, j
    stack_var integer pos
    stack_var integer out, in
    out = -1
    in = -1
    
    //response ViewTies 0OutX3 InX2 Vid
    //response InputToOutput 0OutX3 InX2 Vid
    
    pos = FIND_STRING(package, ' In', 1)
    if(pos)
    {
	set_length_array(response, 255)
	response = mid_string(package, pos-2, 2)
	out = atoi(response)
	
	set_length_array(response, 255)
	response = mid_string(package, pos+3, 2)
	in = atoi(response)
    }
    
    for(i=1; i<=16; i++) // занулить столбец связей
    {
	extronMatrix[i][out] = 0
    }
    
    /*if(out != 0 && in == 0) //признак раскоммутации
    {
	for(i=1; i<=16; i++)
	{
	    extronMatrix[i][out] = 0
	}
    }*/
    
    if(out >= 1 && in >= 1) //признак коммутации
    {
	extronMatrix[in][out] = 1
	
	/*for(i=1; i<=16; i++)
	{
	    if(i == in)	    
	    {
		extronMatrix[i][out] = 1
	    }
	    else
	    {
		extronMatrix[i][out] = 0
	    }
	}*/
    }
}



DEFINE_FUNCTION ExtronInitializeTie()
{	
    //
}

DEFINE_FUNCTION DeactivateCameras()
{
    stack_var integer i    
   
    for(i = 1; i<=5; i++)
    {
	OFF[portCamera, i]
	selectedCamera[ i ] = 0
    }
    
    //CANCEL_WAIT 'CAMERA_TIMEOUT'
}

DEFINE_FUNCTION DeactivateSamsungPanels()
{
    stack_var integer i    
   
    for(i = 1; i<=4; i++)
    {
	OFF[portSamsung, i]
	selectedSamsungPanel[ i ] = 0
    }
    
    OFF[portSamsung, 5]
    OFF[portSamsung, 6]
    OFF[portSamsung, 7]
    OFF[portSamsung, 8]
    
    //CANCEL_WAIT 'SAMSUNG_TIMEOUT'
}

DEFINE_FUNCTION DeactivatePanasonicPanels()
{
    stack_var integer i    
   
    for(i = 1; i <= 2; i++)
    {
	OFF[portPanasonic, i]
	selectedPanasonicPanel[ i ] = 0
    }
    
    [portPanasonic, 3] = 0
    [portPanasonic, 4] = 0
    
    //CANCEL_WAIT 'PANASONIC_TIMEOUT'
}

DEFINE_FUNCTION UpdatePanasonicPanels(integer number)
{
    if(selectedPanasonicPanel[number] == 1)
    {
	if(number == 1)
	{
	    [portPanasonic, 3] = isPowerPanasonicPanel[1]
	    [portPanasonic, 4] = !isPowerPanasonicPanel[1]
	}
	else if(number == 2)
	{
	    [portPanasonic, 3] = isPowerPanasonicPanel[2]
	    [portPanasonic, 4] = !isPowerPanasonicPanel[2]
	}
    }
}

DEFINE_FUNCTION UpdateSamsungPanels()
{
    if(selectedSamsungPanel[1] == 1)
    {
	SamsungGetMute(dvIP_Panel1)
	SamsungGetVolume(dvIP_Panel1)
	SamsungGetPowerStatus(dvIP_Panel1)
    }
    else if(selectedSamsungPanel[2] == 1)
    {
	SamsungGetMute(dvIP_Panel2)
	SamsungGetVolume(dvIP_Panel2)
	SamsungGetPowerStatus(dvIP_Panel2)    
    }
    else if(selectedSamsungPanel[3] == 1)
    {
	SamsungGetMute(dvIP_Panel3)
	SamsungGetVolume(dvIP_Panel3)
	SamsungGetPowerStatus(dvIP_Panel3)
    }
    else if(selectedSamsungPanel[4] == 1)
    {
	SamsungGetMute(dvIP_Panel4)
	SamsungGetVolume(dvIP_Panel4)
	SamsungGetPowerStatus(dvIP_Panel4)
    }
    else
    {
	DeactivateSamsungPanels()
    }
}

DEFINE_FUNCTION DeactivateExtron()
{
    stack_var integer i
    
    for(i=1; i<=16; i++)
    {
	OFF[portExtron, inputsExtron[i]]
	OFF[portExtron, outputsExtron[i]]
    }
    //OFF[portExtron, inputsExtron]
    //OFF[portExtron, outputsExtron]
    //selectedInput = 0
    //selectedOutput = 0
    CANCEL_WAIT 'EXTRON_TIMEOUT'
}

DEFINE_FUNCTION DeactivateFullExtron()
{
    DeactivateExtron()
    selectedInput = 0
    selectedOutput = 0
}

DEFINE_FUNCTION DoRecorder(integer mode)
{
    IP_CLIENT_OPEN(dvIP_Recorder.PORT, strIPADD_Recorder, nIPPort_Recorder, IP_TCP)
	
    if(mode)//on
    {
	commandToRecorder = 1
    }
    else//off
    {	    
	commandToRecorder = 2
    }
}

DEFINE_FUNCTION DoScript(integer mode) //0-по умолчанию, 1-активная камера
{
    if(activeScript == 1)
    {
	/*
	1. Видеокамера  перед трибуной  по-умолчанию снимает докладчика,  видео с камеры поступает на плазменные панели. 		    
	2. В случае нажатия кнопки микрофона, соответствующая камера  переключается на последнего нажавшего, 
	видео поток с активной камеры поступает на плазменные панели и монитор оператора, если включено автонаведение.   		    
	3. При деактивации всех кнопок микрофонов, камера снимает докладчика. 		    
	4. Видео трансляцию в локальную сеть обеспечивает Видеорегистратор.
	*/	
	
	if(mode == 0) /*состояние по умолчанию*/
	{
	    activeCamera = TribuneCamera
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 9, VIDEO)	//левая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 10, VIDEO)	//правая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 2, VIDEO)	//монитор оператора
	    
	    //первый пресет - трибуна
	    presetNumber = 0 //-1 нумерация с нуля
	    cameraNumber = activeCamera
	    commandNumber = 9
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	}
	else	/*есть активные микрофоны*/
	{
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 9, VIDEO)	//левая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 10, VIDEO)	//правая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 2, VIDEO)	//монитор оператора
	}
    }
    else if(activeScript == 2)
    {
	/*
	1. Видеокамера  по-умолчанию снимает президиум,  видео с кодека ВКС поступает на проектор, второй поток ВКС поступает на Плазменные панели. 		    
	2. Должна быть предусмотрена кнопка для возможности поменять эти потоки местами. 		    
	3. В случае нажатия кнопки микрофона, соответствующая камера (снимающая президиум или зал)  
	переключается на последнего нажавшего. Видеопоток идет с активной камеры, если включено автонаведение. 		    
	4. При деактивации всех кнопок микрофонов, камера снимает общий план президиума. 		    
	5. Видео трансляцию в локальную сеть обеспечивает Видеорегистратор и VSS4000.  		    
	6. Видеосигнал от лючков президиума или  компьютера трибуны поступает в ВКС в качестве второго потока. 		    
	7. В системе управления должна быть предусмотрена кнопка, которая включает и отключает режим презентации в сеансе ВКС. 
	*/
	if(mode == 0) /*состояние по умолчанию*/
	{
	    activeCamera = PresidiumCamera
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 6, VIDEO)	//vcs.camera
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 2, VIDEO)	//монитор оператора
	    
	    //3 пресет - президиум
	    presetNumber = 2 //-1 нумерация с нуля
	    cameraNumber = activeCamera
	    commandNumber = 9
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	}
	else	/*есть активные микрофоны*/
	{
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 6, VIDEO)	//vcs.camera
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 2, VIDEO)	//монитор оператора
	}
    }
    else if(activeScript == 0)
    {
	if(mode != 0)
	{
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 9, VIDEO)	//левая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 10, VIDEO)	//правая панель
	    ExtronSMXTieInputToOutput(dvRS_SMX, inputsExtronCameras[activeCamera], 2, VIDEO)	//монитор оператора
	}
    }
}

DEFINE_FUNCTION ClearPhoneNumber()
{
    msgPos = 1
    msgLen = 0
    CLEAR_BUFFER phoneNumberString
    SEND_COMMAND portPolycomKeypad, "'^TXT-20,1&2,',''"
}
(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

create_level portBiamp, 3, audioLevel[1]
create_level portBiamp, 13, audioLevel[2]
create_level portBiamp, 23, audioLevel[3]
create_level portBiamp, 33, audioLevel[4]
create_level portBiamp, 43, audioLevel[5]
create_level portBiamp, 53, audioLevel[6]

create_level portSamsung, 23, samsungVolume[1]
create_level portSamsung, 33, samsungVolume[2]
create_level portSamsung, 43, samsungVolume[3]
create_level portSamsung, 53, samsungVolume[4]

TIMELINE_CREATE(TL, TimeArray, 10, TIMELINE_ABSOLUTE, TIMELINE_REPEAT)

strIPADD_Camera1	= IP_ADD_CAMERA1
strIPADD_Camera2	= IP_ADD_CAMERA2
strIPADD_Camera3	= IP_ADD_CAMERA3
strIPADD_Camera4	= IP_ADD_CAMERA4
strIPADD_Camera5	= IP_ADD_CAMERA5

activeCamera 		= TribuneCamera
activeCameraInExtron	= inputsExtron[13]
activeScript		= 0

strIPADD_Panel1		= IP_ADD_PANEL1
strIPADD_Panel2		= IP_ADD_PANEL2
strIPADD_Panel3		= IP_ADD_PANEL3
strIPADD_Panel4		= IP_ADD_PANEL4

strIPADD_Projector	= IP_ADD_PROJECTOR

strIPADD_DIS		= IP_ADD_DIS

strIPADD_Broadcast	= IP_ADD_BROADCAST

strIPADD_Recorder	= IP_ADD_RECORDER

// Set unmute for all blocks
BiampSetMuteInput(dvRS_Biamp, 1, ID_POLYCOM, 1, 0)
BiampSetMuteInput(dvRS_Biamp, 1, ID_EXTRON1, 1, 0)
wait 1
{
    BiampSetMuteInput(dvRS_Biamp, 1, ID_EXTRON2, 1, 0)
    BiampSetMuteInput(dvRS_Biamp, 1, ID_DIS, 1, 0)
}
wait 2
{
    BiampSetMuteInput(dvRS_Biamp, 1, ID_MAIN, 1, 0)
    BiampSetMuteInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1, 0)
}

// Unmute and unfreeze projector
Christie232ShutterToggle(dvIP_Projector, 0)
Christie232FreezeToggle(dvIP_Projector, 0)

//Clear polycom dial string
ClearPhoneNumber()

DEFINE_MODULE 'PolycomHDX9004_UI_Ver2'		Interface(vdvPolycomHDXSERIAL,	dvTPMXT,	nButtons)
DEFINE_MODULE 'PolycomHDX9004_Comm_dr1_0_0'	SerialConnection(vdvPolycomHDXSERIAL[1],	dvRS_Polycom)


(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

TIMELINE_EVENT [TL]
{
    stack_var integer i
    
    switch (timeline.sequence)
    {
	case 1:
	{    
	    if(isSamsungConnect[1] == 0)
	    {
		//IP_CLIENT_CLOSE(dvIP_Panel1.PORT)
		IP_CLIENT_OPEN(dvIP_Panel1.PORT, strIPADD_Panel1, nIPPort_Panel, IP_TCP)
	    }		
	    if(isSamsungConnect[2] == 0)
	    {
		//IP_CLIENT_CLOSE(dvIP_Panel2.PORT)
		IP_CLIENT_OPEN(dvIP_Panel2.PORT, strIPADD_Panel2, nIPPort_Panel, IP_TCP)
	    }	
	    if(isSamsungConnect[3] == 0)
	    {
		//IP_CLIENT_CLOSE(dvIP_Panel3.PORT)
		IP_CLIENT_OPEN(dvIP_Panel3.PORT, strIPADD_Panel3, nIPPort_Panel, IP_TCP)
	    }		
	    if(isSamsungConnect[4] == 0)
	    {
		//IP_CLIENT_CLOSE(dvIP_Panel4.PORT)
		IP_CLIENT_OPEN(dvIP_Panel4.PORT, strIPADD_Panel4, nIPPort_Panel, IP_TCP)
	    }
	}
	case 2:
	{
	    if(isConnectDIS == 0)
	    {
		//IP_CLIENT_CLOSE(dvIP_DIS6000.PORT)
		IP_CLIENT_OPEN(dvIP_DIS6000.PORT, strIPADD_DIS, nIPPort_DIS, IP_TCP)
	    }
	    
	    MicrophoneRequestSystemStatus(dvIP_DIS6000)
	    isRequestMode = 1		//режим опроса начался
	    countOnMic = 0		//обнуляем счетчик включенных микрофонов
	}
	case 3:
	{
	    if(isHoldAudioButton == 0)
		BiampGetParameters()
	}
	case 4:
	{
	    ExtronSMXLookAllVideoTie(dvRS_SMX, VIDEO)
	    ExtronViewCurrentInput(dvRS_DVS605A)
	}
	case 5:
	{
	    if(isProjectorConnect == 0)
	    {
		IP_CLIENT_OPEN(dvIP_Projector.PORT, strIPADD_Projector, nIPPort_Projector, IP_TCP)
	    }
	    Christie232QueryShutterState(dvIP_Projector)
	}
	case 6:
	{
	    UpdateSamsungPanels()
	    //ExtronSMXLookAllAudioTie(dvRS_SMX, AUDIO)
	}
	case 7:
	{	    
	    MicrophoneRequestSystemStatus(dvIP_DIS6000)
	    isRequestMode = 1		//режим опроса начался
	    countOnMic = 0		//обнуляем счетчик включенных микрофонов
	}
	case 8:
	{	    
	    Christie232QueryPowerState(dvIP_Projector)
	    
	    //if(isRecorderConnect == 0)
	    {
		//IP_CLIENT_OPEN(dvIP_Recorder.PORT, strIPADD_Recorder, nIPPort_Recorder, IP_TCP)
	    }
	}
	case 9:
	{
	    PolycomCallInfo(dvRS_Polycom)
	}
	case 10:
	{
	    Christie232Hours(dvIP_Projector)
	}
    }
}
DATA_EVENT[dvTPMXT]
{
    ONLINE:
    {
	ON[portStateConnectMXT, 1]
	
	ClearPhoneNumber()
    }
    OFFLINE:
    {
	OFF[portStateConnectMXT, 1]
    }
}

DATA_EVENT[dvTPIPad]
{
    ONLINE:
    {
	ON[portStateConnectIPAD, 1]
	
	ClearPhoneNumber()
    }
    OFFLINE:
    {
	OFF[portStateConnectIPAD, 1]
    }
}

DATA_EVENT[dvTPNXV]
{
    ONLINE:
    {
	ON[portStateConnectNXV, 1]
	
	ClearPhoneNumber()
    }
    OFFLINE:
    {
	OFF[portStateConnectNXV, 1]
    }
}

//DATA_EVENT[dvRS_DIS6000]
DATA_EVENT[dvIP_DIS6000]
{
    ONLINE:
    {	
	isConnectDIS = 1
	[portDevicesState, NumberDeviceToInterfaceState[1]] = isConnectDIS
    }
    OFFLINE:
    {
	isConnectDIS = 0
	[portDevicesState, NumberDeviceToInterfaceState[1]] = isConnectDIS
	//IP_CLIENT_CLOSE(dvIP_DIS6000.PORT)
    }
    ONERROR:
    {
	isConnectDIS = 0
	[portDevicesState, NumberDeviceToInterfaceState[1]] = isConnectDIS
	//IP_CLIENT_CLOSE(dvIP_DIS6000.PORT)
    }
    STRING:
    {	    
	stack_var char package[255]
	stack_var integer lenIN
	stack_var integer len
	stack_var integer posBeg
	stack_var integer posEnd
	stack_var char isEnd	
	stack_var integer i
	
	dbgResponse[1] = DATA.TEXT
	
	isEnd = 0
	posBeg = 0
	posEnd = 0
	
	DIS_response = DATA.TEXT
	
	lenIN = length_array(DIS_response)
	len = length_array(workResponse)
	set_length_array(workResponse, lenIN + len)
	for(i=1; i<=lenIN; i++)
	    workResponse[len+i] = DIS_response[i]
	    
	while(!isEnd)
	{
	    posBeg = posEnd + 2 // ?
	    posEnd = find_string(workResponse, "13,10", 1) // раздедение на пакеты
	    
	    if(posBeg == 0 && posEnd == 0) 
	    {
		isEnd = 1
		CLEAR_BUFFER workResponse
		break
	    }
	    
	    if(posEnd != 0)
	    {
		package = LEFT_STRING(workResponse, posEnd)
		len = length_array(workResponse)
		workResponse = right_string(workResponse, len - posEnd)
		DISParserPackage(package)
	    }
	    else
	    {
		isEnd = 1
	    }
	}	
	
	CLEAR_BUFFER DIS_response
    }
}

DATA_EVENT[dvRS_Biamp]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 38400, N, 8, 1'"
	//ON[portDevicesState, NumberDeviceToInterfaceState[2]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[2]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[2]]
    }
    STRING:
    {
	ON[portDevicesState, NumberDeviceToInterfaceState[2]]
	
	dbgResponse[2] = DATA.TEXT
	
	volumeText = DATA.TEXT
	
	if(currentIDVolume >= 1 && currentIDVolume <= 6)
	{	    
	    stack_var res
	    stack_var integer len
	    stack_var integer startPos
	    stack_var char tmp[255]
	
	    startPos = find_string(volumeText, '+OK', 1)
	    if(startPos)
	    {
		tmp = mid_string(volumeText, 4, 255)
		startPos = find_string(tmp, '+OK', 1)
		if(startPos) startPos = 7
		else startPos = 4
		
		set_length_array(tmp, 255)
		tmp = ' '
		tmp = mid_string(volumeText, startPos, 255)		
		len = LENGTH_STRING(tmp)
		
		if(len >= 4) 
		{ 
		    res = ATOI(mid_string(volumeText, startPos , 255))
		    
		    if(res == 0 && isMaxVolume[currentIDVolume])
		    {
			set_length_array(volumesBiamp[1], 255)
			volumesBiamp[1] = ' '
			volumesBiamp[1] = itoa(maxVolumeBiamp)
			
			//BiampVolumeSetPercent(currentIDVolume)
			res = atoi(volumesBiamp[1])		
			res = (res * maxLevel)/maxVolumeBiamp
			audioLevel[ currentIDVolume ] = res
			
			currentIDVolume = 0
		    }
		    else if(res == 0)
		    {
			//TODO: break
		    }
		    else if(ATOI(mid_string(volumeText, startPos , 255)) < maxVolumeBiamp && (mid_string(volumeText, startPos , 255)) > 10)
		    {		
			set_length_array(volumesBiamp[1], 255)
			volumesBiamp[1] = mid_string(volumeText, startPos , 255)
			
			isMaxVolume[currentIDVolume] = 0
			
			//BiampVolumeSetPercent(currentIDVolume)
			res = atoi(volumesBiamp[1])		
			res = (res * maxLevel)/maxVolumeBiamp
			audioLevel[ currentIDVolume ] = res
			
			currentIDVolume = 0
			
			if(ATOI(mid_string(volumeText, startPos , 255)) + 10 >= maxVolumeBiamp)
			    isMaxVolume[currentIDVolume] = 1
		    }
		    currentIDVolume = 0
		}
	    }
	    else
	    {    
		startPos = 1
		res = ATOI(mid_string(volumeText, startPos , 255))
		    
		if(res == 0 && isMaxVolume[currentIDVolume])
		{
		    set_length_array(volumesBiamp[1], 255)
		    volumesBiamp[1] = ' '
		    volumesBiamp[1] = itoa(maxVolumeBiamp)
		    
		    //BiampVolumeSetPercent(currentIDVolume)
		    res = atoi(volumesBiamp[1])		
		    res = (res * maxLevel)/maxVolumeBiamp
		    audioLevel[ currentIDVolume ] = res
			
		    currentIDVolume = 0
		}
		else if(res == 0)
		{
		    //TODO: no modify
		}
		else if(ATOI(mid_string(volumeText, startPos , 255)) < maxVolumeBiamp && (mid_string(volumeText, startPos , 255)) > 10)
		{		
		    set_length_array(volumesBiamp[1], 255)
		    volumesBiamp[1] = mid_string(volumeText, startPos , 255)
		    
		    isMaxVolume[currentIDVolume] = 0
		    
		    //BiampVolumeSetPercent(currentIDVolume)
		    res = atoi(volumesBiamp[1])		
		    res = (res * maxLevel)/maxVolumeBiamp
		    audioLevel[ currentIDVolume ] = res
			
		    currentIDVolume = 0
		    
		    if(ATOI(mid_string(volumeText, startPos , 255)) + 10 >= maxVolumeBiamp)
			isMaxVolume[currentIDVolume] = 1
		}
		currentIDVolume = 0
	    }
	}
	if(currentIDVolume == 7)
	{
	    stack_var integer res
	    stack_var integer pos
	    stack_var integer k
	    stack_var integer i	
	    
	    pos = 1		
	    k = 1
	    for(i=1; i<=numberOfChanel; i=i+1)
	    {
		set_length_array(volumesBiamp[i], 255)
		while(volumeText[pos] != ' ' && pos < 255)
		{
		    pos = pos + 1
		}
		res = atoi(mid_string(volumeText, k , pos-k))
		
		if(res == 0)
		{
		    //TODO: no modify
		}
		else
		{
		    volumesBiamp[i] = ' '
		    volumesBiamp[i] = mid_string(volumeText, k , pos-k)
		    
		    if(res + 10 > maxVolumeBiamp)
			volumesBiamp[i] = itoa(maxVolumeBiamp)
		
		    if(isMaxVolume[i])
			volumesBiamp[i] = itoa(maxVolumeBiamp)		
		}
		
		k = pos
		pos = pos + 1
	    }
            for(i=1; i<=numberOfChanel; i=i+1)
	    {
		res = atoi(volumesBiamp[i])		
		res = (res * maxLevel)/maxVolumeBiamp
		
		audioLevel[ i ] = res
	    }
	    currentIDVolume = 0
	}
	
	send_level portBiamp, 3, audioLevel[1]
	send_level portBiamp, 13, audioLevel[2]
	send_level portBiamp, 23, audioLevel[3]
	send_level portBiamp, 33, audioLevel[4]
	send_level portBiamp, 43, audioLevel[5]
	send_level portBiamp, 53, audioLevel[6]
    }
}

DATA_EVENT [dvRS_DVS605A]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	//ON[portDevicesState, NumberDeviceToInterfaceState[3]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[3]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[3]]
    }
    STRING:
    {
	stack_var char txt[255]
	stack_var integer pos, k
	stack_var char itemTie[4]
	stack_var integer inTie
	
	dbgResponse[3] = DATA.TEXT
	/*ON[portDevicesState, NumberDeviceToInterfaceState[3]]
	
	txt = DATA.TEXT
	
	pos = FIND_STRING(txt, 'Pip00', 1)
	if(pos)
	{
	    isProjectorPIP = 0
	    OFF[portProjector, 6]
	}
	else
	{
	    pos = FIND_STRING(txt, 'Pip', 1)
	    if(pos)
	    {
		isProjectorPIP = 1
		ON[portProjector, 6]
	    }
	}
	
	pos = FIND_STRING(txt, 'In', 1)
	if(pos)
	{
	    set_length_array(itemTie, 4)
	    itemTie = mid_string(txt, pos + 2, pos + 4)
	    inTie = atoi(itemTie)
	    
	    if(inTie >= 1 && inTie <= 5)
	    {
		inputExtron605 = inTie
		
		if(inputExtron605 == EXTRON605MainIn)
		{
		    ON[portProjector, 11]
		    OFF[portProjector, 12]	    
		}
		else if(inputExtron605 == EXTRON605ExtIn)
		{
		    OFF[portProjector, 11]
		    ON[portProjector, 12]
		}
	    }
	}
	else
	{
	    set_length_array(itemTie, 4)
	    itemTie = mid_string(txt, 1, 4)
	    inTie = atoi(itemTie)
	    
	    if(inTie >= 1 && inTie <= 5)
	    {	    
		inputExtron605 = inTie
	    
		if(inputExtron605 == EXTRON605MainIn)
		{
		    ON[portProjector, 11]
		    OFF[portProjector, 12]	    
		}
		else if(inputExtron605 == EXTRON605ExtIn)
		{
		    OFF[portProjector, 11]
		    ON[portProjector, 12]
		}
	    }
	}*/
    }
}

DATA_EVENT [dvRS_SMX]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	//ON[portDevicesState, NumberDeviceToInterfaceState[4]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[4]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[4]]
    }    
    STRING:
    {    
	stack_var char workResponse[1024]
	stack_var char package[255]
	stack_var char itemTie[4]
	stack_var integer inTie
	stack_var integer lenIN
	stack_var integer len
	stack_var integer posBeg
	stack_var integer posEnd
	stack_var char isEnd	
	stack_var integer i, j
	
	dbgResponse[4] = DATA.TEXT
	ON[portDevicesState, NumberDeviceToInterfaceState[4]]
	
	isEnd = 0
	posBeg = 0
	posEnd = 0
	
	Extron_response = DATA.TEXT	
	//response ViewTies 00OutX3 InX2 Vid
	//response InputToOutput 00OutX3 InX2 Vid
	
	lenIN = length_array(Extron_response)
	
	len = length_array(workResponse)
	set_length_array(workResponse, lenIN + len)
	for(i=1; i<=lenIN; i++)
	    workResponse[len+i] = Extron_response[i]
	
	if(lenIN == 64) // пакет при опросе связей для всех 16ти выходов
	{
	    for(i=0; i<=15; i++)
	    {
		set_length_array(itemTie, 4)
		//itemTie = mid_string(workResponse, 4*i + 1, 4*(i+1))
		itemTie = mid_string(workResponse, 4*i + 1, 4)
		inTie = atoi(itemTie)
		
		for(j=1; j<=16; j++)
		{
		    extronMatrix[j][i + 1] = 0
		    if(j == inTie)
			extronMatrix[j][i + 1] = 1
		}
	    }
	}
	else
	{
	    while(!isEnd)
	    {
		posBeg = find_string(workResponse, '00Out', 1)
		posEnd = find_string(workResponse, 'Vid', 1)
		
		if(posBeg == 0 && posEnd == 0) 
		{
		    isEnd = 1
		    CLEAR_BUFFER workResponse
		    break
		}
		
		if(posEnd != 0)
		{
		    package = LEFT_STRING(workResponse, posEnd)
		    len = length_array(workResponse)
		    workResponse = RIGHT_STRING(workResponse, len - posEnd)
		    ParserExtronPackage(package)
		}
		else
		{
		    isEnd = 1
		}
	    }
	}	
	
	CLEAR_BUFFER Extron_response
	
	// Ненулевые selectedInput и selectedOutput позволяет понимать, 
	// что это случай, когда пользователь работает со страницей коммутации
	if(selectedInput == 0 && selectedOutput != 0)
	{
	    for(i=1; i<=16; i++)
	    {
		[portExtron, i] = extronMatrix[i][selectedOutput-20]	    
	    }
	}
	else if(selectedInput != 0 && selectedOutput != 0)
	{
	    for(i=1; i<=16; i++)
	    {
		[portExtron, 20 + i] = extronMatrix[selectedInput][i]
	    }	    
	}
    }
}

//DATA_EVENT [dvRS_Projector]
DATA_EVENT [dvIP_Projector]
{
    ONLINE:
    {
	isProjectorConnect = 1
	//ON[portDevicesState, NumberDeviceToInterfaceState[5]]
    }
    STRING:
    {
	dbgResponse[5] = DATA.TEXT
	isProjectorConnect = 1
	Christie232ResponseHadnler(DATA.TEXT)
    }
    OFFLINE:
    {
	isProjectorConnect = 0
	ON[portProjector, 1]
	OFF[portProjector, 2]
	OFF[portProjector, 3]
	//OFF[portDevicesState, NumberDeviceToInterfaceState[5]]
    }
    ONERROR:
    {
	isProjectorConnect = 0
	//OFF[portDevicesState, NumberDeviceToInterfaceState[5]]
	//IP_CLIENT_CLOSE(dvIP_Projector.PORT)
    }    
}

DATA_EVENT [dvIP_Recorder]
{
    ONLINE:
    {   
	isRecorderConnect = 1
	
	//SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[18]),',2,','Connect: Stop'"
	
	if(commandToRecorder == 1)
	{
	    /*SEND_STRING dvIP_Recorder, "'GET /admin/set_params.cgi?rec_enabled=on HTTP/1.1', $0D,$0A,
					    'Host: 192.168.1.20', $0D,$0A,
					    'Authorization: Basic ', sEncodeBase64("'admin',':','password'"), $0D,$0A,
					    $0D,$0A"
	    */
	    RecorderStart(dvIP_Recorder, strIPADD_Recorder)
	}
	else if(commandToRecorder == 2)
	{
	    RecorderStop(dvIP_Recorder, strIPADD_Recorder)
	}
	commandToRecorder = 0
    }
    STRING:
    {
	dbgResponse[18] = DATA.TEXT
	isRecorderConnect = 1
	
	//SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[18]),',2,','Connect: Stop'"
	
	IP_CLIENT_CLOSE(dvIP_Recorder.PORT)
    }
    OFFLINE:
    {
	isRecorderConnect = 0
    }
    ONERROR:
    {
	isRecorderConnect = 0
    }    
}

DATA_EVENT [dvRS_Panel1]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	ON[portDevicesState, NumberDeviceToInterfaceState[6]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[6]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[6]]
    }
    STRING:
    {
	//Это ПРАВАЯ ПАНЕЛЬ
	STACK_VAR integer pos, k
	STACK_VAR char chrTime[255]

	dbgResponse[6] = DATA.TEXT
    
	pos = FIND_STRING(dbgResponse[6], 'PON', 1)
	if(pos)
	{
	    isPowerPanasonicPanel[1] = 1
	    UpdatePanasonicPanels(1)
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[7]),',2,','Connect: ON'"
	}
	
	pos = FIND_STRING(dbgResponse[6], 'POF', 1)
	if(pos)
	{
	    isPowerPanasonicPanel[1] = 0
	    UpdatePanasonicPanels(1)
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[7]),',2,','Connect: OFF'"
	}
    }
}

DATA_EVENT [dvRS_Panel2]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	ON[portDevicesState, NumberDeviceToInterfaceState[7]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[7]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[7]]
    } 
    STRING:
    {
	//Это ЛЕВАЯ ПАНЕЛЬ
	STACK_VAR integer pos, k
	STACK_VAR char chrTime[255]

	dbgResponse[7] = DATA.TEXT
    
	pos = FIND_STRING(dbgResponse[7], 'PON', 1)
	if(pos)
	{
	    isPowerPanasonicPanel[2] = 1
	    UpdatePanasonicPanels(2)
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[6]),',2,','Connect: ON'"
	}
	
	pos = FIND_STRING(dbgResponse[7], 'POF', 1)
	if(pos)
	{
	    isPowerPanasonicPanel[2] = 0
	    UpdatePanasonicPanels(2)
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[6]),',2,','Connect: OFF'"
	}
    }
}

DATA_EVENT [dvRS_Polycom]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	ON[portDevicesState, NumberDeviceToInterfaceState[17]]
    }
    OFFLINE:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[17]]
    }
    ONERROR:
    {
	OFF[portDevicesState, NumberDeviceToInterfaceState[17]]
    }
    STRING:
    {
	stack_var integer pos
	dbgResponse[17] = DATA.TEXT
	
	ON[portDevicesState, NumberDeviceToInterfaceState[17]]
	
	pos = FIND_STRING(dbgResponse[17], 'system is not in a call', 1)
	if(pos)
	{
	    OFF[portPolycom, 1]
	    SEND_COMMAND portPolycom, "'^TXT-1,1,No any call'"
	}
	pos = FIND_STRING(dbgResponse[17], 'video call passed', 1)
	if(pos)
	{//answer incoming video call passed
	    ON[portPolycom, 1]
	    SEND_COMMAND portPolycom, "'^TXT-1,2,Is call'"
	}
    }
}

DATA_EVENT[dvIP_Camera1]
{
    STRING:
    {	
	dbgResponse[8] = DATA.TEXT
	isCamerasConnect[1] = 1
    }
    ONLINE:
    {
	dbgResponse[8] = DATA.TEXT
	isCamerasConnect[1] = 1
	
	CallCameraCommand(dvIP_Camera1, strIPADD_Camera1, presetNumber, cameraNumber)
	
	//callPreset(dvIP_Camera1, strIPADD_Camera1, presetNumber)
	
	//wait 20
	//{
	//    IP_CLIENT_CLOSE(dvIP_Camera1.PORT)
	//}
    }
    OFFLINE:
    {
	isCamerasConnect[1] = 0
    }
    ONERROR:
    {
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isCamerasConnect[1] = 0
    }
}

DATA_EVENT[dvIP_Camera2]
{
    STRING:
    {
	//Проверять включен/выключен автофокус
	dbgResponse[9] = DATA.TEXT
	isCamerasConnect[2] = 1
    }
    ONLINE:
    {
	dbgResponse[9] = DATA.TEXT
	isCamerasConnect[2] = 1
	
	CallCameraCommand(dvIP_Camera2, strIPADD_Camera2, presetNumber, cameraNumber)
	
	//callPreset(dvIP_Camera2, strIPADD_Camera2, presetNumber)
	
	wait 20
	{
	    IP_CLIENT_CLOSE(dvIP_Camera2.PORT)
	}
    }
    OFFLINE:
    {
	isCamerasConnect[2] = 0
    }
    ONERROR:
    {
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isCamerasConnect[2] = 0
    }
}

DATA_EVENT[dvIP_Camera3]
{
    STRING:
    {
	dbgResponse[10] = DATA.TEXT
	isCamerasConnect[3] = 1
    }
    ONLINE:
    {
	dbgResponse[10] = DATA.TEXT
	isCamerasConnect[3] = 1
	
	CallCameraCommand(dvIP_Camera3, strIPADD_Camera3, presetNumber, cameraNumber)
	
	wait 20
	{
	    IP_CLIENT_CLOSE(dvIP_Camera1.PORT)
	}
    }
    OFFLINE:
    {
	isCamerasConnect[3] = 0
    }
    ONERROR:
    {
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isCamerasConnect[3] = 0
    }
}

DATA_EVENT[dvIP_Camera4]
{
    STRING:
    {
	isCamerasConnect[4] = 1
	dbgResponse[11] = DATA.TEXT
    }
    ONLINE:
    {
	dbgResponse[11] = DATA.TEXT
	isCamerasConnect[4] = 1
	
	CallCameraCommand(dvIP_Camera4, strIPADD_Camera4, presetNumber, cameraNumber)
	
	wait 20
	{
	    IP_CLIENT_CLOSE(dvIP_Camera1.PORT)
	}
    }
    OFFLINE:
    {
	isCamerasConnect[4] = 0    
    }
    ONERROR:
    {
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isCamerasConnect[4] = 0
    }
}

DATA_EVENT[dvIP_Camera5]
{
    STRING:
    {	
	isCamerasConnect[5] = 1
	dbgResponse[12] = DATA.TEXT
    }
    ONLINE:
    {
	dbgResponse[12] = DATA.TEXT
	isCamerasConnect[5] = 1
	
	CallCameraCommand(dvIP_Camera5, strIPADD_Camera5, presetNumber, cameraNumber)
	
	wait 20
	{
	    IP_CLIENT_CLOSE(dvIP_Camera1.PORT)
	}
    }
    OFFLINE:
    {
	isCamerasConnect[5] = 0
    }
    ONERROR:
    {
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isCamerasConnect[5] = 0
    }
}

DATA_EVENT [dvIP_Panel1]
{
    ONLINE:
    {
	isSamsungConnect[1] = 1
	//ON[portDevicesState, NumberDeviceToInterfaceState[13]]
    }
    OFFLINE:
    {
	isSamsungConnect[1] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel1.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[13]]
    }
    STRING:
    {
	stack_var integer pos
	
	dbgResponse[13] = DATA.TEXT
	isSamsungConnect[1] = 1
	
	// Find string without checksum
	if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 249, 0", 1))	// button ON
	{
	    samsungPower[1] = 1
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[13]),',2,','Connect: ON'"
	    
	    SamsungGetMute(dvIP_Panel1)
	    SamsungGetInput(dvIP_Panel1)
	    SamsungGetVolume(dvIP_Panel1)
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 249, 1", 1))	//button OFF
	{
	    samsungPower[1] = 0
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[13]),',2,','Connect: OFF'"
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 20, 33", 1) || //HDMI_1
	    FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 20, 34", 1))	//HDMI_1_PC
	{
	    samsungInput[1]= HDMI_1
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 20, 35", 1) || //HDMI_2
	    FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 20, 36", 1))	//HDMI_2_PC
	{
	    samsungInput[1] = HDMI_2
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 20, 96", 1))	//MagicInfo
	{
	    samsungInput[1] = MAGICINFO
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 176, 104", 1))	//button Enter
	{
	    pos = 5
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 19, 0", 1))	//Unmute
	{
	    OFF[portSamsung, 24]
	    samsungMute[1] = 0
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 19, 1", 1))	//Mute
	{
	    ON[portSamsung, 24]
	    samsungMute[1] = 1
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 18", 1))	//Volume
	{
	    pos = FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 18", 1)	    
	    samsungVolume[1] = dbgResponse[13][pos + 6]
	    
	    send_level portSamsung, 23, samsungVolume[1]
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 98, 0", 1))	//Volume Inc
	{
	    SamsungGetVolume(dvIP_Panel1)
	    //samsungVolume[1] = samsungVolume[1] + 1
	}
	else if(FIND_STRING(dbgResponse[13], "170, 255, 1, 3, 65, 98, 1", 1))	//Volume Dec
	{
	    //samsungVolume[1] = samsungVolume[1] - 1
	    SamsungGetVolume(dvIP_Panel1)
	}
	
	if(selectedSamsungPanel[1])
	{
	    [portSamsung, 5] = samsungPower[1]
	    [portSamsung, 6] = !samsungPower[1]
	    if(samsungInput[1] == HDMI_1 || samsungInput[1] == HDMI_2)	    
	    {	
		[portSamsung, 7] = 1
		[portSamsung, 8] = 0
	    }
	    else if(samsungInput[1] == MAGICINFO)
	    {
		[portSamsung, 7] = 0
		[portSamsung, 8] = 1
	    }
	}
    }
    ONERROR:
    {	
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isSamsungConnect[1] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel1.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[13]]
    }    
}

DATA_EVENT [dvIP_Panel2]
{
    ONLINE:
    {
	isSamsungConnect[2] = 1
	//ON[portDevicesState, NumberDeviceToInterfaceState[14]]
    }
    OFFLINE:
    {
	isSamsungConnect[2] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel2.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[14]]
    }
    STRING:
    {	
	stack_var integer pos
	
	dbgResponse[14] = DATA.TEXT
	isSamsungConnect[2] = 1
	
	// Find string without checksum
	if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 249, 0", 1))	// button ON
	{
	    SamsungGetMute(dvIP_Panel2)
	    SamsungGetInput(dvIP_Panel2)
	    SamsungGetVolume(dvIP_Panel2)
	    
	    samsungPower[2] = 1
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[14]),',2,','Connect: ON'"
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 249, 1", 1))	//button OFF
	{
	    samsungPower[2] = 0
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[14]),',2,','Connect: OFF'"
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 20, 33", 1) || //HDMI_1
	    FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 20, 34", 1))	//HDMI_1_PC
	{
	    samsungInput[2]= HDMI_1
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 20, 35", 1) || //HDMI_2
	    FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 20, 36", 1))	//HDMI_2_PC
	{
	    samsungInput[2] = HDMI_2
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 20, 96", 1))	//MagicInfo
	{
	    samsungInput[2] = MAGICINFO
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 176, 104", 1))	//button Enter
	{
	    pos = 5
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 19, 0", 1))	//Unmute
	{
	    OFF[portSamsung, 34]
	    samsungMute[2] = 0
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 19, 1", 1))	//Mute
	{
	    ON[portSamsung, 34]
	    samsungMute[2] = 1
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 18", 1))	//Volume
	{
	    pos = FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 18", 1)	    
	    samsungVolume[2] = dbgResponse[14][pos + 6]
	    
	    send_level portSamsung, 33, samsungVolume[2]
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 98, 0", 1))	//Volume Inc
	{
	    SamsungGetVolume(dvIP_Panel2)
	    //samsungVolume[2] = samsungVolume[2] + 1
	}
	else if(FIND_STRING(dbgResponse[14], "170, 255, 1, 3, 65, 98, 1", 1))	//Volume Dec
	{
	    SamsungGetVolume(dvIP_Panel2)
	    //samsungVolume[2] = samsungVolume[2] - 1
	}
	
	if(selectedSamsungPanel[2])
	{
	    [portSamsung, 5] = samsungPower[2]
	    [portSamsung, 6] = !samsungPower[2]
	    if(samsungInput[2] == HDMI_1 || samsungInput[2] == HDMI_2)	    
	    {	
		[portSamsung, 7] = 1
		[portSamsung, 8] = 0
	    }
	    else if(samsungInput[2] == MAGICINFO)
	    {
		[portSamsung, 7] = 0
		[portSamsung, 8] = 1
	    }
	}
    }
    ONERROR:
    {		
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isSamsungConnect[2] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel2.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[14]]
    }    
}

DATA_EVENT [dvIP_Panel3]
{
    ONLINE:
    {
	isSamsungConnect[3] = 1
	//ON[portDevicesState, NumberDeviceToInterfaceState[15]]
    }
    OFFLINE:
    {
	isSamsungConnect[3] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel3.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[15]]
    }
    STRING:
    {	
	stack_var integer pos
	
	dbgResponse[15] = DATA.TEXT
	isSamsungConnect[3] = 1
	
	// Find string without checksum
	if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 249, 0", 1))	// button ON
	{
	    SamsungGetMute(dvIP_Panel3)
	    SamsungGetInput(dvIP_Panel3)
	    SamsungGetVolume(dvIP_Panel3)
	    samsungPower[3] = 1
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[15]),',2,','Connect: ON'"
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 249, 1", 1))	//button OFF
	{
	    samsungPower[3] = 0
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[15]),',2,','Connect: OFF'"
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 20, 33", 1) || //HDMI_1
	    FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 20, 34", 1))	//HDMI_1_PC
	{
	    samsungInput[3]= HDMI_1
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 20, 35", 1) || //HDMI_2
	    FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 20, 36", 1))	//HDMI_2_PC
	{
	    samsungInput[3] = HDMI_2
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 20, 96", 1))	//MagicInfo
	{
	    samsungInput[3] = MAGICINFO
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 176, 104", 1))	//button Enter
	{
	    pos = 5
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 19, 0", 1))	//Unmute
	{
	    OFF[portSamsung, 44]
	    samsungMute[3] = 0
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 19, 1", 1))	//Mute
	{
	    ON[portSamsung, 44]
	    samsungMute[3] = 1
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 18", 1))	//Volume
	{
	    pos = FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 18", 1)	    
	    samsungVolume[3] = dbgResponse[15][pos + 6]
	    
	    send_level portSamsung, 43, samsungVolume[3]
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 98, 0", 1))	//Volume Inc
	{
	    SamsungGetVolume(dvIP_Panel3)
	    //samsungVolume[3] = samsungVolume[3] + 1
	}
	else if(FIND_STRING(dbgResponse[15], "170, 255, 1, 3, 65, 98, 1", 1))	//Volume Dec
	{
	    SamsungGetVolume(dvIP_Panel3)
	    //samsungVolume[3] = samsungVolume[3] - 1
	}
	
	if(selectedSamsungPanel[3])
	{
	    [portSamsung, 5] = samsungPower[3]
	    [portSamsung, 6] = !samsungPower[3]
	    if(samsungInput[3] == HDMI_1 || samsungInput[3] == HDMI_2)	    
	    {	
		[portSamsung, 7] = 1
		[portSamsung, 8] = 0
	    }
	    else if(samsungInput[3] == MAGICINFO)
	    {
		[portSamsung, 7] = 0
		[portSamsung, 8] = 1
	    }
	}
    }
    ONERROR:
    {	
	stack_var long number		
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isSamsungConnect[3] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel3.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[15]]
    }    
}

DATA_EVENT [dvIP_Panel4]
{
    ONLINE:
    {
	isSamsungConnect[4] = 1
	//ON[portDevicesState, NumberDeviceToInterfaceState[16]]
    }
    OFFLINE:
    {
	isSamsungConnect[4] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel4.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[16]]
    }
    STRING:
    {
	stack_var integer pos
	
	dbgResponse[16] = DATA.TEXT
	isSamsungConnect[4] = 1
	
	// Find string without checksum
	if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 249, 0", 1))	// button ON
	{
	    SamsungGetMute(dvIP_Panel4)
	    SamsungGetInput(dvIP_Panel4)
	    SamsungGetVolume(dvIP_Panel4)
	    samsungPower[4] = 1
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[16]),',2,','Connect: ON'"
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 249, 1", 1))	//button OFF
	{
	    samsungPower[4] = 0
	    SEND_COMMAND portDevicesState, "'^TXT-',itoa(NumberDeviceToInterfaceState[16]),',2,','Connect: OFF'"
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 20, 33", 1) || //HDMI_1
	    FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 20, 34", 1))	//HDMI_1_PC
	{
	    samsungInput[4]= HDMI_1
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 20, 35", 1) || //HDMI_2
	    FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 20, 36", 1))	//HDMI_2_PC
	{
	    samsungInput[4] = HDMI_2
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 20, 96", 1))	//MagicInfo
	{
	    samsungInput[4] = MAGICINFO
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 176, 104", 1))	//button Enter
	{
	    pos = 5
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 19, 0", 1))	//Unmute
	{
	    OFF[portSamsung, 54]
	    samsungMute[4] = 0
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 19, 1", 1))	//Mute
	{
	    ON[portSamsung, 54]
	    samsungMute[4] = 1
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 18", 1))	//Volume
	{
	    pos = FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 18", 1)	    
	    samsungVolume[4] = dbgResponse[16][pos + 6]
	    
	    send_level portSamsung, 53, samsungVolume[4]
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 98, 0", 1))	//Volume Inc
	{
	    SamsungGetVolume(dvIP_Panel4)
	    //samsungVolume[4] = samsungVolume[4] + 1
	}
	else if(FIND_STRING(dbgResponse[16], "170, 255, 1, 3, 65, 98, 1", 1))	//Volume Dec
	{
	    SamsungGetVolume(dvIP_Panel4)
	    //samsungVolume[4] = samsungVolume[4] - 1
	}
	
	if(selectedSamsungPanel[4])
	{
	    [portSamsung, 5] = samsungPower[4]
	    [portSamsung, 6] = !samsungPower[4]
	    if(samsungInput[4] == HDMI_1 || samsungInput[4] == HDMI_2)	    
	    {	
		[portSamsung, 7] = 1
		[portSamsung, 8] = 0
	    }
	    else if(samsungInput[4] == MAGICINFO)
	    {
		[portSamsung, 7] = 0
		[portSamsung, 8] = 1
	    }
	}
    }
    ONERROR:
    {	
	stack_var long number
	number = DATA.NUMBER
	SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	isSamsungConnect[4] = 0
	//IP_CLIENT_CLOSE(dvIP_Panel4.PORT)
	//OFF[portDevicesState, NumberDeviceToInterfaceState[16]]
    }    
}

BUTTON_EVENT [portCamera, 1]		// Camera1
BUTTON_EVENT [portCamera, 2]		// Camera2
BUTTON_EVENT [portCamera, 3]		// Camera3
BUTTON_EVENT [portCamera, 4]		// Camera4
BUTTON_EVENT [portCamera, 5]		// Camera5
{
    PUSH:
    {
	stack_var integer i
	
	for(i=1; i<=5; i++)
	{
	    if(BUTTON.INPUT.CHANNEL == i)
	    {
		[portCamera, i] = ![portCamera, i]
		selectedCamera[ i ] = [portCamera, i]
	    }
	    else
	    {
		[portCamera, i] = 0
		selectedCamera[ i ] = 0
	    }
	}
    }
}

BUTTON_EVENT [portCamera, 11]		// Camera TiltUP
{
    PUSH:
    {	//setPanTilt(dvIP_Camera1, strIPADD_Camera1, 0, 20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 1	    
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 1
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 1
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 1
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 1
	}
    }
    RELEASE:    
    {
	//setPanTiltStop(dvIP_Camera1, strIPADD_Camera1)
	/*if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}*/
    }
}

BUTTON_EVENT [portCamera, 13]		// Camera TiltDOWN [Speed Control]
{
    PUSH:
    {//setPanTilt(dvIP_Camera1, strIPADD_Camera1, 0, -20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 2
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 2
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 2
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 2
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 2
	}
    }
    RELEASE:
    {
	/*if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}	
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}*/
    }
}

BUTTON_EVENT [portCamera, 14]		// Camera PanLEFT
{
    PUSH:
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 3
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 3
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 3
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 3
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 3
	}
    }
    RELEASE:    
    {
	/*if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}*/
    }
}

BUTTON_EVENT [portCamera, 12]		// Camera PanRIGHT
{
    PUSH:
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 4
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 4
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 4
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 4
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 4
	}

    }
    RELEASE:
    {
	/*if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}*/
    }
}

BUTTON_EVENT [portCamera, 21]		// Camera STOP
{
    PUSH:
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 10
	}
    }
}

BUTTON_EVENT [portCamera, 15]		// Camera Focus FAR
{
    PUSH:
    {//setFocus(dvIP_Camera1, strIPADD_Camera1, 20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 21
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 21
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 21
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 21
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 21
	}
    }
    RELEASE:
    {//setFocusStop(dvIP_Camera1, strIPADD_Camera1)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
    }
}

BUTTON_EVENT [portCamera, 16]		// Camera Focus NEAR
{
    PUSH:
    {//setFocus(dvIP_Camera1, strIPADD_Camera1, -20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 22
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 22
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 22
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 22
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 22
	}
    }
    RELEASE:
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 6
	}
    }
}

BUTTON_EVENT [portCamera, 20]		// Camera Focus AUTO
{
    PUSH:
    {//setFocusAuto(dvIP_Camera1, strIPADD_Camera1, 1)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 8
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 8
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 8
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 8
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 8
	}
    }
}

BUTTON_EVENT [portCamera, 30]		// Camera Focus Manual
{
    PUSH:
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 5
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 5
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 5
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 5
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 5
	}
    }
}

BUTTON_EVENT [portCamera, 17]		// Camera Zoom PLUS
{
    PUSH:
    {//setZoom(dvIP_Camera1, strIPADD_Camera1, 20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 11
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 11
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 11
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 11
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 11
	}
    }
    RELEASE:
    {//setZoomStop(dvIP_Camera1, strIPADD_Camera1)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
    }
}

BUTTON_EVENT [portCamera, 18]		// Camera Zoom x1.0
{
    PUSH:
    {//setZoomABS(dvIP_Camera1, strIPADD_Camera1, 555)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 14
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 14
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 14
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 14
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 14
	}
    }
}

BUTTON_EVENT [portCamera, 19]		// Camera Zoom Minus
{
    PUSH:
    {//setZoom(dvIP_Camera1, strIPADD_Camera1, -20)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 13
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 13
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 13
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 13
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 13
	}
    }
    RELEASE:
    {
	//setZoomStop(dvIP_Camera1, strIPADD_Camera1)
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 12
	}
    }
}

BUTTON_EVENT [portCamera, 50]		// Camera Autonavigation
{
    PUSH:
    {
	isAutonavigation = !isAutonavigation
	//[portCamera, 50] = isAutonavigation
    }
}

BUTTON_EVENT [portCamera, 6]
BUTTON_EVENT [portCamera, 7]
BUTTON_EVENT [portCamera, 8]
BUTTON_EVENT [portCamera, 9]
BUTTON_EVENT [portCamera, 10]
{
    PUSH:    
    {
	if(selectedCamera[1])
	{
	    IP_CLIENT_OPEN(dvIP_Camera1.PORT, strIPADD_Camera1, nIPPort_Camera, IP_TCP)
	    commandNumber = 9
	    cameraNumber = 1
	    presetNumber = BUTTON.INPUT.CHANNEL-6
	    
	    //callPreset(dvIP_Camera2, strIPADD_Camera2, presetNumber)
	}
	else if(selectedCamera[2])
	{
	    IP_CLIENT_OPEN(dvIP_Camera2.PORT, strIPADD_Camera2, nIPPort_Camera, IP_TCP)
	    commandNumber = 9
	    cameraNumber = 2
	    presetNumber = BUTTON.INPUT.CHANNEL-6
	    
	    //callPreset(dvIP_Camera2, strIPADD_Camera2, presetNumber)
	}
	else if(selectedCamera[3])
	{
	    IP_CLIENT_OPEN(dvIP_Camera3.PORT, strIPADD_Camera3, nIPPort_Camera, IP_TCP)
	    commandNumber = 9
	    cameraNumber = 3
	    presetNumber = BUTTON.INPUT.CHANNEL-6
	    
	    //callPreset(dvIP_Camera3, strIPADD_Camera3, presetNumber)
	}
	else if(selectedCamera[4])
	{
	    IP_CLIENT_OPEN(dvIP_Camera4.PORT, strIPADD_Camera4, nIPPort_Camera, IP_TCP)
	    commandNumber = 9
	    cameraNumber = 4
	    presetNumber = BUTTON.INPUT.CHANNEL-6
	    
	    //callPreset(dvIP_Camera4, strIPADD_Camera4, presetNumber)
	}
	else if(selectedCamera[5])
	{
	    IP_CLIENT_OPEN(dvIP_Camera5.PORT, strIPADD_Camera5, nIPPort_Camera, IP_TCP)
	    commandNumber = 9
	    cameraNumber = 5
	    presetNumber = BUTTON.INPUT.CHANNEL-6
	    
	    //callPreset(dvIP_Camera5, strIPADD_Camera5, presetNumber)
	}
    }
}

BUTTON_EVENT[portSamsung, 1]		// Samsung panel
BUTTON_EVENT[portSamsung, 2]
BUTTON_EVENT[portSamsung, 3]
BUTTON_EVENT[portSamsung, 4]
{
    push:
    {
	stack_var integer i
	
	for(i=1; i<=4; i++)
	{
	    if(BUTTON.INPUT.CHANNEL == i)
	    {
		[portSamsung, i] = ![portSamsung, i]
		selectedSamsungPanel[ i ] = [portSamsung, i]
	    }
	    else
	    {
		[portSamsung, i] = 0
		selectedSamsungPanel[ i ] = 0
	    }
	}
	
	for(i=1; i<=4; i++)
	{
	    if(selectedSamsungPanel[i] == 0)
	    {
		OFF[portSamsung, 5]
		OFF[portSamsung, 6]
		OFF[portSamsung, 7]
		OFF[portSamsung, 8]
	    }
	}
	
	//[portSamsung, BUTTON.INPUT.CHANNEL] = ![portSamsung, BUTTON.INPUT.CHANNEL]
	//selectedSamsungPanel[ BUTTON.INPUT.CHANNEL ] = [portSamsung, BUTTON.INPUT.CHANNEL]
	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		SamsungGetMute(dvIP_Panel1)
		SamsungGetVolume(dvIP_Panel1)
		SamsungGetPowerStatus(dvIP_Panel1)
		break	    
	    }
	    case 2:
	    {
		SamsungGetMute(dvIP_Panel2)
		SamsungGetVolume(dvIP_Panel2)
		SamsungGetPowerStatus(dvIP_Panel2)
		break
	    }
	    case 3:
	    {
		SamsungGetMute(dvIP_Panel3)
		SamsungGetVolume(dvIP_Panel3)
		SamsungGetPowerStatus(dvIP_Panel3)
		break
	    }
	    case 4:
	    {
		SamsungGetMute(dvIP_Panel4)
		SamsungGetVolume(dvIP_Panel4)
		SamsungGetPowerStatus(dvIP_Panel4)
		break
	    }
	}
    }
}

BUTTON_EVENT[portSamsung, 5]		// Samsung panel ON
{
    push:
    {
	//ON	
	/*send_string dvIP_Panel1, "$FF, $FF, $FF, $FF, $FF, $FF, 
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4,
	$5C, $F6, $DC, $AF, $AA, $C4"*/
	
	if(selectedSamsungPanel[1])
	    SamsungPowerToogle(dvIP_Panel1, 1)
	
	else if(selectedSamsungPanel[2])
	    SamsungPowerToogle(dvIP_Panel2, 1)
	    
	else if(selectedSamsungPanel[3])
	    SamsungPowerToogle(dvIP_Panel3, 1)
	    
	else if(selectedSamsungPanel[4])
	    SamsungPowerToogle(dvIP_Panel4, 1)
    }
}

BUTTON_EVENT[portSamsung, 6]		// Samsung panel OFF
{
    push:
    {
	if(selectedSamsungPanel[1])
	    SamsungPowerToogle(dvIP_Panel1, 0)
	
	else if(selectedSamsungPanel[2])
	    SamsungPowerToogle(dvIP_Panel2, 0)
	    
	else if(selectedSamsungPanel[3])
	    SamsungPowerToogle(dvIP_Panel3, 0)
	    
	else if(selectedSamsungPanel[4])
	    SamsungPowerToogle(dvIP_Panel4, 0)
    }
}

BUTTON_EVENT[portSamsung, 7]		// Samsung HDMI
{
    PUSH:
    {
	if(selectedSamsungPanel[1])
	    SamsungSwitch(dvIP_Panel1, HDMI_2)
	
	else if(selectedSamsungPanel[2])
	    SamsungSwitch(dvIP_Panel2, HDMI_2)
	    
	else if(selectedSamsungPanel[3])
	    SamsungSwitch(dvIP_Panel3, HDMI_2)
	    
	else if(selectedSamsungPanel[4])
	    SamsungSwitch(dvIP_Panel4, HDMI_2)
    }
}

BUTTON_EVENT[portSamsung, 8]		// Samsung Digital signage
{
    PUSH:
    {
	if(selectedSamsungPanel[1])
	    SamsungSwitch(dvIP_Panel1, MAGICINFO)
	
	else if(selectedSamsungPanel[2])
	    SamsungSwitch(dvIP_Panel2, MAGICINFO)
	    
	else if(selectedSamsungPanel[3])
	    SamsungSwitch(dvIP_Panel3, MAGICINFO)
	    
	else if(selectedSamsungPanel[4])
	    SamsungSwitch(dvIP_Panel4, MAGICINFO)
    }
}

BUTTON_EVENT[portSamsung, 9]		// Samsung Enter-button
{
    push:
    {
	if(selectedSamsungPanel[1])
	    SamsungEnter(dvIP_Panel1)
	
	else if(selectedSamsungPanel[2])
	    SamsungEnter(dvIP_Panel2)
	    
	else if(selectedSamsungPanel[3])
	    SamsungEnter(dvIP_Panel3)
	    
	else if(selectedSamsungPanel[4])
	    SamsungEnter(dvIP_Panel4)
    }
}

BUTTON_EVENT[portSamsung, 21]		// Samsung Volume Panel 1
BUTTON_EVENT[portSamsung, 22]
BUTTON_EVENT[portSamsung, 24]
{
    PUSH:
    {	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 21:
	    {
		SamsungIncVolume(dvIP_Panel1)
		break
	    }
	    case 22:
	    {
		SamsungDecVolume(dvIP_Panel1)
		break
	    }
	    case 24:
	    {
		SamsungSetMute(dvIP_Panel1, !samsungMute[1])
		samsungMute[1] = !samsungMute[1]
		[portSamsung, 24] = samsungMute[1]
		break
	    }
	}    
    }
    hold[2, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 21:
	    {
		SamsungIncVolume(dvIP_Panel1)
		break
	    }
	    case 22:
	    {
		SamsungDecVolume(dvIP_Panel1)
		break
	    }	
	}
    }
}

BUTTON_EVENT[portSamsung, 31]		// Samsung Volume Panel 2
BUTTON_EVENT[portSamsung, 32]
BUTTON_EVENT[portSamsung, 34]
{
    PUSH:
    {	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 31:
	    {
		SamsungIncVolume(dvIP_Panel2)
		break
	    }
	    case 32:
	    {
		SamsungDecVolume(dvIP_Panel2)
		break
	    }
	    case 34:
	    {
		SamsungSetMute(dvIP_Panel2, !samsungMute[2])
		samsungMute[2] = !samsungMute[2]
		[portSamsung, 34] = samsungMute[2]
		break
	    }
	}    
    }
    hold[2, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 31:
	    {
		SamsungIncVolume(dvIP_Panel2)
		break
	    }
	    case 32:
	    {
		SamsungDecVolume(dvIP_Panel2)
		break
	    }	
	}
    }
}

BUTTON_EVENT[portSamsung, 41]		// Samsung Volume Panel 3
BUTTON_EVENT[portSamsung, 42]
BUTTON_EVENT[portSamsung, 44]
{
    PUSH:
    {	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 41:
	    {
		SamsungIncVolume(dvIP_Panel3)
		break
	    }
	    case 42:
	    {
		SamsungDecVolume(dvIP_Panel3)
		break
	    }
	    case 44:
	    {
		SamsungSetMute(dvIP_Panel3, !samsungMute[3])
		samsungMute[3] = !samsungMute[3]
		[portSamsung, 44] = samsungMute[3]
		break
	    }
	}    
    }
    hold[2, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 41:
	    {
		SamsungIncVolume(dvIP_Panel3)
		break
	    }
	    case 42:
	    {
		SamsungDecVolume(dvIP_Panel3)
		break
	    }	
	}
    }
}

BUTTON_EVENT[portSamsung, 51]		// Samsung Volume Panel 4
BUTTON_EVENT[portSamsung, 52]
BUTTON_EVENT[portSamsung, 54]
{
    PUSH:
    {	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 51:
	    {
		SamsungIncVolume(dvIP_Panel4)
		break
	    }
	    case 52:
	    {
		SamsungDecVolume(dvIP_Panel4)
		break
	    }
	    case 54:
	    {
		SamsungSetMute(dvIP_Panel4, !samsungMute[4])
		samsungMute[4] = !samsungMute[4]
		[portSamsung, 54] = samsungMute[4]
		break
	    }
	}    
    }
    hold[2, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 51:
	    {
		SamsungIncVolume(dvIP_Panel4)
		break
	    }
	    case 52:
	    {
		SamsungDecVolume(dvIP_Panel4)
		break
	    }	
	}
    }
}

BUTTON_EVENT[portBiamp, 1]		// Biamp volume Polycom
BUTTON_EVENT[portBiamp, 2]
BUTTON_EVENT[portBiamp, 4]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]
	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		break	    
	    }
	    case 2:
	    {		
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		break	    
	    }
	    case 4:
	    {		
		BiampSetMuteInput(dvRS_Biamp, 1, ID_POLYCOM, 1, !audioMute[1])
		audioMute[1] = !audioMute[1]
		[portBiamp, 4] = audioMute[1]
		break
	    }
	}    
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		break	    
	    }
	    case 2:
	    {		
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOM, 1)
		currentIDVolume = 1
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 11]		// Biamp volume extron 1
BUTTON_EVENT[portBiamp, 12]
BUTTON_EVENT[portBiamp, 14]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 11:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)		
		currentIDVolume = 2
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		break	    
	    }
	    case 12:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		break	    
	    }
	    case 14:
	    {
		BiampSetMuteInput(dvRS_Biamp, 1, ID_EXTRON1, 1, !audioMute[2])
		audioMute[2] = !audioMute[2]
		[portBiamp, 14] = audioMute[2]
		break
	    }
	}	
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 11:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)		
		currentIDVolume = 2
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		break	    
	    }
	    case 12:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON1, 1)
		currentIDVolume = 2
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 21]		// Biamp volume extron 2
BUTTON_EVENT[portBiamp, 22]
BUTTON_EVENT[portBiamp, 24]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 21:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		break	    
	    }
	    case 22:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		break	    
	    }
	    case 24:
	    {		
		BiampSetMuteInput(dvRS_Biamp, 1, ID_EXTRON2, 1, !audioMute[3])
		audioMute[3] = !audioMute[3]
		[portBiamp, 24] = audioMute[3]
		break
	    }
	}
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{	    
	    case 21:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		break	    
	    }
	    case 22:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_EXTRON2, 1)
		currentIDVolume = 3
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 31]		// Biamp volume DIS
BUTTON_EVENT[portBiamp, 32]
BUTTON_EVENT[portBiamp, 34]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 31:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		break	    
	    }
	    case 32:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		break	    
	    }
	    case 34:
	    {		
		BiampSetMuteInput(dvRS_Biamp, 1, ID_DIS, 1, !audioMute[4])
		audioMute[4] = !audioMute[4]
		[portBiamp, 34] = audioMute[4]		
		break
	    }
	}
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 31:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		break	    
	    }
	    case 32:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_DIS, 1)
		currentIDVolume = 4
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 41]		// Biamp volume Main
BUTTON_EVENT[portBiamp, 42]
BUTTON_EVENT[portBiamp, 44]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]
	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 41:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		break	    
	    }
	    case 42:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		break	    
	    }
	    case 44:
	    {		
		BiampSetMuteInput(dvRS_Biamp, 1, ID_MAIN, 1, !audioMute[5])
		audioMute[5] = !audioMute[5]
		[portBiamp, 44] = audioMute[5]
		break
	    }
	}
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 41:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		break	    
	    }
	    case 42:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_MAIN, 1)
		currentIDVolume = 5
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 51]		// Biamp volume Polycom out
BUTTON_EVENT[portBiamp, 52]
BUTTON_EVENT[portBiamp, 54]
{
    PUSH:
    {
	//TO[BUTTON.INPUT]
	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 51:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		break	    
	    }
	    case 52:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		break	    
	    }
	    case 54:
	    {		
		BiampSetMuteInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1, !audioMute[6])
		audioMute[6] = !audioMute[6]
		[portBiamp, 54] = audioMute[6]
		break
	    }
	}
    }
    hold[2, repeat]:
    {
	isHoldAudioButton = 1
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 51:
	    {
		BiampIncVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		break	    
	    }
	    case 52:
	    {
		BiampDecVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		
		BiampGetVolumeInput(dvRS_Biamp, 1, ID_POLYCOMOUT, 1)
		currentIDVolume = 6
		break	    
	    }
	}
    }
    release:
    {
	isHoldAudioButton = 0
    }
}

BUTTON_EVENT[portBiamp, 74]		// Biamp Translate Mic On/Off
{
    PUSH:
    {
	if(isOnMicTranslate == 1) //is on
	{    
	    MicrophoneMuteToogleChannelC(dvIP_DIS6000, 0)
	    MicrophoneMuteToogleChannelD(dvIP_DIS6000, 0)
	    MicrophoneMuteToogleChannelE(dvIP_DIS6000, 0)
	    MicrophoneMuteToogleChannelF(dvIP_DIS6000, 0)
	    isOnMicTranslate = 0
	}
	else
	{
	    MicrophoneMuteToogleChannelC(dvIP_DIS6000, 1)
	    MicrophoneMuteToogleChannelD(dvIP_DIS6000, 1)
	    MicrophoneMuteToogleChannelE(dvIP_DIS6000, 1)
	    MicrophoneMuteToogleChannelF(dvIP_DIS6000, 1)
	    isOnMicTranslate = 1
	}
	
	[portBiamp, 74] = isOnMicTranslate
	
	//answer: line_output_volume B -41
	//answer: line_output_volume B 0
    }
}

BUTTON_EVENT[portBiamp, 84]		// Biamp all mic off
{
    PUSH:
    {
	MicrophoneClearRequestList(dvIP_DIS6000, MIC_COUNT)
    }
}

BUTTON_EVENT[portPanasonic, 1]		// Panasonic panel	    MicrophoneMuteToogleChannelB(dvIP_DIS6000, 1)

BUTTON_EVENT[portPanasonic, 2]
{
    push:
    {
	if(BUTTON.INPUT.CHANNEL == 1)
	{
	    [portPanasonic, 1] = ![portPanasonic, 1]
	    selectedPanasonicPanel[1] = [portPanasonic, 1]
	    
	    [portPanasonic, 2] = 0
	    selectedPanasonicPanel[2] = 0
	    
	    [portPanasonic, 3] = isPowerPanasonicPanel[1]
	    [portPanasonic, 4] = !isPowerPanasonicPanel[1]
	}
	else if(BUTTON.INPUT.CHANNEL == 2)
	{
	    [portPanasonic, 2] = ![portPanasonic, 2]
	    selectedPanasonicPanel[2] = [portPanasonic, 2]
	    
	    [portPanasonic, 1] = 0
	    selectedPanasonicPanel[1] = 0
	    
	    [portPanasonic, 3] = isPowerPanasonicPanel[2]
	    [portPanasonic, 4] = !isPowerPanasonicPanel[2]
	}
    }
}

BUTTON_EVENT[portPanasonic, 3]		// Panasonic panel ON
{
    push:
    {
	if(selectedPanasonicPanel[1])
	{
	    PanasonicPowerToogle(dvRS_Panel1, 1)
	}
	    
	if(selectedPanasonicPanel[2])
	{
	    PanasonicPowerToogle(dvRS_Panel2, 1)	    
	}
    }
}

BUTTON_EVENT[portPanasonic, 4]		// Panasonic panel OFF
{
    push:
    {
	if(selectedPanasonicPanel[1])
	{
	    PanasonicPowerToogle(dvRS_Panel1, 0)
	}
	    
	if(selectedPanasonicPanel[2])
	{
	    PanasonicPowerToogle(dvRS_Panel2, 0)
	}
    }
}

BUTTON_EVENT[portPanasonic, 6]		// Panasonic panel Mute
{
    push:
    {
	if(selectedPanasonicPanel[1])
	{
	    PanasonicMuteToggle(dvRS_Panel1, !panasonicMute[1])
	    panasonicMute[1] = !panasonicMute[1]
	}
	    
	if(selectedPanasonicPanel[2])
	{
	    PanasonicMuteToggle(dvRS_Panel2, panasonicMute[2])
	    panasonicMute[2] = !panasonicMute[2]
	}
    }
}

BUTTON_EVENT[portPanasonic, 7]
BUTTON_EVENT[portPanasonic, 8]
BUTTON_EVENT[portPanasonic, 9]
BUTTON_EVENT[portPanasonic, 10]
BUTTON_EVENT[portPanasonic, 11]
{
    push:
    {
	if(selectedPanasonicPanel[1])
	{
	    PanasonicAspectToggle(dvRS_Panel1, BUTTON.INPUT.CHANNEL - 6)
	}
	else if(selectedPanasonicPanel[2])
	{
	    PanasonicAspectToggle(dvRS_Panel2, BUTTON.INPUT.CHANNEL - 6)
	}
    }
}

BUTTON_EVENT[portProjector, 4]		// Projector ON OFF
BUTTON_EVENT[portProjector, 5]
{
    push:
    {
	if(BUTTON.INPUT.CHANNEL == 4)
	    Christie232PowerToggle(dvIP_Projector, 1)
	if(BUTTON.INPUT.CHANNEL == 5)
	    Christie232PowerToggle(dvIP_Projector, 0)
    }
}

BUTTON_EVENT[portProjector, 6]		// Projector PIP
{
    push:
    {	
	if(inputExtron605 == EXTRON605ExtIn)
	    ExtronSetPIP(dvRS_DVS605A, EXTRON605MainIn, !isProjectorPIP);
	    
	if(inputExtron605 == EXTRON605MainIn)
	    ExtronSetPIP(dvRS_DVS605A, EXTRON605ExtIN, !isProjectorPIP);
    }
}

BUTTON_EVENT[portProjector, 61]		// Projector PIP swap
{
    push:
    {
	ExtronSwapPIP(dvRS_DVS605A)
    }
}

BUTTON_EVENT[portProjector, 11]		// Set main channel
{
    push:
    {
	ExtronSwitchInput(dvRS_DVS605A, EXTRON605MainIn, BOTH)
    }
}

BUTTON_EVENT[portProjector, 12]		// Set extended channel
{
    push:
    {
	ExtronSwitchInput(dvRS_DVS605A, EXTRON605ExtIn, BOTH)
    }
}

BUTTON_EVENT[portProjector, 13]		// Set preset 1
{
    push:
    {
	ExtronCallPIPPreset(dvRS_DVS605A, 1)
    }
}

BUTTON_EVENT[portProjector, 14]		// Set preset 2
{
    push:
    {
	ExtronCallPIPPreset(dvRS_DVS605A, 2)
    }
}

BUTTON_EVENT[portProjector, 7]		// Projector Freeze
{
    push:
    {
	Christie232FreezeToggle(dvIP_Projector, !isProjectorFreeze)
	isProjectorFreeze = !isProjectorFreeze
	
	[portProjector, 7] = isProjectorFreeze
	
	//SEND_STRING dvRS_DVS605A, "'B'"
    }
}

BUTTON_EVENT[portProjector, 8]		// Projector Mute
{
    push:
    {
	Christie232ShutterToggle(dvIP_Projector, !isProjectorMute)
	//isProjectorMute = !isProjectorMute
	wait 10
	{
	    Christie232QueryShutterState(dvIP_Projector)
	}
	
	//SEND_STRING dvRS_DVS605A, "'41#'"
    }
}

BUTTON_EVENT[portProjector, 9]		// Projector Autoposition
{
    push:
    {
	Christie232AutoPositionToggle(dvIP_Projector)
	
	//SEND_STRING dvRS_DVS605A, "'6#'"
    }
}

BUTTON_EVENT[portProjector, 10]		// Projector Aspect
{
    push:
    {
	picturePresetProjector = picturePresetProjector + 1
	if (picturePresetProjector == 7) picturePresetProjector = 0
	//Christie232Preset(dvRS_Projector)
	Christie232Preset(dvIP_Projector)
	switch(picturePresetProjector)
	{
	    case 0:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Default'"
	    }
	    case 1:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,None'"
	    }
	    case 2:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Full Screen'"
	    }
	    case 3:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Full Width'"
	    }
	    case 4:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Full Height'"
	    }
	    case 5:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Anamorphic'"
	    }
	    case 6:
	    {
		SEND_COMMAND portProjector, "'^TXT-10,1&2,Custom'"
	    }
	}
    }
}

BUTTON_EVENT[portExtron, inputsExtron]	// Select inputs Extron
{
    push:
    {
	stack_var integer i
	
	DeactivateExtron()
	selectedOutput = 0
	selectedInput = BUTTON.INPUT.CHANNEL
	ON[portExtron, BUTTON.INPUT.CHANNEL]
	
	// Switching on outputs for this input
	for(i=1; i<=16; i++)
	{
	    if(extronMatrix[selectedInput][i] != 0)
	    {
		ON[portExtron, i + 20]
	    }
	}
    }
    hold[3]:
    {
	//
    }
    release:
    {
	wait 100 'EXTRON_TIMEOUT' 
	{ 
	    DeactivateExtron()
	    selectedInput = 0
	    selectedOutput = 0
	}
    }
}

BUTTON_EVENT[portExtron, outputsExtron]
{
    push:
    {
	stack_var integer i
	// Test for the audio tie
	//send_string dvRS_SMX, "'00*01*01$'"
    
	selectedOutput = BUTTON.INPUT.CHANNEL
	
	if((selectedInput == 4 || selectedInput == 5) && (selectedOutput == 25 || selectedOutput == 26))
	{
	    //Check tie VCS to VCS
	}
	else
	{
	    if(selectedInput != 0)
	    {	
		if(extronMatrix[selectedInput][selectedOutput-20] == 1)
		{
		    // Раскоммутировать
		    ExtronSMXTieInputToOutput(dvRS_SMX, 0, selectedOutput-20, VIDEO)
		    
		    //TODO: Проверять! 
		    OFF[portExtron, selectedOutput]
		    extronMatrix[selectedInput][selectedOutput - 20] = 0
		}
		else if(extronMatrix[selectedInput][selectedOutput-20] == 0)
		{
		    // Коммутировать
		    ExtronSMXTieInputToOutput(dvRS_SMX, selectedInput, selectedOutput - 20, VIDEO)
		    
		    // Обнуление столбца матрицы при выполнении новой коммутации -
		    // проверить на практике, это должно выполнятся при разборе callback от ExtronSMXTieInputToOutput
		    
		    //TODO: Проверять! 
		    ON[portExtron, selectedOutput]
		    extronMatrix[selectedInput][selectedOutput - 20] = 1
		}	    
	    }
	    else
	    {
		DeactivateExtron()
		// При опросе только одного входа, в ответе потом сложно понять к какому выходу присланный вход относится.
		// Хотя можно по selectedOutput установить связь, но это ненадежно
		// ExtronSMXLookForTie(dvRS_SMX, selectedOutput-20, VIDEO)
		
		
		//TODO: Проверять!
		for(i=1; i<=16; i++)
		{
		    [portExtron, i] = extronMatrix[i][selectedOutput-20]	    
		}	
		//ExtronSMXLookAllVideoTie(dvRS_SMX, VIDEO)
		
		ON[portExtron, selectedOutput]
	    }
	}
    }
    release:
    {
	wait 100 'EXTRON_TIMEOUT' 
	{ 
	    DeactivateExtron()
	    selectedInput = 0
	    selectedOutput = 0
	}
    }
}

BUTTON_EVENT[portExtron, 40]		// Deselect all buttons and input, output
{
    push:
    {
	DeactivateFullExtron()
    }
}

BUTTON_EVENT[portRecorder, 1]		//Recorder On
BUTTON_EVENT[portRecorder, 2]		//OFF
{
    push:
    {
	//IP_CLIENT_OPEN(dvIP_Recorder.PORT, strIPADD_Recorder, nIPPort_Recorder, IP_TCP)
	
	if(BUTTON.INPUT.CHANNEL == 1)//on
	{
	    DoRecorder(1)
	    //commandToRecorder = 1
	}
	else if(BUTTON.INPUT.CHANNEL == 2)//off
	{	    
	    DoRecorder(0)
	    //commandToRecorder = 2
	}
    }
}

BUTTON_EVENT[portPages, 1]		// Pages Camera
{
    push:
    {
	DeactivateFullExtron()
	DeactivatePanasonicPanels()
	DeactivateSamsungPanels()
    }
}

BUTTON_EVENT[portPages, 2]		// Pages Extron
{
    push:
    {
	DeactivateFullExtron()
	DeactivateCameras()
	DeactivatePanasonicPanels()
	DeactivateSamsungPanels()
    }
}

BUTTON_EVENT[portPages, 3]		// Pages LCD Samsung Panels
{
    push:
    {
	DeactivateCameras()
	DeactivatePanasonicPanels()
	DeactivateFullExtron()
	
	SamsungGetPowerStatus(dvIP_Panel1)
	SamsungGetPowerStatus(dvIP_Panel2)
	SamsungGetPowerStatus(dvIP_Panel3)
	SamsungGetPowerStatus(dvIP_Panel4)
	
	SamsungGetInput(dvIP_Panel1)
	SamsungGetInput(dvIP_Panel2)
	SamsungGetInput(dvIP_Panel3)
	SamsungGetInput(dvIP_Panel4)
	
	SamsungGetMute(dvIP_Panel1)
	SamsungGetMute(dvIP_Panel2)
	SamsungGetMute(dvIP_Panel3)
	SamsungGetMute(dvIP_Panel4)
	
	SamsungGetVolume(dvIP_Panel1)
	SamsungGetVolume(dvIP_Panel2)
	SamsungGetVolume(dvIP_Panel3)
	SamsungGetVolume(dvIP_Panel4)	
    }
}

BUTTON_EVENT[portPages, 4]		// Pages Panasonic Panels
{
    push:
    {
	DeactivateCameras()
	DeactivateFullExtron()
	DeactivateSamsungPanels()
    }
}

BUTTON_EVENT[portPages, 5]		// Pages Projector
BUTTON_EVENT[portPages, 6]		// Pages Audio
BUTTON_EVENT[portPages, 7]		// Pages Polycom
BUTTON_EVENT[portPages, 8]		// Pages Settings
{
    push:
    {
	DeactivateCameras()
	DeactivateFullExtron()
	DeactivateSamsungPanels()
	DeactivatePanasonicPanels()
    }
}

BUTTON_EVENT[portPolycom, 2]		//Polycom wake
{
    push:
    {
	PolycomWake(dvRS_Polycom)
    }
}

BUTTON_EVENT[portPolycom, 3]		//Polycom answer
{
    push:
    {
	PolycomAnswer(dvRS_Polycom)
    }
}

BUTTON_EVENT[portPolycom, 4]		//Polycom disconnect
{
    push:
    {
	PolycomHangup(dvRS_Polycom)
    }
}

BUTTON_EVENT[portPolycom, 5]		//Polycom display layout
{
    push:
    {	
	PolycomDisplayLayout(dvRS_Polycom)
    }
}

BUTTON_EVENT[portPolycom, 6]		//Polycom content on\off
{
    push:
    {
	PolycomOnOffContent(dvRS_Polycom)
    }
}

BUTTON_EVENT[portPolycomKeypad, buttonSymbols]		//button keypad symbols
{
    push:
    {
	SET_LENGTH_ARRAY(phoneNumberString, msgLen+1)
	
	//phoneNumberString[msgPos] = KeypadSymbols[BUTTON.INPUT.CHANNEL]
	switch(BUTTON.INPUT.CHANNEL) //{'1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0', '*', '#' }
	{
	    case 1:
		phoneNumberString[msgPos] = '1'
	    break
	    case 2:
		phoneNumberString[msgPos] = '2'
	    break
	    case 3:
		phoneNumberString[msgPos] = '3'
	    break
	    case 4:
		phoneNumberString[msgPos] = '4'
	    break
	    case 5:
		phoneNumberString[msgPos] = '5'
	    break
	    case 6:
		phoneNumberString[msgPos] = '6'
	    break
	    case 7:
		phoneNumberString[msgPos] = '7'
	    break
	    case 8:
		phoneNumberString[msgPos] = '8'
	    break
	    case 9:
		phoneNumberString[msgPos] = '9'
	    break
	    case 10:
		phoneNumberString[msgPos] = '.'
	    break
	    case 11:
		phoneNumberString[msgPos] = '0'
	    break
	    case 12:
		phoneNumberString[msgPos] = '*'
	    break
	    case 13:
		phoneNumberString[msgPos] = '#'
	    break
	}	
	
	msgLen = msgLen + 1
	msgPos = msgPos + 1
	SEND_COMMAND portPolycomKeypad, "'^TXT-20,1&2,', phoneNumberString"
    }
}

BUTTON_EVENT[portPolycomKeypad, 14]
BUTTON_EVENT[portPolycomKeypad, 15]
BUTTON_EVENT[portPolycomKeypad, 16]			//button keypad functional
{
    push:
    {
	if(BUTTON.INPUT.CHANNEL == 14)
	{
	    //clear
	    stack_var integer i
	    
	    //for(i = 1; i <= msgLen; i++)
		//msg[i] = 0
	    msgPos = 1
	    msgLen = 0
	    SET_LENGTH_ARRAY(phoneNumberString, msgLen)
	    
	    SEND_COMMAND portPolycomKeypad, "'^TXT-20,1&2,',''"
	    //SEND_COMMAND portKeypad, "'^TXT-20,0,', ''"
	}
	else if(BUTTON.INPUT.CHANNEL == 15)
	{
	    //backspace
	    if(msgPos > 1 && msgPos == msgLen+1)
	    {
		phoneNumberString[msgPos-1] = 0
		//phoneNumberString[msgPos-2] = 0
		//phoneNumberString[msgPos-3] = 0
		//phoneNumberString[msgPos-4] = 0
		//msgPos = msgPos-4
		//msgLen = msgLen-4
		msgPos = msgPos-1
		msgLen = msgLen-1
		SET_LENGTH_ARRAY(phoneNumberString, msgLen)	      
		//SEND_COMMAND portKeyboard,"'^UNI-500,0,', msgUni"
		SEND_COMMAND portPolycomKeypad, "'^TXT-20,1&2,', phoneNumberString"
	    }
	}
	else if(BUTTON.INPUT.CHANNEL == 16)
	{
	    //dial
	    //PolycomDialByStringManual(dvRS_Polycom, phoneNumberString)
	    //dial manual “speed” “dialstr1” [“dialstr2”] [h323|h320|ip|isdn|sip]
	    
	    //SEND_STRING dvRS_Polycom, "'dial manual 1024 ', phoneNumberString, ' h320', $0D"
	    
	    //dial manual 64 5551212 h320
	    //SEND_STRING dvRS_Polycom, "'dial manual 64 555.12.12.12 h320', $0D"
	    
	    PolycomDialByStringManual(dvRS_Polycom, phoneNumberString)
	    
	    ClearPhoneNumber()
	}
    }
}

BUTTON_EVENT [portSettings, 1]		// Power On All
BUTTON_EVENT [portSettings, 2]		// Power Off All
BUTTON_EVENT [portSettings, 3]		// Autonavigation On
BUTTON_EVENT [portSettings, 4]		// Autonavigation Off
BUTTON_EVENT [portSettings, 5]		// Stript Lecture
BUTTON_EVENT [portSettings, 6]		// Stript Plenary Session
BUTTON_EVENT [portSettings, 7]		// Stript Manual
{
    push:
    {	
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 1:
	    {
		Christie232PowerToggle(dvIP_Projector, 1)
		PanasonicPowerToogle(dvRS_Panel1, 1)
		PanasonicPowerToogle(dvRS_Panel2, 1)
		SamsungPowerToogle(dvIP_Panel1, 1)
		SamsungPowerToogle(dvIP_Panel2, 1)
		SamsungPowerToogle(dvIP_Panel3, 1)
		SamsungPowerToogle(dvIP_Panel4, 1)
	    }
	    break
	    case 2:
	    {
		Christie232PowerToggle(dvIP_Projector, 0)
		PanasonicPowerToogle(dvRS_Panel1, 0)
		PanasonicPowerToogle(dvRS_Panel2, 0)
		SamsungPowerToogle(dvIP_Panel1, 0)
		SamsungPowerToogle(dvIP_Panel2, 0)
		SamsungPowerToogle(dvIP_Panel3, 0)
		SamsungPowerToogle(dvIP_Panel4, 0)
	    }
	    break
	    case 3:
	    {
		isAutonavigation = 1
	    }
	    break
	    case 4:
	    {
		isAutonavigation = 0
	    }
	    break
	    case 5:
	    {
		//Script Lecture
		/*
		Аудио источники:
		    трибуна
		    DIS(конгресс-система)
		    ручные микрофоны
		    лючки президиума
		Аудио приемники:
		    видеорегистратор
		    аудиосистема зала
		
		Видео источники:		Видео приемники:
		    компьютер трибуны		видеорегистратор, проектор, мониторы президиума, монитор оператора
		    
		    видеокамеры			плазменные панели, монитор оператора
		    
		    1. Видеокамера  перед трибуной  по-умолчанию снимает докладчика,  видео с камеры поступает на плазменные панели. 		    
		    2. В случае нажатия кнопки микрофона, соответствующая камера  переключается на последнего нажавшего, 
		    видео поток с активной камеры поступает на плазменные панели и монитор оператора, если включено автонаведение.   		    
		    3. При деактивации всех кнопок микрофонов, камера снимает докладчика. 		    
		    4. Видео трансляцию в локальную сеть обеспечивает Видеорегистратор.
		*/
		
		activeScript = 1
		ExtronTieInputToAllOutput(dvRS_SMX, 0, VIDEO)
		
		wait 5
		{
		    //tribune video 
		    ExtronSMXTieInputToOutput(dvRS_SMX, 13, 7, VIDEO)	//трибуна -> рекордер
		    ExtronSMXTieInputToOutput(dvRS_SMX, 13, 11, VIDEO)	//трибуна -> проектор
		    ExtronSMXTieInputToOutput(dvRS_SMX, 13, 8, VIDEO)	//трибуна -> президиум
		    ExtronSMXTieInputToOutput(dvRS_SMX, 13, 1, VIDEO)	//трибуна -> оператор
		    
		    //camera video
		    activeCamera = TribuneCamera
		    DoScript(0)
		    
		    //audio from Tribune and Hatch1
		    ExtronSMXTieInputToOutput(dvRS_SMX, 11, 13, VIDEO) //hatch 1
		    ExtronSMXTieInputToOutput(dvRS_SMX, 13, 15, VIDEO) //tribune
		    
		    //Recorder
		    //DoRecorder(1)
		}
		break
	    }	    
	    case 6:
	    {
		//Script Plenary Session
		/*
		Аудио источники:		Аудио приемники:
		    ВКС				аудиосистема зала, видеорегистратор
		    
		    DIS(конгресс-система)	ВКС, аудиосистема зала, видеорегистратор
		    ручные микрофоны
		    компьютер трибуны
		    лючки президиума
		
		Видео источники:		Видео приемники:   
		    ВКС основной поток		видеорегистратор, проектор, мониторы президиума, VSS4000, монитор оператора
		    
		    ВКС второй поток		плазменные панели, VSS4000
		    
		    видеокамеры			ВКС основной поток, VSS4000, монитор оператора
		    
		    ?Что и куда 
		    ? компьютер трибуны		ВКС второй поток, VSS4000
		    ? лючки президиума
		    
		    
		    1. Видеокамера  по-умолчанию снимает президиум,  видео с кодека ВКС поступает на проектор, 
		    второй поток ВКС поступает на Плазменные панели. 		    
		    2. Должна быть предусмотрена кнопка для возможности поменять эти потоки местами. 		    
		    3. В случае нажатия кнопки микрофона, соответствующая камера (снимающая президиум или зал)  
		    переключается на последнего нажавшего. Видеопоток идет с активной камеры, если включено автонаведение. 		    
		    4. При деактивации всех кнопок микрофонов, камера снимает общий план президиума. 		    
		    5. Видео трансляцию в локальную сеть обеспечивает Видеорегистратор и VSS4000.  		    
		    6. Видеосигнал от лючков президиума или  компьютера трибуны поступает в ВКС в качестве второго потока. 		    
		    7. В системе управления должна быть предусмотрена кнопка, которая включает и отключает режим презентации в сеансе ВКС. 
		*/
		
		activeScript = 2
		ExtronTieInputToAllOutput(dvRS_SMX, 0, VIDEO)
		
		wait 5
		{
		    //video
		    ExtronSMXTieInputToOutput(dvRS_SMX, 4, 7, VIDEO) 	//vcs people -> recorder
		    ExtronSMXTieInputToOutput(dvRS_SMX, 4, 11, VIDEO) 	//vcs people -> projector
		    ExtronSMXTieInputToOutput(dvRS_SMX, 4, 8, VIDEO)	//vcs people -> presidium
		    ExtronSMXTieInputToOutput(dvRS_SMX, 4, 1, VIDEO)	//vcs people -> operator
		    
		    ExtronSMXTieInputToOutput(dvRS_SMX, 5, 9, VIDEO)	//vcs content -> left panel
		    ExtronSMXTieInputToOutput(dvRS_SMX, 5, 10, VIDEO)	//vcs content -> right panel
		    
		    ExtronSMXTieInputToOutput(dvRS_SMX, 11, 5, VIDEO)	//hatch1 -> vcs content

		    //camera video
		    activeCamera = PresidiumCamera
		    DoScript(0)
		    
		    //audio from Hatch1 and Hatch2
		    ExtronSMXTieInputToOutput(dvRS_SMX, 11, 13, VIDEO) //hatch 1
		    ExtronSMXTieInputToOutput(dvRS_SMX, 12, 15, VIDEO) //hatch 2
		    
		    //Recorder
		    //DoRecorder(1)
		}
		break
	    }
	    case 7:
	    {
		activeScript = 0
		break
	    }
	}
    }
}

BUTTON_EVENT[portExtronBackground, 1]
{
    push:
    {
	DeactivateFullExtron()
    }
}
(***********************************************************)
(*            THE ACTUAL PROGRAM GOES BELOW                *)
(***********************************************************)
DEFINE_PROGRAM
send_level portBiamp, 3, audioLevel[1]
send_level portBiamp, 13, audioLevel[2]
send_level portBiamp, 23, audioLevel[3]
send_level portBiamp, 33, audioLevel[4]
send_level portBiamp, 43, audioLevel[5]
send_level portBiamp, 53, audioLevel[6]

[portCamera, 50] = isAutonavigation

send_level portSamsung, 23, samsungVolume[1]
send_level portSamsung, 33, samsungVolume[2]
send_level portSamsung, 43, samsungVolume[3]
send_level portSamsung, 53, samsungVolume[4]

[portSamsung, 61] = isSamsungConnect[1]
[portSamsung, 62] = isSamsungConnect[2]
[portSamsung, 63] = isSamsungConnect[3]
[portSamsung, 64] = isSamsungConnect[4]

[portDevicesState, NumberDeviceToInterfaceState[1]] = isConnectDIS
[portDevicesState, NumberDeviceToInterfaceState[5]] = isProjectorConnect
[portDevicesState, NumberDeviceToInterfaceState[13]] = isSamsungConnect[1]
[portDevicesState, NumberDeviceToInterfaceState[14]] = isSamsungConnect[2]
[portDevicesState, NumberDeviceToInterfaceState[15]] = isSamsungConnect[3]
[portDevicesState, NumberDeviceToInterfaceState[16]] = isSamsungConnect[4]
//[portDevicesState, NumberDeviceToInterfaceState[18]] = isRecorderConnect

(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

