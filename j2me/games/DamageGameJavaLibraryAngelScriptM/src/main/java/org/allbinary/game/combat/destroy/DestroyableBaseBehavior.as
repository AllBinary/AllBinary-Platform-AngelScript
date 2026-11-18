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
// package org.allbinary.game.combat.destroy

class DestroyableBaseBehavior : JObjectBase, DestroyableInterface
{

    DestroyableBaseBehavior@ jinit_DestroyableBaseBehavior()
    {
        return this;
    }
    

    string getName()
    {
        return jClassName(this);
    }
    

    bool isDestroyed()
    {
        jthrow(Exception().jinit_Exception(CommonStrings::getInstance().NOT_IMPLEMENTED));
        return false;
    }
    

    void setDestroyed(bool destroyed)
    {
    }
}

namespace DestroyableBaseBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DestroyableBaseBehavior().jinit_DestroyableBaseBehavior();
    }

    DestroyableBaseBehavior@ jcell_instance;
    DestroyableBaseBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DestroyableBaseBehavior@ value) property { jclinit(); @jcell_instance = value; }
    

    DestroyableBaseBehavior@ getInstance()
    {
        return DestroyableBaseBehavior::instance;
    }
}

