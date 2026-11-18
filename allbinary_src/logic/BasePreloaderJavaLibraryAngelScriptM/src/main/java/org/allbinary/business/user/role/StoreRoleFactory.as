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

class StoreRoleFactory : JObjectBase
{
    BasicArrayList@ roles;
    BasicArrayList@ subscriberRoles;
    BasicArrayList@ wholesaleRoles;

    // Java field initializers run after the super constructor
    void jfields_StoreRoleFactory()
    {
    @this.roles = BasicArrayListD().jinit_BasicArrayListD();
    @this.subscriberRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.wholesaleRoles = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    StoreRoleFactory@ jinit_StoreRoleFactory()
    {
        this.jfields_StoreRoleFactory();
        BasicUserRoleFactory@ basicUserRoleFactory = BasicUserRoleFactory::getInstance();
        this.roles.add(basicUserRoleFactory.CUSTOMER);
        this.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
        this.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
        return this;
    }
    

    BasicArrayList@ getRoles()
    {
        return this.roles;
    }
    

    BasicArrayList@ getSubscriberRoles()
    {
        return this.subscriberRoles;
    }
    

    BasicArrayList@ getWholesaleRoles()
    {
        return this.wholesaleRoles;
    }
}

namespace StoreRoleFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StoreRoleFactory().jinit_StoreRoleFactory();
    }

    StoreRoleFactory@ jcell_instance;
    StoreRoleFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StoreRoleFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    StoreRoleFactory@ getInstance()
    {
        return StoreRoleFactory::instance;
    }
}

