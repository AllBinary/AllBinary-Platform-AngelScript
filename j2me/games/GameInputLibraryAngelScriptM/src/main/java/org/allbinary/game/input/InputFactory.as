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

class InputFactory : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_InputFactory;
    string KEY_CODE_LABEL;
    string DEVICE_ID_LABEL;
    int MAX;
    Input@[]@ inputIntegerArray;
    Input@ NO_INPUT;

    // Java field initializers run after the super constructor
    void jfields_InputFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_InputFactory = CommonStrings::getInstance();
    this.KEY_CODE_LABEL = "KeyCode: ";
    this.DEVICE_ID_LABEL = "DeviceId: ";
    this.MAX = SmallIntegerSingletonFactory::getInstance().getMin();
    @this.inputIntegerArray = array<Input@>(this.MAX);
    @this.NO_INPUT = Input().jinit_Input(0, this.commonStrings_InputFactory.UNKNOWN);
    }
    

    InputFactory@ jinit_InputFactory()
    {
        this.jfields_InputFactory();
        int size = int(this.inputIntegerArray.length());
        for (int index = 0; index < size; index++) {
            @this.inputIntegerArray[index] = this.NO_INPUT;
        }
        return this;
    }
    

    void add(int id, Input@ input)
    {
        @this.inputIntegerArray[id] = input;
    }
    

    Input@ getInstanceById(int id)
    {
        if (id < 0) {
            id = -id;
        }
        if (id > int(this.inputIntegerArray.length())) {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Warning id: ").appendint(id).toString(), this, this.commonStrings_InputFactory.GET_INSTANCE);
            return this.NO_INPUT;
        }
        return this.inputIntegerArray[id];
    }
}

namespace InputFactory
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
    

    InputFactory@ getInstance()
    {
        if (InputFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @InputFactory::instance = InputFactory().jinit_InputFactory();
        }
        return cast<InputFactory>(InputFactory::instance);
    }
}

