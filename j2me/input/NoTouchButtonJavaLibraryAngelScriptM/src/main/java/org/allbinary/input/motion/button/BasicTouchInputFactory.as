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
// package org.allbinary.input.motion.button

class BasicTouchInputFactory : JObjectBase
{
    LogUtil@ logUtil;
    TouchButtonInput@ SPECIAL_BUTTON_SIX;
    TouchButtonInput@ SPECIAL_BUTTON_FIVE;
    TouchButtonInput@ SPECIAL_BUTTON_FOUR;
    TouchButtonInput@ SPECIAL_BUTTON_THREE;
    TouchButtonInput@ SPECIAL_BUTTON_TWO;
    TouchButtonInput@ SPECIAL_BUTTON_ONE;
    TouchButtonInput@ UP;
    TouchButtonInput@ LEFT;
    TouchButtonInput@ RIGHT;
    TouchButtonInput@ DOWN;
    TouchButtonInput@ NONE;
    bool initialized;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_BasicTouchInputFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.SPECIAL_BUTTON_SIX = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 30, "Button 6");
    @this.SPECIAL_BUTTON_FIVE = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 31, "Button 5");
    @this.SPECIAL_BUTTON_FOUR = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 32, "Button 4");
    @this.SPECIAL_BUTTON_THREE = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 33, "Button 3");
    @this.SPECIAL_BUTTON_TWO = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 34, "Button 2");
    @this.SPECIAL_BUTTON_ONE = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 35, "Button 1");
    @this.UP = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 36, "Up Button");
    @this.LEFT = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 37, "Left Button");
    @this.RIGHT = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 38, "Right Button");
    @this.DOWN = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 39, "Down Button");
    @this.NONE = TouchButtonInput().jinit_TouchButtonInput(InputFactory::getInstance().MAX - 40, "No Button");
    this.initialized = false;
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    BasicTouchInputFactory@ jinit_BasicTouchInputFactory()
    {
        this.jfields_BasicTouchInputFactory();
        return this;
    }
    

    void init(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        if (!this.initialized) {
            this.initialized = true;
            this.list.add(this.UP);
            this.list.add(this.LEFT);
            this.list.add(this.RIGHT);
            this.list.add(this.DOWN);
            this.list.add(this.SPECIAL_BUTTON_TWO);
            this.list.add(this.SPECIAL_BUTTON_FOUR);
            this.list.add(this.SPECIAL_BUTTON_THREE);
            this.list.add(this.SPECIAL_BUTTON_ONE);
            this.list.add(this.SPECIAL_BUTTON_FIVE);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.updateAllList(this.list, inputToGameKeyMapping);
        }
    }
    

    void updateAll(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        this.updateAllList(this.getList(), inputToGameKeyMapping);
    }
    

    void updateAllList(BasicArrayList@ list, InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START).appendint(list.size()).toString(), this, "updateAll");
        for (int index = list.size() - 1; index >= 0; index--) {
            TouchButtonInput@ touchButtonInput = cast<TouchButtonInput>(list.get(index));
            touchButtonInput.update(inputToGameKeyMapping);
        }
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
    }
}

namespace BasicTouchInputFactory
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
    

    BasicTouchInputFactory@ getInstance()
    {
        if (BasicTouchInputFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @BasicTouchInputFactory::instance = BasicTouchInputFactory().jinit_BasicTouchInputFactory();
        }
        return cast<BasicTouchInputFactory>(BasicTouchInputFactory::instance);
    }
}

