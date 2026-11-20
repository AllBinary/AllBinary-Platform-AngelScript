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

class TouchScreenFactory : JObjectBase
{
    LogUtil@ logUtil;
    bool touch_TouchScreenFactory;
    bool multiTouch_TouchScreenFactory;
    bool multiTouchDistinct_TouchScreenFactory;
    TouchScreenType@ touchScreenType_TouchScreenFactory;

    // Java field initializers run after the super constructor
    void jfields_TouchScreenFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    
    @this.touchScreenType_TouchScreenFactory = TouchScreenTypesFactory::getInstance().NOTOUCH;
    }
    

    TouchScreenFactory@ jinit_TouchScreenFactory()
    {
        this.jfields_TouchScreenFactory();
        try {
            this.setTouch(true);
            this.setMultiTouch(false);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory::SINGLETON, commonStrings.GET_INSTANCE, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void setMultiTouch(bool multiTouch)
    {
        this.multiTouch_TouchScreenFactory = multiTouch;
    }
    

    bool isMultiTouch()
    {
        return this.multiTouch_TouchScreenFactory;
    }
    

    void setTouch(bool touch)
    {
        this.touch_TouchScreenFactory = touch;
    }
    

    bool isTouch()
    {
        return this.touch_TouchScreenFactory;
    }
    

    void setMultiTouchDistinct(bool multiTouchDistinct)
    {
        this.multiTouchDistinct_TouchScreenFactory = multiTouchDistinct;
    }
    

    bool isMultiTouchDistinct()
    {
        return this.multiTouchDistinct_TouchScreenFactory;
    }
    

    void setTouchScreenType(TouchScreenType@ touchScreenType)
    {
        @this.touchScreenType_TouchScreenFactory = touchScreenType;
    }
    

    TouchScreenType@ getTouchScreenType()
    {
        return this.touchScreenType_TouchScreenFactory;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("TouchScreen: ");
        stringBuffer.appendboolean(this.isTouch());
        stringBuffer.append(" MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouch());
        stringBuffer.append(" Distinct MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouchDistinct());
        stringBuffer.append(" TouchScreenType: ");
        stringBuffer.append(StringUtil::getInstance().toString(this.getTouchScreenType()));
        return stringBuffer.toString();
    }
}

namespace TouchScreenFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = TouchScreenFactory().jinit_TouchScreenFactory();
    }

    TouchScreenFactory@ jcell_SINGLETON;
    TouchScreenFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(TouchScreenFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    TouchScreenFactory@ getInstance()
    {
        return TouchScreenFactory::SINGLETON;
    }
}

