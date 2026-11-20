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
// package org.allbinary.logic.util.event

class AllBinaryEventObject : JObjectBase
{
    JObject@ source_AllBinaryEventObject;
    

    AllBinaryEventObject@ jinit_AllBinaryEventObject(JObject@ anyType)
    {
        @this.source_AllBinaryEventObject = anyType;
        return this;
    }
    

    JObject@ getSource()
    {
        return this.source_AllBinaryEventObject;
    }
    

    void setSource(JObject@ source)
    {
        @this.source_AllBinaryEventObject = source;
    }
}

namespace AllBinaryEventObject
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_EVENT = AllBinaryEventObject().jinit_AllBinaryEventObject(NullUtil::getInstance().NULL_OBJECT);
    }

    AllBinaryEventObject@ jcell_NULL_EVENT;
    AllBinaryEventObject@ get_NULL_EVENT() property { jclinit(); return jcell_NULL_EVENT; }
    void set_NULL_EVENT(AllBinaryEventObject@ value) property { jclinit(); @jcell_NULL_EVENT = value; }
}

