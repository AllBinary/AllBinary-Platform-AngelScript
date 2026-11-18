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
// package org.allbinary.graphics

class RelativeRelationship : JObjectBase
{
    BasicArrayList@ typesAllowedList;
    int x;
    int y;
    int z;
    

    RelativeRelationship@ jinit_RelativeRelationship(GPoint@ point, BasicArrayList@ typesAllowedList)
    {
        this.x = point.getX();
        this.y = point.getY();
        this.z = point.getZ();
        @this.typesAllowedList = typesAllowedList;
        return this;
    }
    

    int getX()
    {
        return this.x;
    }
    

    int getY()
    {
        return this.y;
    }
    

    int getZ()
    {
        return this.z;
    }
    

    BasicArrayList@ getTypesAllowedList()
    {
        return this.typesAllowedList;
    }
    

    void setTypesAllowedList(BasicArrayList@ typesAllowedList)
    {
        @this.typesAllowedList = typesAllowedList;
    }
}

namespace RelativeRelationship
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_RELATIVE_RELATIONSHIP = RelativeRelationship().jinit_RelativeRelationship(PointFactory::getInstance().ZERO_ZERO, BasicArrayListUtil::getInstance().getImmutableInstance());
    }

    RelativeRelationship@ jcell_NULL_RELATIVE_RELATIONSHIP;
    RelativeRelationship@ get_NULL_RELATIVE_RELATIONSHIP() property { jclinit(); return jcell_NULL_RELATIVE_RELATIONSHIP; }
    void set_NULL_RELATIVE_RELATIONSHIP(RelativeRelationship@ value) property { jclinit(); @jcell_NULL_RELATIVE_RELATIONSHIP = value; }
}

