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
// package org.allbinary.logic.io

class AbIOSystem : JObjectBase
{
    string type;

    // Java field initializers run after the super constructor
    void jfields_AbIOSystem()
    {
    this.type = "java.io";
    }

    AbIOSystem@ jinit_AbIOSystem()
    {
        this.jfields_AbIOSystem();
        return this;
    }
    

    string getType()
    {
        return this.type;
    }
    

    bool isType(string type)
    {
        if (String::compareTo(this.type, type) == 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

namespace AbIOSystem
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbIOSystem().jinit_AbIOSystem();
    }

    AbIOSystem@ jcell_instance;
    AbIOSystem@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbIOSystem@ value) property { jclinit(); @jcell_instance = value; }
    

    AbIOSystem@ getInstance()
    {
        return AbIOSystem::instance;
    }
}

