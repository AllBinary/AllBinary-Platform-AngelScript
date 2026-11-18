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

class PlatformKeyFactory : JObjectBase
{

    PlatformKeyFactory@ jinit_PlatformKeyFactory()
    {
        return this;
    }
    

    string getString(int keyCode)
    {
        return J2MEGameKey::getString(keyCode);
    }
    

    bool isSubmission(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isSubmission(input);
    }
    

    bool isDelete(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isDelete(input);
    }
    

    bool isBackSpace(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isBackSpace(input);
    }
    

    bool isLeft(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isLeft(input);
    }
    

    bool isRight(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isRight(input);
    }
    

    bool isUp(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isUp(input);
    }
    

    bool isDown(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isDown(input);
    }
    

    bool isEnter(Input@ input)
    {
        return J2MEKeyFactory::getInstance().isEnter(input);
    }
}

namespace PlatformKeyFactory
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
    

    PlatformKeyFactory@ getInstance()
    {
        if (PlatformKeyFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @PlatformKeyFactory::instance = PlatformKeyFactory().jinit_PlatformKeyFactory();
        }
        return cast<PlatformKeyFactory>(PlatformKeyFactory::instance);
    }
}

