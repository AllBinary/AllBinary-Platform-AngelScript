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
// package org.allbinary.media.audio

class PlayerQueue : JObjectBase
{
    CommonStrings@ commonStrings_PlayerQueue;
    BasicArrayList@ list_PlayerQueue;
    int max_PlayerQueue;

    // Java field initializers run after the super constructor
    void jfields_PlayerQueue()
    {
    @this.commonStrings_PlayerQueue = CommonStrings::getInstance();
    @this.list_PlayerQueue = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    PlayerQueue@ jinit_PlayerQueue(int max)
    {
        this.jfields_PlayerQueue();
        this.max_PlayerQueue = max;
        return this;
    }
    

    void add(Sound@ sound)
    {
        try {
            if (!this.list_PlayerQueue.contains(sound)) {
                this.list_PlayerQueue.add(sound);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::put(this.commonStrings_PlayerQueue.EXCEPTION, this, this.commonStrings_PlayerQueue.ADD);
            }
            else { jthrow(jex0); }
        }
    }
    

    bool process()
    {
        Sound@ sound = NoSound::getInstance();
        try {
            bool played = false;
            if (this.list_PlayerQueue.size() > 0) {
                @sound = cast<Sound>(this.list_PlayerQueue.removeAt(0));
                if (sound !is null) {
                    sound.getPlayerP().start();
                }
                while (this.list_PlayerQueue.size() > this.max_PlayerQueue) {
                    this.list_PlayerQueue.removeAt(0);
                }
                played = true;
            }
            return played;
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            string resource = StringUtil::getInstance().EMPTY_STRING;
            if (sound !is null) {
                resource = sound.getResource();
            }
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.commonStrings_PlayerQueue.EXCEPTION_LABEL).append(resource).toString(), this, this.commonStrings_PlayerQueue.PROCESS);
            return false;
            }
            else { jthrow(jex1); }
        }
        return false;
    }
    

    void clear()
    {
        this.list_PlayerQueue.clear();
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(PlayerQueue::TOTAL).appendint(this.list_PlayerQueue.size()).toString();
    }
}

namespace PlayerQueue
{
    const string TOTAL = "Sounds In Queue: ";
}

