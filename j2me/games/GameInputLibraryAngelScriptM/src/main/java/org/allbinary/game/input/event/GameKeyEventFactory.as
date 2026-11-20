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
// package org.allbinary.game.input.event

class GameKeyEventFactory : JObjectBase
{
    LogUtil@ logUtil;
    int TOUCH_BUTTON_SOURCE_ID;
    int MOTION_GESTURE_SOURCE_ID;
    int MAX_SOURCES_GameKeyEventFactory;
    GameKeyEvent@[]@[]@ ARRAY_GameKeyEventFactory;

    // Java field initializers run after the super constructor
    void jfields_GameKeyEventFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = 2;
    this.MOTION_GESTURE_SOURCE_ID = 3;
    this.MAX_SOURCES_GameKeyEventFactory = 4;
    @this.ARRAY_GameKeyEventFactory = GameKeyEventFactory::jnewArray2_GameKeyEvent(this.MAX_SOURCES_GameKeyEventFactory, InputFactory::getInstance().MAX);
    }
    

    GameKeyEventFactory@ jinit_GameKeyEventFactory()
    {
        this.jfields_GameKeyEventFactory();
        return this;
    }
    

    void init()
    {
        NullUtil@ nullUtil = NullUtil::getInstance();
        int size = InputFactory::getInstance().MAX;
        for (int index = this.MAX_SOURCES_GameKeyEventFactory; --index >= 0; ) {
            for (int index2 = size; --index2 >= 0; ) {
                @this.ARRAY_GameKeyEventFactory[index][index2] = GameKeyEvent::createEvent(nullUtil.NULL_OBJECT, index, index2);
            }
        }
    }
    

    GameKeyEvent@ getInstanceForKey(GameKeyEventSourceInterface@ anyType, int key)
    {
        GameKeyEvent@ gameKeyEvent = this.ARRAY_GameKeyEventFactory[anyType.getSourceId()][key];
        return gameKeyEvent;
    }
    

    GameKeyEvent@ getInstanceForInput(GameKeyEventSourceInterface@ anyType, Input@ input)
    {
        GameKeyEvent@ gameKeyEvent = this.ARRAY_GameKeyEventFactory[anyType.getSourceId()][input.getId()];
        return gameKeyEvent;
    }
}

namespace GameKeyEventFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }

    GameKeyEvent@[]@[]@ jnewArray2_GameKeyEvent(int a, int b)
    {
        GameKeyEvent@[]@[]@ result = array<GameKeyEvent@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<GameKeyEvent@>(b); }
        return result;
    }
    

    GameKeyEventFactory@ getInstance()
    {
        if (GameKeyEventFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GameKeyEventFactory::instance = GameKeyEventFactory().jinit_GameKeyEventFactory();
        }
        return cast<GameKeyEventFactory>(GameKeyEventFactory::instance);
    }
}

