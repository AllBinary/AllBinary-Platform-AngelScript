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

class AdminRoleFactory : JObjectBase
{
    BasicArrayList@ adminRoles;
    BasicArrayList@ storeAdminRoles;
    BasicArrayList@ storeManagementRoles;
    BasicArrayList@ productManagementRoles;
    BasicArrayList@ reviewManagementRoles;
    BasicArrayList@ customerManagementRoles;
    BasicArrayList@ workflowManagementRoles;
    BasicArrayList@ orderManagementRoles;
    BasicArrayList@ adjusterManagementRoles;
    BasicArrayList@ shippingManagementRoles;
    BasicArrayList@ webManagementRoles;

    // Java field initializers run after the super constructor
    void jfields_AdminRoleFactory()
    {
    @this.adminRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.storeAdminRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.storeManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.productManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.reviewManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.customerManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.workflowManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.orderManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.adjusterManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.shippingManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    @this.webManagementRoles = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AdminRoleFactory@ jinit_AdminRoleFactory()
    {
        this.jfields_AdminRoleFactory();
        BasicUserRoleFactory@ basicUserRoleFactory = BasicUserRoleFactory::getInstance();
        this.adminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.storeManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.productManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.shippingManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.webManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WEBMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR);
        return this;
    }
    

    BasicArrayList@ getProductManagementRoles()
    {
        return this.productManagementRoles;
    }
    

    BasicArrayList@ getAdminRoles()
    {
        return this.adminRoles;
    }
    

    BasicArrayList@ getStoreAdminRoles()
    {
        return this.storeAdminRoles;
    }
    

    BasicArrayList@ getStoreManagementRoles()
    {
        return this.storeManagementRoles;
    }
    

    BasicArrayList@ getReviewManagementRoles()
    {
        return this.reviewManagementRoles;
    }
    

    BasicArrayList@ getCustomerManagementRoles()
    {
        return this.customerManagementRoles;
    }
    

    BasicArrayList@ getWorkflowManagementRoles()
    {
        return this.workflowManagementRoles;
    }
    

    BasicArrayList@ getWebManagementRoles()
    {
        return this.webManagementRoles;
    }
    

    BasicArrayList@ getShippingManagementRoles()
    {
        return this.shippingManagementRoles;
    }
    

    BasicArrayList@ getAdjusterManagementRoles()
    {
        return this.adjusterManagementRoles;
    }
    

    BasicArrayList@ getOrderManagementRoles()
    {
        return this.orderManagementRoles;
    }
}

namespace AdminRoleFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AdminRoleFactory().jinit_AdminRoleFactory();
    }

    AdminRoleFactory@ jcell_instance;
    AdminRoleFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AdminRoleFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AdminRoleFactory@ getInstance()
    {
        return AdminRoleFactory::instance;
    }
}

