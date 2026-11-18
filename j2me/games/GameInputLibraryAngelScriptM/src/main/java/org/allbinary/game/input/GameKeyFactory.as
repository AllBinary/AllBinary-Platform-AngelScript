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

class GameKeyFactory : JObjectBase
{
    GameKey@ NONE;
    GameKey@ UP;
    GameKey@ DOWN;
    GameKey@ LEFT;
    GameKey@ RIGHT;
    GameKey@ KEY_POUND;
    GameKey@ KEY_STAR;
    GameKey@ KEY_NUM0;
    GameKey@ KEY_NUM1;
    GameKey@ KEY_NUM2;
    GameKey@ KEY_NUM3;
    GameKey@ KEY_NUM4;
    GameKey@ KEY_NUM5;
    GameKey@ KEY_NUM6;
    GameKey@ KEY_NUM7;
    GameKey@ KEY_NUM8;
    GameKey@ KEY_NUM9;
    GameKey@ GAME_A;
    GameKey@ GAME_B;
    GameKey@ GAME_C;
    GameKey@ GAME_D;
    GameKey@ FIRE;
    GameKey@ LEVEL_DOWN;
    GameKey@ LEVEL_UP;

    // Java field initializers run after the super constructor
    void jfields_GameKeyFactory()
    {
    @this.NONE = GameKey().jinit_GameKey(InputFactory::getInstance().MAX - 1, "None");
    @this.UP = GameKey().jinit_GameKey(Canvas::UP, CommonPhoneStrings::getInstance().UP);
    @this.DOWN = GameKey().jinit_GameKey(Canvas::DOWN, CommonPhoneStrings::getInstance().DOWN);
    @this.LEFT = GameKey().jinit_GameKey(Canvas::LEFT, CommonPhoneStrings::getInstance().LEFT);
    @this.RIGHT = GameKey().jinit_GameKey(Canvas::RIGHT, CommonPhoneStrings::getInstance().RIGHT);
    @this.KEY_POUND = GameKey().jinit_GameKey(Canvas::KEY_POUND, "POUND");
    @this.KEY_STAR = GameKey().jinit_GameKey(Canvas::KEY_STAR, "STAR");
    @this.KEY_NUM0 = GameKey().jinit_GameKey(Canvas::KEY_NUM0, CommonPhoneStrings::getInstance().ZERO);
    @this.KEY_NUM1 = GameKey().jinit_GameKey(Canvas::KEY_NUM1, CommonPhoneStrings::getInstance().ONE);
    @this.KEY_NUM2 = GameKey().jinit_GameKey(Canvas::KEY_NUM2, CommonPhoneStrings::getInstance().TWO);
    @this.KEY_NUM3 = GameKey().jinit_GameKey(Canvas::KEY_NUM3, CommonPhoneStrings::getInstance().THREE);
    @this.KEY_NUM4 = GameKey().jinit_GameKey(Canvas::KEY_NUM4, CommonPhoneStrings::getInstance().FOUR);
    @this.KEY_NUM5 = GameKey().jinit_GameKey(Canvas::KEY_NUM5, CommonPhoneStrings::getInstance().FIVE);
    @this.KEY_NUM6 = GameKey().jinit_GameKey(Canvas::KEY_NUM6, CommonPhoneStrings::getInstance().SIX);
    @this.KEY_NUM7 = GameKey().jinit_GameKey(Canvas::KEY_NUM7, CommonPhoneStrings::getInstance().SEVEN);
    @this.KEY_NUM8 = GameKey().jinit_GameKey(Canvas::KEY_NUM8, CommonPhoneStrings::getInstance().EIGHT);
    @this.KEY_NUM9 = GameKey().jinit_GameKey(Canvas::KEY_NUM9, CommonPhoneStrings::getInstance().NINE);
    @this.GAME_A = GameKey().jinit_GameKey(Canvas::GAME_A, "Game A");
    @this.GAME_B = GameKey().jinit_GameKey(Canvas::GAME_B, "Game B");
    @this.GAME_C = GameKey().jinit_GameKey(Canvas::GAME_C, "Game C");
    @this.GAME_D = GameKey().jinit_GameKey(Canvas::GAME_D, "Game D");
    @this.FIRE = GameKey().jinit_GameKey(Canvas::FIRE, CommonPhoneStrings::getInstance().FIRE);
    @this.LEVEL_DOWN = GameKey().jinit_GameKey(Canvas::KEY_NUM9 + 1, "Cheat Level Up");
    @this.LEVEL_UP = GameKey().jinit_GameKey(Canvas::KEY_NUM9 + 2, "Cheat Level Down");
    }

    GameKeyFactory@ jinit_GameKeyFactory()
    {
        this.jfields_GameKeyFactory();
        return this;
    }
}

namespace GameKeyFactory
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
    

    GameKeyFactory@ getInstance()
    {
        if (GameKeyFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GameKeyFactory::instance = GameKeyFactory().jinit_GameKeyFactory();
        }
        return cast<GameKeyFactory>(GameKeyFactory::instance);
    }
}

