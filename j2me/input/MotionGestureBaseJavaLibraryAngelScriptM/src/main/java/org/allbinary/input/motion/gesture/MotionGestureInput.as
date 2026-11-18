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
// package org.allbinary.input.motion.gesture

class MotionGestureInput : Input
{
    

    MotionGestureInput@ jinit_MotionGestureInput(int id, string name)
    {
        this.jinit_Input(id, name);
        InputFactory@ inputFactory = InputFactory::getInstance();
        inputFactory.add(this.getId(), this);
        return this;
    }
}

