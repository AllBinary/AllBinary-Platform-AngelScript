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

class TestInputExample : JObjectBase, TestInputInterface
{
    int testValue;

    TestInputExample@ jinit_TestInputExample()
    {
        return this;
    }
    

    void up()
    {
    }
    

    void down()
    {
    }
    

    void left()
    {
        this.testValue++;
    }
    

    void right()
    {
        this.testValue--;
    }
    

    void strafeLeft()
    {
    }
    

    void strafeRight()
    {
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
}

