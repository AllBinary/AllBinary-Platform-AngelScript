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

class PCKeyFactory : JObjectBase
{
    ABKeyEventWrapper@ keyEventWrapper_PCKeyFactory;
    PCGameKey@ UNKNOWN;
    PCGameKey@ ENTER;
    PCGameKey@ _A;
    PCGameKey@ _B;
    PCGameKey@ _C;
    PCGameKey@ _D;
    PCGameKey@ _E;
    PCGameKey@ _F;
    PCGameKey@ _G;
    PCGameKey@ _H;
    PCGameKey@ _I;
    PCGameKey@ _J;
    PCGameKey@ _K;
    PCGameKey@ _L;
    PCGameKey@ _M;
    PCGameKey@ _N;
    PCGameKey@ _O;
    PCGameKey@ _P;
    PCGameKey@ _Q;
    PCGameKey@ _R;
    PCGameKey@ _S;
    PCGameKey@ _T;
    PCGameKey@ _U;
    PCGameKey@ _V;
    PCGameKey@ _W;
    PCGameKey@ _X;
    PCGameKey@ _Y;
    PCGameKey@ _Z;
    PCGameKey@ a;
    PCGameKey@ b;
    PCGameKey@ c;
    PCGameKey@ d;
    PCGameKey@ e;
    PCGameKey@ f;
    PCGameKey@ g;
    PCGameKey@ h;
    PCGameKey@ i;
    PCGameKey@ j;
    PCGameKey@ k;
    PCGameKey@ l;
    PCGameKey@ m;
    PCGameKey@ n;
    PCGameKey@ o;
    PCGameKey@ p;
    PCGameKey@ q;
    PCGameKey@ r;
    PCGameKey@ s;
    PCGameKey@ t;
    PCGameKey@ u;
    PCGameKey@ v;
    PCGameKey@ w;
    PCGameKey@ x;
    PCGameKey@ y;
    PCGameKey@ z;
    PCGameKey@ ZERO;
    PCGameKey@ ONE;
    PCGameKey@ TWO;
    PCGameKey@ THREE;
    PCGameKey@ FOUR;
    PCGameKey@ FIVE;
    PCGameKey@ SIX;
    PCGameKey@ SEVEN;
    PCGameKey@ EIGHT;
    PCGameKey@ NINE;
    PCGameKey@ DPAD_UP;
    PCGameKey@ DPAD_DOWN;
    PCGameKey@ DPAD_LEFT;
    PCGameKey@ DPAD_RIGHT;
    PCGameKey@ DPAD_UP2;
    PCGameKey@ DPAD_DOWN2;
    PCGameKey@ DPAD_LEFT2;
    PCGameKey@ DPAD_RIGHT2;
    PCGameKey@ COMMA;
    PCGameKey@ SPACE;
    PCGameKey@ DEL;
    PCGameKey@ STAR;
    PCGameKey@ QUESTION;
    PCGameKey@ PERIOD;
    PCGameKey@ ESCAPE;
    PCGameKey@ BACK_SPACE;

    // Java field initializers run after the super constructor
    void jfields_PCKeyFactory()
    {
    @this.keyEventWrapper_PCKeyFactory = ABKeyEventWrapper::getInstance();
    @this.UNKNOWN = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_UNDEFINED, "UNKNOWN");
    @this.ENTER = PCGameKey().jinit_PCGameKey(5, "Enter");
    @this._A = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_A, "A");
    @this._B = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_B, "B");
    @this._C = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_C, "C");
    @this._D = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_D, "D");
    @this._E = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_E, "E");
    @this._F = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_F, "F");
    @this._G = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_G, "G");
    @this._H = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_H, "H");
    @this._I = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_I, "I");
    @this._J = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_J, "J");
    @this._K = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_K, "K");
    @this._L = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_L, "L");
    @this._M = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_M, "M");
    @this._N = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_N, "N");
    @this._O = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_O, "O");
    @this._P = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_P, "P");
    @this._Q = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_Q, "Q");
    @this._R = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_R, "R");
    @this._S = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_S, "S");
    @this._T = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_T, "T");
    @this._U = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_U, "U");
    @this._V = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_V, "V");
    @this._W = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_W, "W");
    @this._X = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_X, "X");
    @this._Y = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_Y, "Y");
    @this._Z = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_Z, "Z");
    @this.a = PCGameKey().jinit_PCGameKey(97, "a");
    @this.b = PCGameKey().jinit_PCGameKey(98, "b");
    @this.c = PCGameKey().jinit_PCGameKey(99, "c");
    @this.d = PCGameKey().jinit_PCGameKey(100, "d");
    @this.e = PCGameKey().jinit_PCGameKey(101, "e");
    @this.f = PCGameKey().jinit_PCGameKey(102, "f");
    @this.g = PCGameKey().jinit_PCGameKey(103, "g");
    @this.h = PCGameKey().jinit_PCGameKey(104, "h");
    @this.i = PCGameKey().jinit_PCGameKey(105, "i");
    @this.j = PCGameKey().jinit_PCGameKey(106, "j");
    @this.k = PCGameKey().jinit_PCGameKey(107, "k");
    @this.l = PCGameKey().jinit_PCGameKey(108, "l");
    @this.m = PCGameKey().jinit_PCGameKey(109, "m");
    @this.n = PCGameKey().jinit_PCGameKey(110, "n");
    @this.o = PCGameKey().jinit_PCGameKey(111, "o");
    @this.p = PCGameKey().jinit_PCGameKey(112, "p");
    @this.q = PCGameKey().jinit_PCGameKey(113, "q");
    @this.r = PCGameKey().jinit_PCGameKey(114, "r");
    @this.s = PCGameKey().jinit_PCGameKey(115, "s");
    @this.t = PCGameKey().jinit_PCGameKey(116, "t");
    @this.u = PCGameKey().jinit_PCGameKey(117, "u");
    @this.v = PCGameKey().jinit_PCGameKey(118, "v");
    @this.w = PCGameKey().jinit_PCGameKey(119, "w");
    @this.x = PCGameKey().jinit_PCGameKey(120, PositionStrings::getInstance().X);
    @this.y = PCGameKey().jinit_PCGameKey(121, PositionStrings::getInstance().Y);
    @this.z = PCGameKey().jinit_PCGameKey(122, "z");
    @this.ZERO = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_0, CommonPhoneStrings::getInstance().ZERO);
    @this.ONE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_1, CommonPhoneStrings::getInstance().ONE);
    @this.TWO = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_2, CommonPhoneStrings::getInstance().TWO);
    @this.THREE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_3, CommonPhoneStrings::getInstance().THREE);
    @this.FOUR = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_4, CommonPhoneStrings::getInstance().FOUR);
    @this.FIVE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_5, CommonPhoneStrings::getInstance().FIVE);
    @this.SIX = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_6, CommonPhoneStrings::getInstance().SIX);
    @this.SEVEN = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_7, CommonPhoneStrings::getInstance().SEVEN);
    @this.EIGHT = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_8, CommonPhoneStrings::getInstance().EIGHT);
    @this.NINE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_9, CommonPhoneStrings::getInstance().NINE);
    @this.DPAD_UP = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_UP, CommonPhoneStrings::getInstance().UP);
    @this.DPAD_DOWN = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_DOWN, CommonPhoneStrings::getInstance().DOWN);
    @this.DPAD_LEFT = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_LEFT, CommonPhoneStrings::getInstance().LEFT);
    @this.DPAD_RIGHT = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_RIGHT, CommonPhoneStrings::getInstance().RIGHT);
    @this.DPAD_UP2 = this.DPAD_UP;
    @this.DPAD_DOWN2 = this.DPAD_DOWN;
    @this.DPAD_LEFT2 = this.DPAD_LEFT;
    @this.DPAD_RIGHT2 = this.DPAD_RIGHT;
    @this.COMMA = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_COMMA, "COMMA");
    @this.SPACE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_SPACE, "SPACE");
    @this.DEL = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_DELETE, "DEL");
    @this.STAR = PCGameKey().jinit_PCGameKey(42, CommonPhoneStrings::getInstance().STAR);
    @this.QUESTION = PCGameKey().jinit_PCGameKey(47, "?");
    @this.PERIOD = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_PERIOD, CommonSeps::getInstance().PERIOD);
    @this.ESCAPE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_ESCAPE, "Esc");
    @this.BACK_SPACE = PCGameKey().jinit_PCGameKey(this.keyEventWrapper_PCKeyFactory.VK_BACK_SPACE, "Backspace");
    }

    PCKeyFactory@ jinit_PCKeyFactory()
    {
        this.jfields_PCKeyFactory();
        return this;
    }
    

    bool isSubmission(Input@ input)
    {
        if (input is this.ENTER) {
            return true;
        }
        return false;
    }
    

    bool isDelete(Input@ input)
    {
        if (input is this.DEL) {
            return true;
        }
        return false;
    }
    

    bool isBackSpace(Input@ input)
    {
        if (input is this.BACK_SPACE) {
            return true;
        }
        return false;
    }
    

    bool isUp(Input@ input)
    {
        if (input is this.DPAD_UP || input is this.DPAD_UP2) {
            return true;
        }
        return false;
    }
    

    bool isDown(Input@ input)
    {
        if (input is this.DPAD_DOWN || input is this.DPAD_DOWN2) {
            return true;
        }
        return false;
    }
    

    bool isLeft(Input@ input)
    {
        if (input is this.DPAD_LEFT || input is this.DPAD_LEFT2) {
            return true;
        }
        return false;
    }
    

    bool isRight(Input@ input)
    {
        if (input is this.DPAD_RIGHT || input is this.DPAD_RIGHT2) {
            return true;
        }
        return false;
    }
    

    bool isEnter(Input@ input)
    {
        if (input is this.ENTER) {
            return true;
        }
        return false;
    }
}

namespace PCKeyFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = PCKeyFactory().jinit_PCKeyFactory();
    }

    PCKeyFactory@ jcell_SINGLETON;
    PCKeyFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PCKeyFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PCKeyFactory@ getInstance()
    {
        return PCKeyFactory::SINGLETON;
    }
}

