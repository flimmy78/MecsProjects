PROGRAM_NAME='CameraSonySRG300H'

DEFINE_VARIABLE

// sony 
volatile char curCameraID  = 1
volatile integer CameraPreviewFunc
volatile char CameraSpeed  = 5
volatile char CameraZSpeed = 2
volatile char CameraFSpeed = 2

volatile integer IsCameraOnline	=	0

DEFINE_FUNCTION CameraAddressSet(dev dv)					// Camera control
{
    send_string dv, "$88, $30, $01, $FF"
}

DEFINE_FUNCTION CameraIFClear(dev dv)
{
    send_string dv, "$88, $01, $00, $01, $FF"
}

DEFINE_FUNCTION CameraMemorySet(dev dv, char chan)
{
    send_string dv, "$80 + curCameraID, $01, $04, $3F, $01, chan, $FF"
}

DEFINE_FUNCTION CameraMemoryRecall(dev dv, char chan)
{
    send_string dv, "$80 + curCameraID, $01, $04, $3F, $02, chan, $FF"
}

DEFINE_FUNCTION CameraUp(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $01, $FF"
    //8x 01 06 01 VV WW 03 01 FF
}

DEFINE_FUNCTION CameraDown(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $02, $FF"
    //8x 01 06 01 VV WW 03 02 FF
}

DEFINE_FUNCTION CameraLeft(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $06, $01, speed, speed, $01, $03, $FF"
    //8x 01 06 01 VV WW 01 03 FF
}

DEFINE_FUNCTION CameraRight(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $06, $01, speed, speed, $02, $03, $FF"
    //8x 01 06 01 VV WW 02 03 FF
}

DEFINE_FUNCTION CameraStopPanTilt(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $06, $01, speed, speed, $03, $03, $FF"
}

DEFINE_FUNCTION CameraTele(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $04, $07, $20+speed, $FF"
}

DEFINE_FUNCTION CameraWide(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $04, $07, $30+speed, $FF"
}

DEFINE_FUNCTION CameraZoomStop(dev dv)
{
    send_string dv, "$80 + curCameraID, $01, $04, $07, $00, $FF"
}

DEFINE_FUNCTION CameraFar(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $04, $08, $20+speed, $FF"
}

DEFINE_FUNCTION CameraNear(dev dv, char speed)
{
    send_string dv, "$80 + curCameraID, $01, $04, $08, $30+speed, $FF"
}

DEFINE_FUNCTION CameraFocusStop(dev dv)
{
    send_string dv, "$80 + curCameraID, $01, $04, $08, $00, $FF"
}

DEFINE_FUNCTION CameraBackLight(dev dv, char OnOff)
{
    if(OnOff == 1)
    {
	send_string dv, "$80 + curCameraID, $01, $04, $33, $02, $FF"
    }
    else
    {
	send_string dv, "$80 + curCameraID, $01, $04, $33, $03, $FF"
    }
}

DEFINE_FUNCTION CameraPowerOn(dev dv)
{
    send_string dv, "$80 + curCameraID, $01, $04, $00, $02, $FF"
    //8x 01 04 00 02 FF
}

DEFINE_FUNCTION CameraPowerOff(dev dv)
{
    send_string dv, "$80 + curCameraID, $01, $04, $00, $03, $FF"
    //8x 01 04 00 03 FF
}

DEFINE_FUNCTION CameraGetStatusPower(dev dv)
{
    send_string dv, "$80 + curCameraID, $09, $04, $00, $FF"
}