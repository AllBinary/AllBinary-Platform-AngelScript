/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.business.user.role

class BasicUserRoles : JObjectBase
{
    BasicArrayList@ roleVector;

    // Java field initializers run after the super constructor
    void jfields_BasicUserRoles()
    {
    @this.roleVector = BasicArrayListD().jinit_BasicArrayListD();
    }

    BasicUserRoles@ jinit_BasicUserRoles()
    {
        this.jfields_BasicUserRoles();
        return this;
    }
    

    BasicUserRole@ getRole(string role)
    {
        BasicArrayList@ roleVector = this.getAll();
        int size = roleVector.size();
        for (int index = 0; index < size; index++) {
            BasicUserRole@ userRole = cast<BasicUserRole>(roleVector.get(index));
            if (String::compareTo(role, userRole.toString()) == 0) {
                return userRole;
            }
        }
        jthrow(Exception().jinit_Exception("Unable to get role - Unknown Role"));
        return null;
    }
    

    BasicArrayList@ getAll()
    {
        return this.roleVector;
    }
}

namespace BasicUserRoles
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicUserRoles().jinit_BasicUserRoles();
    }

    BasicUserRoles@ jcell_instance;
    BasicUserRoles@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicUserRoles@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicUserRoles@ getInstance()
    {
        return BasicUserRoles::instance;
    }
}

