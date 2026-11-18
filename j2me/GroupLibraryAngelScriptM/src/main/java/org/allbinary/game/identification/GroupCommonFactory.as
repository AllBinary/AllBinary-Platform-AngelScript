/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.identification

class GroupCommonFactory : JObjectBase
{
    JInteger@ ID;
    string GROUP_NAME_LABEL;
    string ID_LABEL;
    string ADDING_LABEL;
    string TO_LABEL;

    // Java field initializers run after the super constructor
    void jfields_GroupCommonFactory()
    {
    @this.ID = SmallIntegerSingletonFactory::getInstance().getAt(10);
    this.GROUP_NAME_LABEL = "Group Name: ";
    this.ID_LABEL = " Id: ";
    this.ADDING_LABEL = "Adding: ";
    this.TO_LABEL = " to: ";
    }

    GroupCommonFactory@ jinit_GroupCommonFactory()
    {
        this.jfields_GroupCommonFactory();
        return this;
    }
}

namespace GroupCommonFactory
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
    

    GroupCommonFactory@ getInstance()
    {
        if (GroupCommonFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GroupCommonFactory::instance = GroupCommonFactory().jinit_GroupCommonFactory();
        }
        return cast<GroupCommonFactory>(GroupCommonFactory::instance);
    }
}

