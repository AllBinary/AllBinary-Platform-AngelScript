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

class J2MEKeyFactory : JObjectBase
{
    GameKeyFactory@ gameKeyFactory_J2MEKeyFactory;

    // Java field initializers run after the super constructor
    void jfields_J2MEKeyFactory()
    {
    @this.gameKeyFactory_J2MEKeyFactory = GameKeyFactory::getInstance();
    }
    

    J2MEKeyFactory@ jinit_J2MEKeyFactory()
    {
        this.jfields_J2MEKeyFactory();
        return this;
    }
    

    void init()
    {
        GameKey@[]@ gameKeyArray = array<GameKey@> = {this.gameKeyFactory_J2MEKeyFactory.DOWN, this.gameKeyFactory_J2MEKeyFactory.FIRE, this.gameKeyFactory_J2MEKeyFactory.GAME_A, this.gameKeyFactory_J2MEKeyFactory.GAME_B, this.gameKeyFactory_J2MEKeyFactory.GAME_C, this.gameKeyFactory_J2MEKeyFactory.GAME_D, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM0, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM1, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM2, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM3, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM4, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM5, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM6, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM7, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM8, this.gameKeyFactory_J2MEKeyFactory.KEY_NUM9, this.gameKeyFactory_J2MEKeyFactory.KEY_POUND, this.gameKeyFactory_J2MEKeyFactory.KEY_STAR, this.gameKeyFactory_J2MEKeyFactory.LEFT, this.gameKeyFactory_J2MEKeyFactory.LEVEL_DOWN, this.gameKeyFactory_J2MEKeyFactory.LEVEL_UP, this.gameKeyFactory_J2MEKeyFactory.NONE, this.gameKeyFactory_J2MEKeyFactory.RIGHT, this.gameKeyFactory_J2MEKeyFactory.UP};
        InputFactory@ inputFactory = InputFactory::getInstance();
        for (int index = int(gameKeyArray.length()); --index >= 0; ) {
            inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index]);
        }
    }
    

    bool isSubmission(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
    

    bool isDelete(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.GAME_D) {
            return true;
        }
        return false;
    }
    

    bool isBackSpace(Input@ input)
    {
        return false;
    }
    

    bool isUp(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.UP) {
            return true;
        }
        return false;
    }
    

    bool isDown(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.DOWN) {
            return true;
        }
        return false;
    }
    

    bool isLeft(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.LEFT) {
            return true;
        }
        return false;
    }
    

    bool isRight(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.RIGHT) {
            return true;
        }
        return false;
    }
    

    bool isEnter(Input@ input)
    {
        if (input is this.gameKeyFactory_J2MEKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
}

namespace J2MEKeyFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = J2MEKeyFactory().jinit_J2MEKeyFactory();
    }

    J2MEKeyFactory@ jcell_instance;
    J2MEKeyFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(J2MEKeyFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    J2MEKeyFactory@ getInstance()
    {
        return J2MEKeyFactory::instance;
    }
}

