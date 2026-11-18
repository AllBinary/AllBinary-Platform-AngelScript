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
// package org.allbinary.game.input.motion.action

class GameKeyCompleteMotionGestureInputEventFactory : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ eventList;

    // Java field initializers run after the super constructor
    void jfields_GameKeyCompleteMotionGestureInputEventFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.eventList = BasicArrayListD().jinit_BasicArrayListD();
    }

    GameKeyCompleteMotionGestureInputEventFactory@ jinit_GameKeyCompleteMotionGestureInputEventFactory()
    {
        this.jfields_GameKeyCompleteMotionGestureInputEventFactory();
        return this;
    }
    

    void add(GameKeyCompleteMotionGestureInputEvent@ gameKeyCompleteMotionGestureInputEvent)
    {
        this.eventList.add(gameKeyCompleteMotionGestureInputEvent);
    }
    

    void updateAll()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).appendint(this.eventList.size()).toString(), this, "updateAll");
        for (int index = this.eventList.size() - 1; index >= 0; index--) {
            GameKeyCompleteMotionGestureInputEvent@ gameKeyCompleteMotionGestureInputEvent = cast<GameKeyCompleteMotionGestureInputEvent>(this.eventList.objectArray[index]);
            gameKeyCompleteMotionGestureInputEvent.update();
        }
    }
}

namespace GameKeyCompleteMotionGestureInputEventFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = GameKeyCompleteMotionGestureInputEventFactory().jinit_GameKeyCompleteMotionGestureInputEventFactory();
    }

    GameKeyCompleteMotionGestureInputEventFactory@ jcell_SINGLETON;
    GameKeyCompleteMotionGestureInputEventFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(GameKeyCompleteMotionGestureInputEventFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    GameKeyCompleteMotionGestureInputEventFactory@ getInstance()
    {
        return GameKeyCompleteMotionGestureInputEventFactory::SINGLETON;
    }
}

