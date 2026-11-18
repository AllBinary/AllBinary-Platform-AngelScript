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
    int MAX_FAST_DEVICEID;
    int[]@ deviceIdToplayerId;
    int[]@ playerIdToDeviceId;
    bool[]@ playersInPlay;
    int totalDevicesMapped;

    // Java field initializers run after the super constructor
    void jfields_LocalPlayerInputIdFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    this.MAX_NUMBER_OF_PLAYERS = 6;
    this.MAX_FAST_DEVICEID = 65;
    @this.deviceIdToplayerId = array<int>(this.MAX_FAST_DEVICEID);
    @this.playerIdToDeviceId = array<int>(this.MAX_NUMBER_OF_PLAYERS);
    @this.playersInPlay = array<bool>(this.MAX_NUMBER_OF_PLAYERS);
    this.totalDevicesMapped = 0;
    }
    

    LocalPlayerInputIdFactory@ jinit_LocalPlayerInputIdFactory()
    {
        this.jfields_LocalPlayerInputIdFactory();
        for (int index = int(this.deviceIdToplayerId.length()) - 1; index >= 0; index--) {
            this.deviceIdToplayerId[index] = -1;
        }
        return this;
    }
    

    int getDeviceId(int playerInputId)
    {
        return this.playerIdToDeviceId[playerInputId];
    }
    

    int getPlayerForDevice(int deviceId)
    {
        int index = 0;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            int playerInputId = this.deviceIdToplayerId[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = this.totalDevicesMapped - 1; index >= 0; index--) {
                if (this.playerIdToDeviceId[index] == deviceId) {
                    return index;
                }
            }
        }
        index = this.totalDevicesMapped;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            this.deviceIdToplayerId[deviceId] = index;
        } else {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice");
        }
        this.playerIdToDeviceId[index] = deviceId;
        AnalogLocationInputFactory::getInstance().addPlayer(this.totalDevicesMapped);
        this.totalDevicesMapped++;
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped).toString(), this, "getPlayerForDevice");
        return index;
    }
    

    int getTotalDevicesInPlay()
    {
        int total = 0;
        for (int index = this.totalDevicesMapped - 1; index >= 0; index--) {
            if (this.playersInPlay[index] == true) {
                total++;
            }
        }
        return total;
    }
    

    bool isPlayerInPlay(int playerInputId)
    {
        return this.playersInPlay[playerInputId];
    }
    

    void setPlayerInPlay(int playerInputId)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay");
        this.playersInPlay[playerInputId] = true;
    }
    

    void setPlayerOutOfPlay(int playerInputId)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay");
        this.playersInPlay[playerInputId] = false;
    }
    

    bool[]@ getPlayersInPlay()
    {
        return this.playersInPlay;
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

