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
    BasicArrayList@ typesAllowedList_RelativeRelationship;
    int x_RelativeRelationship;
    int y_RelativeRelationship;
    int z_RelativeRelationship;
    

    RelativeRelationship@ jinit_RelativeRelationship(GPoint@ point, BasicArrayList@ typesAllowedList)
    {
        this.x_RelativeRelationship = point.getX();
        this.y_RelativeRelationship = point.getY();
        this.z_RelativeRelationship = point.getZ();
        @this.typesAllowedList_RelativeRelationship = typesAllowedList;
        return this;
    }
    

    int getX()
    {
        return this.x_RelativeRelationship;
    }
    

    int getY()
    {
        return this.y_RelativeRelationship;
    }
    

    int getZ()
    {
        return this.z_RelativeRelationship;
    }
    

    BasicArrayList@ getTypesAllowedList()
    {
        return this.typesAllowedList_RelativeRelationship;
    }
    

    void setTypesAllowedList(BasicArrayList@ typesAllowedList)
    {
        @this.typesAllowedList_RelativeRelationship = typesAllowedList;
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

