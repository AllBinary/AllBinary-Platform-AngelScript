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
// package org.allbinary.logic.util.visitor

class Visitor : JObjectBase, VisitorInterface
{
    NullUtil@ nullUtil;

    // Java field initializers run after the super constructor
    void jfields_Visitor()
    {
    @this.nullUtil = NullUtil::getInstance();
    }

    Visitor@ jinit_Visitor()
    {
        this.jfields_Visitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        return this.nullUtil.NULL_OBJECT;
    }
}

namespace Visitor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = Visitor().jinit_Visitor();
    }

    Visitor@ jcell_instance;
    Visitor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(Visitor@ value) property { jclinit(); @jcell_instance = value; }
    

    Visitor@ getInstance()
    {
        return Visitor::instance;
    }
}

