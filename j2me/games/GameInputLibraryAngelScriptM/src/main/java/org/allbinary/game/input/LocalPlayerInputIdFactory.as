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
// package org.allbinary.game.input

class LocalPlayerInputIdFactory : JObjectBase
{
    LogUtil@ logUtil;
    int MAX_NUMBER_OF_PLAYERS;
    int MAX_FAST_DEVICEID_LocalPlayerInputIdFactory;
    int[]@ deviceIdToplayerId_LocalPlayerInputIdFactory;
    int[]@ playerIdToDeviceId_LocalPlayerInputIdFactory;
    bool[]@ playersInPlay_LocalPlayerInputIdFactory;
    int totalDevicesMapped_LocalPlayerInputIdFactory;

    // Java field initializers run after the super constructor
    void jfields_LocalPlayerInputIdFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    this.MAX_NUMBER_OF_PLAYERS = 6;
    this.MAX_FAST_DEVICEID_LocalPlayerInputIdFactory = 65;
    @this.deviceIdToplayerId_LocalPlayerInputIdFactory = array<int>(this.MAX_FAST_DEVICEID_LocalPlayerInputIdFactory);
    @this.playerIdToDeviceId_LocalPlayerInputIdFactory = array<int>(this.MAX_NUMBER_OF_PLAYERS);
    @this.playersInPlay_LocalPlayerInputIdFactory = array<bool>(this.MAX_NUMBER_OF_PLAYERS);
    this.totalDevicesMapped_LocalPlayerInputIdFactory = 0;
    }
    

    LocalPlayerInputIdFactory@ jinit_LocalPlayerInputIdFactory()
    {
        this.jfields_LocalPlayerInputIdFactory();
        for (int index = int(this.deviceIdToplayerId_LocalPlayerInputIdFactory.length()) - 1; index >= 0; index--) {
            this.deviceIdToplayerId_LocalPlayerInputIdFactory[index] = -1;
        }
        return this;
    }
    

    int getDeviceId(int playerInputId)
    {
        return this.playerIdToDeviceId_LocalPlayerInputIdFactory[playerInputId];
    }
    

    int getPlayerForDevice(int deviceId)
    {
        int index = 0;
        if (deviceId < this.MAX_FAST_DEVICEID_LocalPlayerInputIdFactory) {
            int playerInputId = this.deviceIdToplayerId_LocalPlayerInputIdFactory[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = this.totalDevicesMapped_LocalPlayerInputIdFactory - 1; index >= 0; index--) {
                if (this.playerIdToDeviceId_LocalPlayerInputIdFactory[index] == deviceId) {
                    return index;
                }
            }
        }
        index = this.totalDevicesMapped_LocalPlayerInputIdFactory;
        if (deviceId < this.MAX_FAST_DEVICEID_LocalPlayerInputIdFactory) {
            this.deviceIdToplayerId_LocalPlayerInputIdFactory[deviceId] = index;
        } else {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice");
        }
        this.playerIdToDeviceId_LocalPlayerInputIdFactory[index] = deviceId;
        AnalogLocationInputFactory::getInstance().addPlayer(this.totalDevicesMapped_LocalPlayerInputIdFactory);
        this.totalDevicesMapped_LocalPlayerInputIdFactory++;
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped_LocalPlayerInputIdFactory).toString(), this, "getPlayerForDevice");
        return index;
    }
    

    int getTotalDevicesInPlay()
    {
        int total = 0;
        for (int index = this.totalDevicesMapped_LocalPlayerInputIdFactory - 1; index >= 0; index--) {
            if (this.playersInPlay_LocalPlayerInputIdFactory[index] == true) {
                total++;
            }
        }
        return total;
    }
    

    bool isPlayerInPlay(int playerInputId)
    {
        return this.playersInPlay_LocalPlayerInputIdFactory[playerInputId];
    }
    

    void setPlayerInPlay(int playerInputId)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay");
        this.playersInPlay_LocalPlayerInputIdFactory[playerInputId] = true;
    }
    

    void setPlayerOutOfPlay(int playerInputId)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay");
        this.playersInPlay_LocalPlayerInputIdFactory[playerInputId] = false;
    }
    

    bool[]@ getPlayersInPlay()
    {
        return this.playersInPlay_LocalPlayerInputIdFactory;
    }
}

namespace LocalPlayerInputIdFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LocalPlayerInputIdFactory().jinit_LocalPlayerInputIdFactory();
    }

    LocalPlayerInputIdFactory@ jcell_instance;
    LocalPlayerInputIdFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LocalPlayerInputIdFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LocalPlayerInputIdFactory@ getInstance()
    {
        return LocalPlayerInputIdFactory::instance;
    }
}

