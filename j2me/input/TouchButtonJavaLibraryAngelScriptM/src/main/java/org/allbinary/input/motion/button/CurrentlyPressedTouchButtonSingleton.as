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

class CurrentlyPressedTouchButtonSingleton : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_CurrentlyPressedTouchButtonSingleton()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    CurrentlyPressedTouchButtonSingleton@ jinit_CurrentlyPressedTouchButtonSingleton()
    {
        this.jfields_CurrentlyPressedTouchButtonSingleton();
        return this;
    }
    

    int size()
    {
        return this.list.size();
    }
    

    TouchButtonInput@ removeAt(int index)
    {
        return cast<TouchButtonInput>(this.list.removeAt(index));
    }
    

    bool remove(TouchButtonInput@ touchButtonInput)
    {
        return this.list.remove(touchButtonInput);
    }
    

    TouchButtonInput@ get(int index)
    {
        return cast<TouchButtonInput>(this.list.objectArray[index]);
    }
    

    bool contains(TouchButtonInput@ touchButtonInput)
    {
        return this.list.contains(touchButtonInput);
    }
    

    void add(TouchButtonInput@ touchButtonInput)
    {
        this.list.add(touchButtonInput);
    }
}

namespace CurrentlyPressedTouchButtonSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CurrentlyPressedTouchButtonSingleton().jinit_CurrentlyPressedTouchButtonSingleton();
    }

    CurrentlyPressedTouchButtonSingleton@ jcell_instance;
    CurrentlyPressedTouchButtonSingleton@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CurrentlyPressedTouchButtonSingleton@ value) property { jclinit(); @jcell_instance = value; }
    

    CurrentlyPressedTouchButtonSingleton@ getInstance()
    {
        return CurrentlyPressedTouchButtonSingleton::instance;
    }
}

