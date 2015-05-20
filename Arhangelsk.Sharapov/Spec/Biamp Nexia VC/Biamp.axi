PROGRAM_NAME='Biamp'


// Command for Biamp

DEFINE_FUNCTION BiampSetVolumeInput(dev dv, integer device, integer instance, integer input, integer volume)
{    
    //"'SET 1 FDRLVL 6 3 -50', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(input),' ', itoa(volume), $0A"
}

DEFINE_FUNCTION BiampGetVolumeInput(dev dv, integer device, integer instance, integer input)
{    
    //"'GETL 1 FDRLVL 6 3', $0A"
    SEND_STRING dv, "'GETL ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(input), $0A"
}

DEFINE_FUNCTION BiampIncVolumeInput(dev dv, integer device, integer instance, integer input)
{
    SEND_STRING dv, "'INC ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(input), ' 1', $0A"
}

DEFINE_FUNCTION BiampDecVolumeInput(dev dv, integer device, integer instance, integer input)
{
    SEND_STRING dv, "'DEC ', itoa(device), ' FDRLVL ', itoa(instance),' ', itoa(input), ' 1', $0A"
}

DEFINE_FUNCTION BiampSetMuteInput(dev dv, integer device, integer instance, integer input, integer mode)
{
    //"'SET 1 FDRMUTE 6 3 0', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' FDRMUTE ', itoa(instance),' ', itoa(input),' ', itoa(mode), $0A"
}

DEFINE_FUNCTION BiampSetMuteInputMixer(dev dv, integer device, integer instance, integer input, integer mode)
{
    //"'SET 1 FDRMUTE 6 3 0', $0A"
    SEND_STRING dv, "'SET ', itoa(device), ' SMMUTEIN ', itoa(instance),' ', itoa(input),' ', itoa(mode), $0A"
}

DEFINE_FUNCTION BiampVolumeSetPercent(integer number)
{
    //stack_var result
    //stack_var result2
    //result = atoi(volumesBiamp[1])
    //result2 = (result*100)/maxVolumeBiamp
    //SEND_COMMAND portBiamp, "'^TXT-',itoa(number),',1&2,',itoa(result2),'%'"    
}

DEFINE_FUNCTION BiampVolumeSetPercent2(integer number)
{
    //stack_var result
    //stack_var result2
    //result = atoi(volumesBiamp[number])
    //result2 = (result*100)/maxVolumeBiamp
    //SEND_COMMAND portBiamp, "'^TXT-',itoa(number),',1&2,',itoa(result2),'%'"
}

DEFINE_FUNCTION BiampGetMuteInput(dev dv, integer device, integer instance, integer input)
{
    SEND_STRING dv, "'GET ', itoa(device), ' FDRMUTE ', itoa(instance),' ', itoa(input), $0A"
    /*switch(chan)
    {
	case 1:
	{
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 1)
	    //pressedVolumeKey = 31
	    //volumeTest = 1
	}
	case 2:
	{
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 2)
	    //pressedVolumeKey = 3	    
	    //volumeTest = 2
	}
	case 3:
	{
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 6)
	    //pressedVolumeKey = 3
	    //volumeTest = 3
	}
	case 4:
	{
	    //pressedVolumeKey = 4
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 1)
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 2)
	    //BiampGetVolumeInput(dvBiamp, 1, IDVolume, 6)
	}
    }*/
}


