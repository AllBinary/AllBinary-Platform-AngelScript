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

class CurrentlyPressedTouchButtonSingletonDebug : CurrentlyPressedTouchButtonSingleton
{
    string string__CurrentlyPressedTouchButtonSingletonDebug;
    string listString_CurrentlyPressedTouchButtonSingletonDebug;
    string appendText_CurrentlyPressedTouchButtonSingletonDebug;
    string PRESSED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug;
    string PRESSED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug;
    string ASSOCIATED_RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug;
    string RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug;
    string RELEASED_AND_FIRED_2_CurrentlyPressedTouchButtonSingletonDebug;
    string RELEASED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug;

    // Java field initializers run after the super constructor
    void jfields_CurrentlyPressedTouchButtonSingletonDebug()
    {
    this.string__CurrentlyPressedTouchButtonSingletonDebug = StringUtil::getInstance().EMPTY_STRING;
    this.listString_CurrentlyPressedTouchButtonSingletonDebug = StringUtil::getInstance().EMPTY_STRING;
    this.appendText_CurrentlyPressedTouchButtonSingletonDebug = StringUtil::getInstance().EMPTY_STRING;
    this.PRESSED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug = "pressed & fired";
    this.PRESSED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug = "pressed in button but not fired";
    this.ASSOCIATED_RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug = "assoc. rel & fired";
    this.RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug = "rel & fired 1";
    this.RELEASED_AND_FIRED_2_CurrentlyPressedTouchButtonSingletonDebug = "rel & fired 2";
    this.RELEASED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug = "rel & not fired";
    }

    CurrentlyPressedTouchButtonSingletonDebug@ jinit_CurrentlyPressedTouchButtonSingletonDebug()
    {
        this.jinit_CurrentlyPressedTouchButtonSingleton();
        this.jfields_CurrentlyPressedTouchButtonSingletonDebug();
        return this;
    }
    

    void appendTouchButtonInput(string append, TouchButtonInput@ touchButtonInput)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(touchButtonInput.toString());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(append);
        this.appendText_CurrentlyPressedTouchButtonSingletonDebug = stringBuffer.toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
    }
    

    void append(string append)
    {
        this.appendText_CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).append(append).toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
    }
    

    void clearLog(int x, int y)
    {
        this.appendText_CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(GPoint::toStringStatic(x, y, 0)).append(CommonSeps::getInstance().SPACE).toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
    }
    

    void releaseAndNotFired()
    {
        this.append(this.RELEASED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug);
    }
    

    void releaseAndFired(TouchButtonInput@ touchButtonInput)
    {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput);
    }
    

    void releaseAndFired2(TouchButtonInput@ touchButtonInput)
    {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_2_CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput);
    }
    

    void releaseAndFiredAssociated(TouchButtonInput@ touchButtonInput)
    {
        this.appendTouchButtonInput(this.ASSOCIATED_RELEASED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput);
    }
    

    void pressedAndFired(TouchButtonInput@ touchButtonInput)
    {
        this.appendTouchButtonInput(this.PRESSED_AND_FIRED_CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput);
    }
    

    void pressedAndNotFired(TouchButtonInput@ touchButtonInput)
    {
        this.appendTouchButtonInput(this.PRESSED_AND_NOT_FIRED_CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput);
    }
    

    TouchButtonInput@ removeAt(int index)
    {
        TouchButtonInput@ touchButtonInput = CurrentlyPressedTouchButtonSingleton::removeAt(index);
        this.listString_CurrentlyPressedTouchButtonSingletonDebug = this.list.toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
        return touchButtonInput;
    }
    

    bool remove(TouchButtonInput@ touchButtonInput)
    {
        bool isRemoved = CurrentlyPressedTouchButtonSingleton::remove(touchButtonInput);
        this.listString_CurrentlyPressedTouchButtonSingletonDebug = this.list.toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
        return isRemoved;
    }
    

    void add(TouchButtonInput@ touchButtonInput)
    {
        CurrentlyPressedTouchButtonSingleton::add(touchButtonInput);
        this.listString_CurrentlyPressedTouchButtonSingletonDebug = this.list.toString();
        this.string__CurrentlyPressedTouchButtonSingletonDebug = StringMaker().jinit_StringMaker().append(this.listString_CurrentlyPressedTouchButtonSingletonDebug).append(this.appendText_CurrentlyPressedTouchButtonSingletonDebug).toString();
    }
    

    string toString()
    {
        return this.string__CurrentlyPressedTouchButtonSingletonDebug;
    }
}

namespace CurrentlyPressedTouchButtonSingletonDebug
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = CurrentlyPressedTouchButtonSingletonDebug().jinit_CurrentlyPressedTouchButtonSingletonDebug();
    }

    CurrentlyPressedTouchButtonSingletonDebug@ jcell_instanceC;
    CurrentlyPressedTouchButtonSingletonDebug@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(CurrentlyPressedTouchButtonSingletonDebug@ value) property { jclinit(); @jcell_instanceC = value; }
    

    CurrentlyPressedTouchButtonSingleton@ getInstance()
    {
        return CurrentlyPressedTouchButtonSingletonDebug::instanceC;
    }
}

