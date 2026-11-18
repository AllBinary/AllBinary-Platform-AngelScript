/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware.windows

class WindowsHardware : JObjectBase, HardwareInterface
{
    

    WindowsHardware@ jinit_WindowsHardware()
    {
        return this;
    }
    

    MediaInterface@ getMultimedia(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    BridgeInterface@ getBridge(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    CpuInterface@ getCpu(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    EthernetInterface@ getEthernet(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    FireWireInterface@ getFireWire(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    HardDriveControllerInterface@ getHardDriveController(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    HardDriveInterface@ getHardDrive(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    MachineAccessControlAddressInterface@ getMachineAccessControlAddress(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    MonitorInterface@ getMonitor(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    UsbInterface@ getUsb(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    VideoInterface@ getVideo(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    HardwareComponentInterface@ getComponent(int index)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    string toString()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    bool compareTo(HardwareInterface@ hardwareInterface)
    {
        return true;
    }
    

    ABHashtable@ difference(HardwareInterface@ hardwareInterface)
    {
        return StdUtil::getInstance().NULL_TABLE;
    }
}

