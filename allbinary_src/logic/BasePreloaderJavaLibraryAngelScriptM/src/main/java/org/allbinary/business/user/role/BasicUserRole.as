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
// package org.allbinary.business.user.role

class BasicUserRole : JObjectBase, Serializable
{
    int m_int_RoleId_BasicUserRole;
    string role_BasicUserRole;
    string displayValue_BasicUserRole;
    int64 sessionTimeout_BasicUserRole;
    int64 sessionInactivityTimeout_BasicUserRole;
    

    BasicUserRole@ jinit_BasicUserRole(string aRole, int a_int_RoleId, int64 aSessionTimeout, int64 aSessionInactivityTimeout)
    {
        this.jinit_BasicUserRole(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
        return this;
    }
    

    BasicUserRole@ jinit_BasicUserRole(string aRole, string aDisplayValue, int a_int_RoleId, int64 aSessionTimeout, int64 aSessionInactivityTimeout)
    {
        this.m_int_RoleId_BasicUserRole = a_int_RoleId;
        this.role_BasicUserRole = aRole;
        this.displayValue_BasicUserRole = aDisplayValue;
        this.sessionTimeout_BasicUserRole = aSessionTimeout;
        this.sessionInactivityTimeout_BasicUserRole = aSessionInactivityTimeout;
        BasicUserRoles::getInstance().roleVector.add(this);
        return this;
    }
    

    int getRoleId()
    {
        return this.m_int_RoleId_BasicUserRole;
    }
    

    string getRole()
    {
        return this.role_BasicUserRole;
    }
    

    int64 getSessionTimeout()
    {
        return this.sessionTimeout_BasicUserRole;
    }
    

    int64 getSessionInactivityTimeout()
    {
        return this.sessionInactivityTimeout_BasicUserRole;
    }
    

    bool equals(BasicUserRole@ basicUserRole)
    {
        if (this.getRoleId() == basicUserRole.getRoleId()) {
            return true;
        }
        return false;
    }
    

    string toString()
    {
        return this.getRole();
    }
}

