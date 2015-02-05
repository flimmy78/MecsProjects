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

#include 'SamsungME46C.axi'
#include 'ProjectorSonyVPLFH500L.axi'
#include 'ExtronDXP88HDMI.axi'
#include 'CameraSonySRG300H.axi'
#include 'ApartCONCEPT1.axi'
#include 'PlayerAPartPCR3000R.axi'

DEFINE_DEVICE

//[RS-232]
dvCAMERA		= 	5001:1:0
dvEXTRON		=	5001:2:0
dvPROJECTOR		=	5001:3:0
dvAPARTCONCEPT		=	5001:4:0	//ECHO page 4 manual ?? <CR><LF>; настройка двух раздельных зон
dvAPARTPCR3000R		=	5001:5:0

//[RJ-45]
dvPANELCoworking	=	0:3:0
dvPANELCloakroom	=	0:4:0
dvPANELShowDish		=	0:5:0
dvPANELChildren_1	=	0:6:0
dvPANELChildren_2	=	0:7:0

//[Relay]
dvRelay			= 	5001:8:0

//[Touch Panel]
dvTPIPad		=	10001:1:0

//Ports
portPingAMX		=	10001:1:0
portSettingsDevice	=	10001:2:0
portFirstFloorVolume	=	10001:3:0
portSecondFloorVolume	=	10001:4:0
portCamera		=	10001:5:0
portExtronSources	=	10001:6:0
portExtronReceivers	=	10001:7:0
portSamsungPanel	=	10001:8:0
portProjector		=	10001:9:0
portZoneSelector	=	10001:11:0
portPlayerCD		=	10001:12:0
portPlayerFM		=	10001:13:0

DEFINE_CONSTANT

TL 			= 	1

IP_ADD_COWORKING_PANEL	= 	'192.168.1.2'
IP_ADD_CLOAKROOM_PANEL	= 	'192.168.1.3'
IP_ADD_SHOWDISH_PANEL	= 	'192.168.1.4'
IP_ADD_CHILDREN_PANEL_1	= 	'192.168.1.5'
IP_ADD_CHILDREN_PANEL_2	= 	'192.168.1.6'

MAX_PAN_SPEED		= 	23
MAX_PAN_ZOOM		= 	7
MAX_PAN_FOCUS		= 	7

// extron
integer inputsExtron[8]		=	{1, 2, 3, 4, 0, 0, 0, 0}
//1 - laptop operator's
//2 - IPTV
//3 - camera
//4 - laptop scene
integer outputsExtron[8]	=	{1, 2, 3, 4, 5, 6, 0, 0}
//1 - projector scene
//2 - panel co-working
//3 - panel cloakroom
//4 - show dish
//5 - children's 1
//6 - children's 2


DEFINE_TYPE

structure Panel
{
    dev DevLink
    integer IsConnect
    integer Mode
    integer ExtronIn
    char Volume
    integer Power
    //
    char IP_ADD[255]
    integer IP_PORT
    
    char Name[80]
}

structure Projector
{
    integer Status
    integer IsMute
    integer Aspect
    integer ExtronIn
}

structure Apart
{
    integer 	VolumeZone1
    integer 	VolumeZone2
    char	ChannelName
}

DEFINE_VARIABLE
persistent long TimeArray[20] = 
    {1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 16000, 17000, 18000, 19000, 20000}

volatile integer extronMatrix[8][8] = 	{{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0},
					{0,0,0,0,0,0,0,0}}

volatile char 	Extron_response[1024]
volatile char 	dbgResponse[16][256]
volatile char	selectedInput
volatile char	selectedOutput

volatile Panel	SamsungPanels[5]
volatile Projector SonyProjector

volatile integer selectedPanel	= 1
volatile integer selectedZone	= 1

volatile Apart	ApartMixer

volatile char	workPlayerResponse[1024]

DEFINE_LATCHING

DEFINE_MUTUALLY_EXCLUSIVE
([dvRelay, 1], [dvRelay, 2], [dvRelay, 3])


DEFINE_FUNCTION Sony232ResponseHandler(char txt[])
{
    STACK_VAR integer pos, k
    STACK_VAR char chrTime[255]

/*
STATUS POWER 01h 02h 
STANDBY 00h
START UP 01h
STARTUP LAMP 02h
POWER ON 03h
COOLING1 04h
COOLING2 05h
SAVING COOLING1 06h
SAVING COOLING2 07h
SAVING STANDBY 08h
*/

/*LAMP TIMER 01h 13h 
VALUE xxh*/

/*
PICTURE MUTING 00h 30h 
OFF 0000h
ON 0001h
*/

/*ASPECT 00h 20h 
FULL 0000h Set/Get
NORMAL 0001h
ZOOM 0003h
FULL1 0007h
FULL2 0008h
4:3 0009h
16:9 000Ah
*/

    pos = FIND_STRING(txt, "169, 01, 02, 02", 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, '00', pos)):	//STANDBY
	    {
		OFF[portProjector, 1]
		SEND_COMMAND portProjector, "'^TXT-1,1,Not ready: Standby'"
	    }
	    ACTIVE(FIND_STRING(txt, '01', pos) || FIND_STRING(txt, '02', pos)):	//START UP
	    {
		ON[portProjector, 1]
		SEND_COMMAND portProjector, "'^TXT-1,2,Not ready: Warming'"
	    }
	    ACTIVE(FIND_STRING(txt, '03', pos)):	//POWER ON
	    {
		ON[portProjector, 1]
		SEND_COMMAND portProjector, "'^TXT-1,2,Ready: Power on'"
	    }
	    ACTIVE(FIND_STRING(txt, '04', pos) || FIND_STRING(txt, '05', pos)):	//COOLING
	    {
		OFF[portProjector, 1]
		SEND_COMMAND portProjector, "'^TXT-1,1,Not ready: Cooling'"
	    }
	}
    }
    
    pos = FIND_STRING(txt, "169, 01, 19, 02", 1)
    if(pos)
    {
	//TODO: parse string
	
	/*set_length_array(chrTime, 255)
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
	SEND_COMMAND portProjector, "'^TXT-61,1&2,','Lamp hours: ', chrTime"*/
    }        
    
    pos = FIND_STRING(txt, "169, 00, 48, 02", 1)
    if(pos)
    {
	SELECT
	{
	    ACTIVE(FIND_STRING(txt, "00, 01", pos)):
	    {
		ON[portProjector, 11]
		SonyProjector.IsMute = 1
	    }
	    ACTIVE(FIND_STRING(txt, "00, 00", pos)):
	    {
		OFF[portProjector, 11]
		SonyProjector.IsMute = 0
	    }
	}
    }
}

DEFINE_FUNCTION ExtronLookAllVideoTie(dev device, integer mode)
{
    stack_var integer i
    for(i=1; i<=8; i++)
    {
	ExtronLookForTie(device, i, BOTH)
    }
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
    
    for(i=1; i<=8; i++) // занулить столбец связей
    {
	extronMatrix[i][out] = 0
    }
    
    /*if(out != 0 && in == 0) //признак раскоммутации
    {
	for(i=1; i<=8; i++)
	{
	    extronMatrix[i][out] = 0
	}
    }*/
    
    if(out >= 1 && in >= 1) //признак коммутации
    {
	extronMatrix[in][out] = 1
	
	/*for(i=1; i<=8; i++)
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

DEFINE_FUNCTION DeactivateExtron()					// Interface functions
{
    OFF[portExtronSources, inputsExtron]
    OFF[portExtronReceivers, outputsExtron]
    //selectedInput = 0
    //selectedOutput = 0
    CANCEL_WAIT 'EXTRON_TIMEOUT'
}

DEFINE_FUNCTION SonySRG300HResponseHandler(char txt[])
{
    stack_var integer pos
    pos = FIND_STRING(txt, "144, 80, 2, 255", 1)
    if(pos)
    {
	ON[portCamera, 1]
    }
    else
    {
	pos = FIND_STRING(txt, "144, 80, 3, 255", 1)
	if(pos)
	{
	    OFF[portCamera, 1]
	}
    }
}

DEFINE_FUNCTION ApartPlayerResponseHandler(char txt[])
{
    //
}

DEFINE_FUNCTION UpdateInterfaceCamera(integer state)
{
    if(state == 1)
    {
	ON[portCamera, 1]
    }
    else
    {
	OFF[portCamera, 1]
    }
}

DEFINE_FUNCTION UpdateInterfacePanel()
{
    stack_var integer i
    
    //TEST!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    SamsungPanels[selectedPanel].Mode = HDMI_1
    //
    
    if(selectedPanel > 0 && selectedPanel < 6)
	SEND_COMMAND portSamsungPanel, "'^TXT-20,1&2,',SamsungPanels[selectedPanel].Name"
    
    if(SamsungPanels[selectedPanel].IsConnect == 1) 
    {
	ON[portSamsungPanel, 1]
	SEND_COMMAND portSamsungPanel, "'^TXT-1,2,Ready: Connected'"
	
	if(SamsungPanels[selectedPanel].Power == 1) 
	{
	    ON[portSamsungPanel, 1]
	    SEND_COMMAND portSamsungPanel, "'^TXT-1,2,Ready: Power on'"
	}
	else 
	{
	    OFF[portSamsungPanel, 1]
	    SEND_COMMAND portSamsungPanel, "'^TXT-1,1,Not ready: Power off'"
	}
    }
    else 
    {
	OFF[portSamsungPanel, 1]
	SEND_COMMAND portSamsungPanel, "'^TXT-1,1,Not ready: Not connected'"
    }
    
    for(i=1; i<=6; i++)
    {
	OFF[portSamsungPanel, i+6]
    }
    
    if(SamsungPanels[selectedPanel].Mode == MAGICINFO)
    {
	ON[portSamsungPanel, 7]
    }
    else if(SamsungPanels[selectedPanel].Mode == HDMI_2)
    {
	ON[portSamsungPanel, 12]
    }
    else if(SamsungPanels[selectedPanel].Mode == DISPLAY_PORT)
    {
	ON[portSamsungPanel, 13]
    }
    else if(SamsungPanels[selectedPanel].Mode == HDMI_1)
    {
	switch(SamsungPanels[selectedPanel].ExtronIn)
	{
	    case 1:
		ON[portSamsungPanel, 9]
	    break
	    case 2:
		ON[portSamsungPanel, 8]
	    break
	    case 3:
		ON[portSamsungPanel, 11]
	    break
	    case 4:
		ON[portSamsungPanel, 10]
	    break
	}
    }
}

DEFINE_FUNCTION UpdateInterfaceProjector()
{
    switch(SonyProjector.ExtronIn)
    {
	case 0:
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,Input Cycle'"
	break
	case 1:
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,Laptop (operator)'"
	break
	case 2:
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,IPTV'"
	break
	case 3:
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,Camera'"
	break
	case 4:
	    SEND_COMMAND portProjector, "'^TXT-7,1&2,Laptop (scene)'"
	break
    }
}

DEFINE_START

//Initialize
SamsungPanels[1].DevLink	= dvPANELCoworking
SamsungPanels[1].IP_ADD 	= IP_ADD_COWORKING_PANEL
SamsungPanels[1].IP_PORT	= IP_PORT_PANEL
SamsungPanels[1].IsConnect	= 0
SamsungPanels[1].ExtronIn	= 0
SamsungPanels[1].Mode		= NONE
SamsungPanels[1].Volume		= 0
SamsungPanels[1].Power		= 0
SamsungPanels[1].Name		= 'Panel - Coworking'

SamsungPanels[2].DevLink	= dvPANELCloakroom
SamsungPanels[2].IP_ADD 	= IP_ADD_CLOAKROOM_PANEL
SamsungPanels[2].IP_PORT	= IP_PORT_PANEL
SamsungPanels[2].IsConnect	= 0
SamsungPanels[2].ExtronIn	= 0
SamsungPanels[2].Mode		= NONE
SamsungPanels[2].Volume		= 0
SamsungPanels[2].Power		= 0
SamsungPanels[2].Name		= 'Panel - Cloakroom'

SamsungPanels[3].DevLink	= dvPANELShowDish
SamsungPanels[3].IP_ADD 	= IP_ADD_SHOWDISH_PANEL
SamsungPanels[3].IP_PORT	= IP_PORT_PANEL
SamsungPanels[3].IsConnect	= 0
SamsungPanels[3].ExtronIn	= 0
SamsungPanels[3].Mode		= NONE
SamsungPanels[3].Volume		= 0
SamsungPanels[3].Power		= 0
SamsungPanels[3].Name		= 'Panel - ShowDish'

SamsungPanels[4].DevLink	= dvPANELChildren_1
SamsungPanels[4].IP_ADD 	= IP_ADD_CHILDREN_PANEL_1
SamsungPanels[4].IP_PORT	= IP_PORT_PANEL
SamsungPanels[4].IsConnect	= 0
SamsungPanels[4].ExtronIn	= 0
SamsungPanels[4].Mode		= NONE
SamsungPanels[4].Volume		= 0
SamsungPanels[4].Power		= 0
SamsungPanels[4].Name		= 'Panel - Children 1'

SamsungPanels[5].DevLink	= dvPANELChildren_2
SamsungPanels[5].IP_ADD 	= IP_ADD_CHILDREN_PANEL_2
SamsungPanels[5].IP_PORT	= IP_PORT_PANEL
SamsungPanels[5].IsConnect	= 0
SamsungPanels[5].ExtronIn	= 0
SamsungPanels[5].Mode		= NONE
SamsungPanels[5].Volume		= 0
SamsungPanels[5].Power		= 0
SamsungPanels[5].Name		= 'Panel - Children 2'

SonyProjector.IsMute		= 0
SonyProjector.Aspect		= 0
SonyProjector.ExtronIn		= 0

ApartMixer.VolumeZone1		= 0
ApartMixer.VolumeZone2		= 0
ApartMixer.ChannelName		= 'N'

//TODO: проверить, что не нарушится звук у устройства
create_level portSamsungPanel, 5, SamsungPanels[1].Volume
create_level portFirstFloorVolume, 2, ApartMixer.VolumeZone1
create_level portSecondFloorVolume, 2, ApartMixer.VolumeZone2


//Camera initialize
//CameraAddressSet(dvCAMERA)
//CameraIFClear(dvCAMERA)

TIMELINE_CREATE(TL, TimeArray, 15, TIMELINE_ABSOLUTE, TIMELINE_REPEAT)

DEFINE_EVENT

TIMELINE_EVENT [TL]
{
    stack_var integer i
    
    switch (timeline.sequence)
    {
	case 1:
	{
	    ExtronLookAllVideoTie(dvEXTRON, VIDEO)
	    
	    ApartVolGet(dvAPARTCONCEPT, 1)
	    ApartPlayerCDStatus(dvAPARTPCR3000R)
	    
	    break
	}
	case 2:
	{
	    Sony232QueryPowerState(dvPROJECTOR)
	    
	    //if(SamsungPanels[1].IsConnect == 0)
	    //{
		//IP_CLIENT_OPEN(SamsungPanels[1].DevLink.PORT, SamsungPanels[1].IP_ADD, SamsungPanels[1].IP_PORT, IP_TCP)
	    //}
	    SamsungGetPowerStatus(SamsungPanels[1].DevLink)
	    SamsungGetPowerStatus(SamsungPanels[2].DevLink)
	    
	    break
	}
	case 3:
	{
	    ApartGetSource(dvAPARTCONCEPT)
	    ApartPlayerDABStatus(dvAPARTPCR3000R)
	    
	    break
	}
	case 4:
	{
	    if(IsCameraOnline == 0)
	    {
		CameraAddressSet(dvCAMERA)
		CameraIFClear(dvCAMERA)
	    }	    
	    break
	}
	case 5:
	{
	    SamsungGetPowerStatus(SamsungPanels[3].DevLink)
	    SamsungGetPowerStatus(SamsungPanels[4].DevLink)
	    SamsungGetPowerStatus(SamsungPanels[5].DevLink)
	    
	    break
	}
	case 6:
	{
	    ApartVolGet(dvAPARTCONCEPT, 2)
	    ApartPlayerCDStatus(dvAPARTPCR3000R)
	    
	    break
	}
	case 7:
	{	    
	    Sony232QueryMuteState(dvPROJECTOR)
	    
	    break
	}
	case 8:
	{
	    ApartPlayerDABStatus(dvAPARTPCR3000R)
	    
	    break
	}
	case 9:
	{
	    CameraGetStatusPower(dvCAMERA)
	}
	case 12:
	{
	    Sony232GetHours(dvPROJECTOR)
	    break
	}
    }
}

DATA_EVENT[dvTPIPad]
{
    ONLINE:
    {
	ON[portPingAMX, 1]
    }
    OFFLINE:
    {
	OFF[portPingAMX, 1]
    }
}

DATA_EVENT[dvCAMERA]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	CameraAddressSet(dvCAMERA)
	CameraIFClear(dvCAMERA)
	
	IsCameraOnline = 1
	//ON[portCamera, 1]  it's connect
    }
    OFFLINE:
    {
	IsCameraOnline = 0
	//OFF[portCamera, 1] it's disconnect
	UpdateInterfaceCamera(0)
    }
    ONERROR:
    {
	IsCameraOnline = 0
	UpdateInterfaceCamera(0)
    }    
    STRING:
    {
	dbgResponse[1] = DATA.TEXT	
	IsCameraOnline = 1
	
	SonySRG300HResponseHandler(DATA.TEXT)
    }
}

DATA_EVENT[dvEXTRON]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
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
	
	dbgResponse[2] = DATA.TEXT
	
	isEnd = 0
	posBeg = 0
	posEnd = 0
	
	Extron_response = DATA.TEXT	
	//response ViewTies OutX3 InX2 Vid [Vid| All]
	//response InputToOutput OutX3 InX2 Vid [Vid| All]
	
	lenIN = length_array(Extron_response)
	
	len = length_array(workResponse)
	set_length_array(workResponse, lenIN + len)
	for(i=1; i<=lenIN; i++)
	    workResponse[len+i] = Extron_response[i]
	
	if(lenIN == 24) // пакет при опросе связей для всех 8ти выходов
	{
	    for(i=0; i<=7; i++)
	    {
		set_length_array(itemTie, 3)
		itemTie = mid_string(workResponse, 3*i + 1, 3)
		inTie = atoi(itemTie)
		
		for(j=1; j<=8; j++)
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
		posBeg = find_string(workResponse, 'Out', 1)
		posEnd = find_string(workResponse, 'All', 1)
		
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
	    for(i=1; i<=8; i++)
	    {
		[portExtronSources, i] = extronMatrix[i][selectedOutput]
	    }
	}
	else if(selectedInput != 0 && selectedOutput != 0)
	{
	    for(i=1; i<=8; i++)
	    {
		[portExtronReceivers, i] = extronMatrix[selectedInput][i]
	    }	    
	}	
	
	for(i=1; i<=5; i++)	//panels number: i + 1 - output extron
	{
	    SamsungPanels[i].ExtronIn = 0
	    for(j=1; j<=8; j++)	//matrix row
	    {
		if(extronMatrix[ inputsExtron[j] ][ outputsExtron[i + 1] ] == 1)
		{
		    SamsungPanels[i].ExtronIn = inputsExtron[j]
		    break
		}
	    }
	}
	UpdateInterfacePanel()
	
	for(j=1; j<=8; j++)
	{
	    SonyProjector.ExtronIn = 0
	    if(extronMatrix[ inputsExtron[j] ][outputsExtron[1]] != 0)
	    {
		SonyProjector.ExtronIn = inputsExtron[j]
		UpdateInterfaceProjector()
		break
	    }
	}
	
	/*//update input sources for panels
	if(selectedPanel != 0)
	{
	    for(j=1; j<=4; j++)
	    {
		if(extronMatrix[j][selectedPanel + 1] != 0)
		{
		    SamsungPanels[selectedPanel].ExtronIn = inputsExtron[j]
		    UpdateInterfacePanel()
		    break
		}
	    }
	}
	
	//and projector
	if(selectedZone == 1)
	{
	    for(j=1; j<=4; j++)
	    {
		if(extronMatrix[j][outputsExtron[1]] != 0)
		{
		    SonyProjector.ExtronIn = inputsExtron[j]
		    UpdateInterfaceProjector()
		    break
		}
	    }
	}*/
    }
}

DATA_EVENT[dvPROJECTOR]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 38400, N, 8, 1'"
    }
    STRING:
    {
	dbgResponse[3] = DATA.TEXT
	
	Sony232ResponseHandler(DATA.TEXT)
    }
}

DATA_EVENT[dvPANELCoworking]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 9600, N, 8, 1'"
	
	SamsungPanels[1].IsConnect = 1
	ON[portSamsungPanel, 1]
	SEND_COMMAND portSamsungPanel, "'^TXT-1,2,Ready: Connected'"
    }
    OFFLINE:
    {
	SamsungPanels[1].IsConnect = 0
	OFF[portSamsungPanel, 1]
	SEND_COMMAND portSamsungPanel, "'^TXT-1,1,Not ready: Not connected'"
	//IP_CLIENT_CLOSE(SamsungPanels[1].DevLink.PORT)
    }
    STRING:
    {
	stack_var integer pos
	
	dbgResponse[4] = DATA.TEXT
	SamsungPanels[1].IsConnect = 1
	
	// Find string without checksum
	if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 249, 0", 1))	// button ON
	{
	    SamsungPanels[1].Power = 1
	    ON[portSamsungPanel, 1]
	    SEND_COMMAND portSamsungPanel, "'^TXT-1,2,Ready: Power on'"
	    
	    SamsungGetMute(SamsungPanels[1].DevLink)
	    SamsungGetInput(SamsungPanels[1].DevLink)
	    SamsungGetVolume(SamsungPanels[1].DevLink)	    
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 249, 1", 1))	//button OFF
	{
	    SamsungPanels[1].Power = 0
	    OFF[portSamsungPanel, 1]
	    SEND_COMMAND portSamsungPanel, "'^TXT-1,1,Nor ready: Power off'"
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 20, 33", 1))	//HDMI_1
	{
	    SamsungPanels[1].Mode = HDMI_1
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 20, 35", 1))	//HDMI_2
	{
	    SamsungPanels[1].Mode = HDMI_2
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 20, 96", 1))	//MagicInfo Lite
	{
	    SamsungPanels[1].Mode = MAGICINFO
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 20, 37", 1))	//Display port
	{
	    SamsungPanels[1].Mode = DISPLAY_PORT
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 176, 104", 1))	//button Enter
	{
	    pos = 5
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 19, 0", 1))	//Unmute
	{	
	    //OFF[portSamsung, 24]
	    //samsungMute[1] = 0
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 19, 1", 1))	//Mute
	{
	    //ON[portSamsung, 24]
	    //samsungMute[1] = 1
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 18", 1))	//Volume
	{
	    pos = FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 18", 1)	    
	    SamsungPanels[1].Volume = dbgResponse[4][pos + 6]
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 98, 0", 1))	//Volume Inc
	{
	    //запрос обновленного звука через команду
	    SamsungGetVolume(SamsungPanels[1].DevLink)
	    //samsungVolume[1] = samsungVolume[1] + 1
	}
	else if(FIND_STRING(dbgResponse[4], "170, 255, 1, 3, 65, 98, 1", 1))	//Volume Dec
	{
	    //запрос обновленного звука через команду
	    SamsungGetVolume(SamsungPanels[1].DevLink)
	    //samsungVolume[1] = samsungVolume[1] - 1
	}
	
	if(selectedPanel == 1)
	{
	    //volume - autoupdate
	    //extron commutation - extron parser
	    //mode - UpdateInterfacePanel
	}
    }
    ONERROR:
    {	
	//stack_var long number
	//number = DATA.NUMBER
	//SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
	
	SamsungPanels[1].IsConnect = 0
	OFF[portSamsungPanel, 1]
	SEND_COMMAND portSamsungPanel, "'^TXT-1,1,Not ready: Not connected'"
	//IP_CLIENT_CLOSE(SamsungPanels[1].DevLink.PORT)
    }
}

DATA_EVENT[dvAPARTCONCEPT]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 19200, N, 8, 1'"	
	ApartSetMultiZone(dvAPARTCONCEPT, 1)
	ApartSetZoneLink(dvAPARTCONCEPT, 0)
    }   
    STRING:
    {
	stack_var char volumeApart[3]
	stack_var integer len
	stack_var integer posApart
	stack_var integer posApartOFF
	stack_var integer tempVolume
	
	dbgResponse[9] = DATA.TEXT
	
	posApart = FIND_STRING(dbgResponse[9], "'MSCLVL ZONE'", 1)
	if(posApart)
	{
	    //GET MSCLVL ZONE2\nMSCLVL -73
	    //GET MSCLVL ZONE2\nMSCLVL ZONE2 -10
	    SELECT
	    {
		ACTIVE(FIND_STRING(dbgResponse[9], 'ZONE1', posApart)):
		{
		    posApartOFF = FIND_STRING(dbgResponse[9], "'OFF'", 1)
		    if(posApartOFF)
		    {
			ApartMixer.VolumeZone1 = 80
			//ON[portFirstFloorVolume, 4]
		    }
		    else
		    {
			len = length_array(dbgResponse[9])
			set_length_array(volumeApart, 3)
			volumeApart = mid_string(dbgResponse[9], posApart + 28, 2)
			
			ApartMixer.VolumeZone1 = atoi(volumeApart)
			//OFF[portFirstFloorVolume, 4]
		    }
		    send_level portFirstFloorVolume, 2, ApartMixer.VolumeZone1
		}
		ACTIVE(FIND_STRING(dbgResponse[9], 'ZONE2', posApart)):
		{
		    posApartOFF = FIND_STRING(dbgResponse[9], "'OFF'", 1)
		    if(posApartOFF)
		    {
			ApartMixer.VolumeZone2 = 80
			//ON[portSecondFloorVolume, 4]
		    }
		    else
		    {
			len = length_array(dbgResponse[9])
			set_length_array(volumeApart, 3)
			volumeApart = mid_string(dbgResponse[9], posApart + 28, 2)
			
			ApartMixer.VolumeZone2 = atoi(volumeApart)
			//OFF[portSecondFloorVolume, 4]			
		    }
		    send_level portSecondFloorVolume, 2, ApartMixer.VolumeZone2
		}
	    }
	}
	
	posApart = FIND_STRING(dbgResponse[9], "'SELECT'", 1)
	//GET SELECT\nSELECT A
	if(posApart)
	{
	    posApart = FIND_STRING(dbgResponse[9], "'SELECT A'", posApart + 5)
	    if(posApart)
	    {
		ApartMixer.ChannelName = 'A'
		ON[portFirstFloorVolume, 5]
		OFF[portFirstFloorVolume, 6]
	    }
	    else
	    {
		posApart = FIND_STRING(dbgResponse[9], "'SELECT B'", posApart + 5)
		if(posApart)
		{
		    ApartMixer.ChannelName = 'B'
		    OFF[portFirstFloorVolume, 5]
		    ON[portFirstFloorVolume, 6]
		}
	    }
	    
	    /*len = length_array(dbgResponse[9])
	    set_length_array(volume, 1)
	    volume = mid_string(dbgResponse[9], posApart + 15, 1)//posApart + 10)
	    
	    if(volume[1] == 'A')
	    {
		ApartMixer.ChannelName = 'A'
		ON[portFirstFloorVolume, 5]
		OFF[portFirstFloorVolume, 6]
	    }
	    else if(volume[1] == 'B')
	    {
		ApartMixer.ChannelName = 'B'
		OFF[portFirstFloorVolume, 5]
		ON[portFirstFloorVolume, 6]
	    }*/
	}
    }
}

DATA_EVENT[dvAPARTPCR3000R]
{
    ONLINE:
    {
	SEND_COMMAND DATA.DEVICE, "'SET BAUD 38400, N, 8, 1'"
    }   
    STRING:
    {
	stack_var char Player_response[1024]
	stack_var char reply[80]
	stack_var integer lenINPlayer
	stack_var integer lenPlayer
	stack_var integer posPlayerBeg
	stack_var integer posPlayerEnd
	stack_var integer posPlayer
	stack_var integer i
	
	dbgResponse[10] = DATA.TEXT	
	Player_response = DATA.TEXT
	
	lenINPlayer = length_array(Player_response)
	
	lenPlayer = length_array(workPlayerResponse)
	set_length_array(workPlayerResponse, lenINPlayer + lenPlayer)
	for(i=1; i<=lenINPlayer; i++)
	    workPlayerResponse[lenPlayer + i] = Player_response[i]
	
	posPlayer = FIND_STRING(workPlayerResponse, "'DVD:'", 1)
	if(posPlayer)
	{
	    set_length_array(reply, 80)
	    posPlayerEnd = FIND_STRING(workPlayerResponse, "'PCR3000R'", posPlayer)
	    reply = mid_string(workPlayerResponse, posPlayer, posPlayerEnd - posPlayer)
	    
	    SEND_COMMAND portPlayerCD, "'^TXT-40,1&2,', reply"
	}
	posPlayer = FIND_STRING(workPlayerResponse, "'MP3:'", 1)
	if(posPlayer)
	{
	    set_length_array(reply, 80)
	    posPlayerEnd = FIND_STRING(workPlayerResponse, "'PCR3000R'", posPlayer)
	    reply = mid_string(workPlayerResponse, posPlayer, posPlayerEnd - posPlayer)
	    
	    SEND_COMMAND portPlayerCD, "'^TXT-40,1&2,', reply"
	}
	posPlayer = FIND_STRING(workPlayerResponse, "'Stop'", 1)
	if(posPlayer)
	{	    
	    SEND_COMMAND portPlayerCD, "'^TXT-1,1&2, Status: Stop'"
	    CLEAR_BUFFER workPlayerResponse
	}
	posPlayer = FIND_STRING(workPlayerResponse, "'Play'", 1)
	if(posPlayer)
	{	    
	    SEND_COMMAND portPlayerCD, "'^TXT-1,1&2, Status: Play/Pause'"
	    CLEAR_BUFFER workPlayerResponse
	}
	
	if(FIND_STRING(dbgResponse[10], "'CD'", 1))
	{
	    if(FIND_STRING(dbgResponse[10], "'CD Off'", 1))
	    {	    
		SEND_COMMAND portPlayerCD, "'^TXT-1,1&2,CD Player Off'"
	    }
	    else if(FIND_STRING(dbgResponse[10], "'CD On'", 1))
	    {	    
		SEND_COMMAND portPlayerCD, "'^TXT-1,1&2,CD Player On'"
	    }
	    else if(FIND_STRING(dbgResponse[10], "'CD In Standby'", 1))
	    {	    
		SEND_COMMAND portPlayerCD, "'^TXT-1,1&2,CD Player in Standby'"
	    }
	    /*else
	    {
		set_length_array(reply, 80)
		reply = mid_string(dbgResponse[10], 1, 80)
		SEND_COMMAND portPlayerCD, "'^TXT-1,1&2,', reply"
	    }*/
	}
	if(FIND_STRING(dbgResponse[10], "'FM'", 1))
	{
	    if(FIND_STRING(dbgResponse[10], "'FM/'", 1))
	    {
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2, '"
	    }
	    else
	    {
		set_length_array(reply, 80)
		reply = mid_string(dbgResponse[10], 1, 80)
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2,', reply"
	    }
	}
	else if(FIND_STRING(dbgResponse[10], "'DAB'", 1))
	{
	    if(FIND_STRING(dbgResponse[10], "'DAB In Standby'", 1))
	    {
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2,FM Player in Standby'"
	    }
	    else if(FIND_STRING(dbgResponse[10], "'DAB On'", 1))
	    {	
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2,FM Player On'"
	    }
	    else if(FIND_STRING(dbgResponse[10], "'DAB Off'", 1))
	    {	
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2,FM Player Off'"
	    }
	    else
	    {
		SEND_COMMAND portPlayerFM, "'^TXT-1,1&2, '"
	    }
	}	
    }
}

//BUTTON

BUTTON_EVENT[portSettingsDevice, 1]
BUTTON_EVENT[portSettingsDevice, 2]
{
    push:
    {
	selectedZone = 0
	selectedPanel = 0
    }
}

BUTTON_EVENT[portZoneSelector, 5]	//scene - projector
{
    push:
    {
	selectedZone = 1
	selectedPanel = 0
	
	UpdateInterfaceProjector()
    }
}

BUTTON_EVENT[portZoneSelector, 4]	//co-working
BUTTON_EVENT[portZoneSelector, 3]	//cloakroom
BUTTON_EVENT[portZoneSelector, 6]	//show dish
BUTTON_EVENT[portZoneSelector, 1]	//children's 1
BUTTON_EVENT[portZoneSelector, 2]	//children's 2
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 4:
	    {
		selectedPanel = 1
		selectedZone = 2
		break
	    }
	    case 3:
	    {
		selectedPanel = 2
		selectedZone = 3
		break
	    }
	    case 6:
	    {
		selectedPanel = 3
		selectedZone = 4
		break
	    }
	    case 1:
	    {
		selectedPanel = 4
		selectedZone = 5
		break	    
	    }
	    case 2:
	    {
		selectedPanel = 5
		selectedZone = 6
		break
	    }
	}
	
	UpdateInterfacePanel()
    }
}

BUTTON_EVENT[portCamera, 11]		//camera up
{
    push:
    {
	CameraSpeed = 1
	CameraUp(dvCAMERA, CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > MAX_PAN_SPEED)
	{
	    CameraSpeed = MAX_PAN_SPEED
	}
	CameraUp(dvCAMERA, CameraSpeed)
    }
    release:
    {
	CameraStopPanTilt(dvCAMERA, CameraSpeed)
    }
}

BUTTON_EVENT[portCamera, 12]		//camera right
{
    push:
    {
	CameraSpeed = 1
	CameraRight(dvCAMERA, CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > MAX_PAN_SPEED)
	{
	    CameraSpeed = MAX_PAN_SPEED
	}
	CameraRight(dvCAMERA, CameraSpeed)
    }
    release:
    {
	CameraStopPanTilt(dvCAMERA, CameraSpeed)
    }
}

BUTTON_EVENT[portCamera, 13]		//camera down
{
    push:
    {
	CameraSpeed = 1
	CameraDown(dvCAMERA, CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > MAX_PAN_SPEED)
	{
	    CameraSpeed = MAX_PAN_SPEED
	}
	CameraDown(dvCAMERA, CameraSpeed)
    }
    release:
    {
	CameraStopPanTilt(dvCAMERA, CameraSpeed)
    }
}

BUTTON_EVENT[portCamera, 14]		//camera left
{
    push:
    {
	CameraSpeed = 1
	CameraLeft(dvCAMERA, CameraSpeed)
    }
    hold [2,repeat]:
    {
	CameraSpeed = CameraSpeed + 1
	if(CameraSpeed > MAX_PAN_SPEED)
	{
	    CameraSpeed = MAX_PAN_SPEED
	}
	CameraLeft(dvCAMERA, CameraSpeed)
    }
    release:
    {
	CameraStopPanTilt(dvCAMERA, CameraSpeed)
    }
}

BUTTON_EVENT[portCamera, 21]		//camera stop
{
    push:
    {
	CameraSpeed = 1
	CameraStopPanTilt(dvCAMERA, CameraSpeed)
    }
}

BUTTON_EVENT[portCamera, 19]		//camera zoom -
{
    push:
    {
	CameraZSpeed = 0
	CameraWide(dvCAMERA, CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > MAX_PAN_ZOOM)
	{
	    CameraZSpeed = MAX_PAN_ZOOM
	}
	CameraWide(dvCAMERA, CameraZSpeed)
    }
    release:
    {
	CameraZoomStop(dvCAMERA)
    }
}

BUTTON_EVENT[portCamera, 17]		//camera zoom +
{
    push:
    {
	CameraZSpeed = 0
	CameraTele(dvCAMERA, CameraZSpeed)
    }
    hold [2,repeat]:
    {
	CameraZSpeed = CameraZSpeed + 1
	if(CameraZSpeed > MAX_PAN_ZOOM)
	{
	    CameraZSpeed = MAX_PAN_ZOOM
	}
	CameraTele(dvCAMERA, CameraZSpeed)
    }
    release:
    {
	CameraZoomStop(dvCAMERA)
    }
}

BUTTON_EVENT[portCamera, 16]		//camera near
{
    push:
    {
	CameraFSpeed = 1
	CameraNear(dvCAMERA, CameraFSpeed)
    }
    hold [2,repeat]:
    {
	CameraFSpeed = CameraFSpeed + 1
	if(CameraFSpeed > MAX_PAN_FOCUS)
	{
	    CameraFSpeed = MAX_PAN_FOCUS
	}
	CameraNear(dvCAMERA, CameraFSpeed)
    }
    release:
    {
	CameraFocusStop(dvCAMERA)
    }
}

BUTTON_EVENT[portCamera, 15]		//camera far
{
    push:
    {
	CameraFSpeed = 1
	CameraFar(dvCAMERA, CameraFSpeed)
    }
    hold [2,repeat]:
    {
	CameraFSpeed = CameraFSpeed + 1
	if(CameraFSpeed > MAX_PAN_FOCUS)
	{
	    CameraFSpeed = MAX_PAN_FOCUS
	}
	CameraFar(dvCAMERA, CameraFSpeed)
    }
    release:
    {
	CameraFocusStop(dvCAMERA)
    }
}

BUTTON_EVENT[portCamera, 2]		//camera off
{
    push:
    {
	CameraPowerOff(dvCAMERA)
    }
}

BUTTON_EVENT[portCamera, 3]		//camera on
{
    push:
    {
	CameraPowerOn(dvCAMERA)
    }
}

BUTTON_EVENT[portProjector, 3]		// Projector ON OFF
BUTTON_EVENT[portProjector, 4]
{
    push:
    {
	if(BUTTON.INPUT.CHANNEL == 3)
	    Sony232PowerToggle(dvPROJECTOR, 0)
	if(BUTTON.INPUT.CHANNEL == 4)
	    Sony232PowerToggle(dvPROJECTOR, 1)
    }
}

BUTTON_EVENT[portProjector, 7]		// Projector Source
{
    push:
    {
	SonyProjector.ExtronIn = SonyProjector.ExtronIn + 1
	if (SonyProjector.ExtronIn == 5) SonyProjector.ExtronIn = 1
	ExtronTieInputToOutput(dvEXTRON, inputsExtron[SonyProjector.ExtronIn], outputsExtron[1], BOTH)
	switch(SonyProjector.ExtronIn)
	{
	    case 1:
	    {
		//update interface
	    }
	    case 2:
	    {
		//
	    }
	    case 3:
	    {
		//
	    }
	    case 4:
	    {
		//
	    }
	}
    }
}

BUTTON_EVENT[portProjector, 11]		// Projector Mute
{
    push:
    {
	Sony232MuteToggle(dvPROJECTOR, !SonyProjector.IsMute)
    }
}

BUTTON_EVENT[portProjector, 5]		// Projector Aspect
{
    push:
    {
	SonyProjector.Aspect = SonyProjector.Aspect + 1
	if (SonyProjector.Aspect == 8) SonyProjector.Aspect = 1
	Sony232AspectToogle(dvPROJECTOR, SonyProjector.Aspect)
	
	//TODO: может быть, и не отправлять надписи?
	switch(SonyProjector.Aspect)
	{
	    case 1:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,FULL'"
	    }
	    case 2:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,NORMAL'"
	    }
	    case 3:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,ZOOM'"
	    }
	    case 4:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,FULL 1'"
	    }
	    case 5:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,FULL 2'"
	    }
	    case 6:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,4:3'"
	    }
	    case 7:
	    {
		SEND_COMMAND portProjector, "'^TXT-5,1&2,16;9'"
	    }
	}
    }
}

BUTTON_EVENT[portProjector, 8]		// Projector Screen down
BUTTON_EVENT[portProjector, 9]		// Projector Screen stop
BUTTON_EVENT[portProjector, 10]		// Projector Screen up
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 8:
		ON[dvRelay, 1]
	    break
	    case 9:
		ON[dvRelay, 2]
	    break
	    case 10:
		ON[dvRelay, 3]
	    break
	}
    }
    release:
    {    
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 8:
		wait 700 { OFF[dvRelay, 1] }
	    break
	    case 9:
		wait 10 { OFF[dvRelay, 2] }
	    break
	    case 10:
		wait 700 { OFF[dvRelay, 3] }
	    break
	}
    }
}

BUTTON_EVENT[portExtronSources, inputsExtron]	// Select inputs Extron
{
    push:
    {
	stack_var integer i
	
	DeactivateExtron()
	selectedOutput = 0
	selectedInput = BUTTON.INPUT.CHANNEL
	ON[portExtronSources, BUTTON.INPUT.CHANNEL]
	
	// Switching on outputs for this input
	for(i=1; i<=8; i++)
	{
	    if(extronMatrix[selectedInput][i] != 0)
	    {
		ON[portExtronReceivers, i]
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

BUTTON_EVENT[portExtronReceivers, outputsExtron]	// Select outputs Extron
{
    push:
    {
	stack_var integer i
	
	selectedOutput = BUTTON.INPUT.CHANNEL
	
	if(selectedInput != 0)
	{	
	    if(extronMatrix[selectedInput][selectedOutput] == 1)	//commutation - yes
	    {
		// Раскоммутировать
		ExtronTieInputToOutput(dvEXTRON, 0, selectedOutput, BOTH)
		
		//TODO: Проверять! 
		OFF[portExtronReceivers, selectedOutput]
		extronMatrix[selectedInput][selectedOutput] = 0
	    }
	    else if(extronMatrix[selectedInput][selectedOutput] == 0)	//commutation - no
	    {
		// Коммутировать
		ExtronTieInputToOutput(dvEXTRON, selectedInput, selectedOutput, BOTH)
		
		// Обнуление столбца матрицы при выполнении новой коммутации -
		// проверить на практике, это должно выполнятся при разборе callback от ExtronTieInputToOutput
		
		//TODO: Проверять! 
		ON[portExtronReceivers, selectedOutput]
		extronMatrix[selectedInput][selectedOutput] = 1
	    }	    
	}
	else
	{
	    DeactivateExtron()
	    // При опросе только одного входа, в ответе потом сложно понять к какому выходу присланный вход относится.
	    // Хотя можно по selectedOutput установить связь, но это ненадежно
	    // ExtronSMXLookForTie(dvRS_SMX, selectedOutput-20, VIDEO)
	    
	    ON[portExtronReceivers, selectedOutput]
	    
	    //TODO: Проверять!	    
	    for(i=1; i<=8; i++)
	    {
		[portExtronSources, i] = extronMatrix[i][selectedOutput]	    
	    }	
	    //ExtronSMXLookAllVideoTie(dvRS_SMX, VIDEO)	    	    
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

BUTTON_EVENT[portSamsungPanel, 2]	//samsung panel on
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungPowerToogle2(SamsungPanels[selectedPanel].DevLink, 1)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 3]	//samsung panel off
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungPowerToogle2(SamsungPanels[selectedPanel].DevLink, 0)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 4]	//samsung panel volume-
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    //Проверить, можно ли вызвать функцию?
	    //send_string SamsungPanels[selectedPanel].DevLink, "$AA, $62, $01, $01, $01, $65"
	    SamsungDecVolume(SamsungPanels[selectedPanel].DevLink, 1)
	}	
    }
}

BUTTON_EVENT[portSamsungPanel, 6]	//samsung panel volume +
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    //Проверить, можно ли вызвать функцию?
	    //send_string SamsungPanels[selectedPanel].DevLink, "$AA, $62, $01, $01, $00, $64"
	    SamsungIncVolume(SamsungPanels[selectedPanel].DevLink, 1)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 7]	//samsung panel SOURCE = MAGICINFO
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, MAGICINFO)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 8]	//samsung panel SOURCE = IPTV
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, HDMI_1)
	    ExtronTieInputToOutput(dvEXTRON, inputsExtron[2], outputsExtron[selectedPanel + 1], BOTH)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 9]	//samsung panel SOURCE = LAPTOP 1
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, HDMI_1)
	    ExtronTieInputToOutput(dvEXTRON, inputsExtron[1], outputsExtron[selectedPanel + 1], BOTH)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 10]	//samsung panel SOURCE = LAPTOP 2
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, HDMI_1)
	    ExtronTieInputToOutput(dvEXTRON, inputsExtron[4], outputsExtron[selectedPanel + 1], BOTH)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 11]	//samsung panel SOURCE = CAMERA
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, HDMI_1)
	    ExtronTieInputToOutput(dvEXTRON, inputsExtron[3], outputsExtron[selectedPanel + 1], BOTH)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 12]	//samsung panel SOURCE = IPTV local
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, HDMI_2)
	}
    }
}

BUTTON_EVENT[portSamsungPanel, 13]	//samsung panel SOURCE = TV 
{
    push:
    {
	if(selectedPanel > 0 && selectedPanel < 6)
	{
	    SamsungSelectSource(SamsungPanels[selectedPanel].DevLink, DISPLAY_PORT)
	}
    }
}

BUTTON_EVENT[portPlayerCD, 2]		//apart player CD
BUTTON_EVENT[portPlayerCD, 3]
BUTTON_EVENT[portPlayerCD, 4]
BUTTON_EVENT[portPlayerCD, 5]
BUTTON_EVENT[portPlayerCD, 6]
BUTTON_EVENT[portPlayerCD, 7]
BUTTON_EVENT[portPlayerCD, 8]
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 2:
		ApartPlayerCDOn(dvAPARTPCR3000R)
	    break
	    case 3:
		ApartPlayerCDOff(dvAPARTPCR3000R)
	    break
	    case 4:
		ApartPlayerCDSkipDown(dvAPARTPCR3000R)
	    break
	    case 5:
		ApartPlayerCDSkipUp(dvAPARTPCR3000R)
	    break
	    case 6:
		ApartPlayerCDStop(dvAPARTPCR3000R)
	    break
	    case 7:
		ApartPlayerCDPlay(dvAPARTPCR3000R)
	    break
	    case 8:
		ApartPlayerCDPause(dvAPARTPCR3000R)
	    break
	}
	
	ApartPlayerCDStatus(dvAPARTPCR3000R)
    }
}

BUTTON_EVENT[portPlayerFM, 2]		//apart player FM
BUTTON_EVENT[portPlayerFM, 3]
BUTTON_EVENT[portPlayerFM, 4]
BUTTON_EVENT[portPlayerFM, 11]
BUTTON_EVENT[portPlayerFM, 12]
BUTTON_EVENT[portPlayerFM, 13]
BUTTON_EVENT[portPlayerFM, 14]
BUTTON_EVENT[portPlayerFM, 15]
BUTTON_EVENT[portPlayerFM, 16]
BUTTON_EVENT[portPlayerFM, 17]
BUTTON_EVENT[portPlayerFM, 18]
BUTTON_EVENT[portPlayerFM, 19]
BUTTON_EVENT[portPlayerFM, 20]
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)
	{
	    case 2:
		ApartPlayerDABOn(dvAPARTPCR3000R)
	    break
	    case 3:
		ApartPlayerDABOff(dvAPARTPCR3000R)
	    break
	    case 4:
		ApartPlayerBAND(dvAPARTPCR3000R)
	    break
	}
	
	if(BUTTON.INPUT.CHANNEL >= 11 && BUTTON.INPUT.CHANNEL <= 20)
	{
	    ApartPlayerPreset(dvAPARTPCR3000R, BUTTON.INPUT.CHANNEL - 10)	    
	}
	
	ApartPlayerDABStatus(dvAPARTPCR3000R)
    }
}

BUTTON_EVENT[portFirstFloorVolume, 1]
BUTTON_EVENT[portFirstFloorVolume, 3]
BUTTON_EVENT[portFirstFloorVolume, 4]
BUTTON_EVENT[portFirstFloorVolume, 5]
BUTTON_EVENT[portFirstFloorVolume, 6]	//apart concept: select source and volume level for zone 1 
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)	
	{
	    case 1://-
		ApartVolDown(dvAPARTCONCEPT, 1)
		//ApartVolGet(dvAPARTCONCEPT, 1)
	    break
	    case 3://+
		ApartVolUp(dvAPARTCONCEPT, 1)
		//ApartVolGet(dvAPARTCONCEPT, 1)
	    break
	    case 4://mute
		ApartVolSet(dvAPARTCONCEPT, -80, 1)
		//ApartVolGet(dvAPARTCONCEPT, 1)
	    break
	    case 5:
		ApartSetSource(dvAPARTCONCEPT, 1)//channel A
	    break
	    case 6:
		ApartSetSource(dvAPARTCONCEPT, 2)//channel B
	    break
	}
    }
    hold[3, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)	
	{
	    case 1://-
		ApartVolDown(dvAPARTCONCEPT, 1)
		//ApartVolGet(dvAPARTCONCEPT, 1)
	    break
	    case 3://+
		ApartVolUp(dvAPARTCONCEPT, 1)
		//ApartVolGet(dvAPARTCONCEPT, 1)
	    break
	}
    }
}

BUTTON_EVENT[portSecondFloorVolume, 1]
BUTTON_EVENT[portSecondFloorVolume, 3]
BUTTON_EVENT[portSecondFloorVolume, 4]	//apart concept: volume level for zone 2
{
    push:
    {
	switch(BUTTON.INPUT.CHANNEL)	
	{
	    case 1://-
		ApartVolDown(dvAPARTCONCEPT, 2)
		//ApartVolGet(dvAPARTCONCEPT, 2)
	    break
	    case 3://+
		ApartVolUp(dvAPARTCONCEPT, 2)
		//ApartVolGet(dvAPARTCONCEPT, 2)
	    break
	    case 4://mute
		ApartVolSet(dvAPARTCONCEPT, -80, 2)
		//ApartVolGet(dvAPARTCONCEPT, 2)
	    break
	}
    }
    hold[3, repeat]:
    {
	switch(BUTTON.INPUT.CHANNEL)	
	{
	    case 1://-
		ApartVolDown(dvAPARTCONCEPT, 2)
		//ApartVolGet(dvAPARTCONCEPT, 2)
	    break
	    case 3://+
		ApartVolUp(dvAPARTCONCEPT, 2)
		//ApartVolGet(dvAPARTCONCEPT, 2)
	    break
	}
    }
}

DEFINE_PROGRAM
//send_level portSamsungPanel, 5, SamsungPanels[selectedPanel].Volume
//send_level portFirstFloorVolume, 2, ApartMixer.VolumeZone1
//send_level portSecondFloorVolume, 2, ApartMixer.VolumeZone2