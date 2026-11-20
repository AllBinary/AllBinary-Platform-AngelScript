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
    BasicArrayList@ adminRoles_AdminRoleFactory;
    BasicArrayList@ storeAdminRoles_AdminRoleFactory;
    BasicArrayList@ storeManagementRoles_AdminRoleFactory;
    BasicArrayList@ productManagementRoles_AdminRoleFactory;
    BasicArrayList@ reviewManagementRoles_AdminRoleFactory;
    BasicArrayList@ customerManagementRoles_AdminRoleFactory;
    BasicArrayList@ workflowManagementRoles_AdminRoleFactory;
    BasicArrayList@ orderManagementRoles_AdminRoleFactory;
    BasicArrayList@ adjusterManagementRoles_AdminRoleFactory;
    BasicArrayList@ shippingManagementRoles_AdminRoleFactory;
    BasicArrayList@ webManagementRoles_AdminRoleFactory;

    // Java field initializers run after the super constructor
    void jfields_AdminRoleFactory()
    {
    @this.adminRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.storeAdminRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.storeManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.productManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.reviewManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.customerManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.workflowManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.orderManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.adjusterManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.shippingManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.webManagementRoles_AdminRoleFactory = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AdminRoleFactory@ jinit_AdminRoleFactory()
    {
        this.jfields_AdminRoleFactory();
        BasicUserRoleFactory@ basicUserRoleFactory = BasicUserRoleFactory::getInstance();
        this.adminRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADJUSTER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.REVIEWER);
        this.storeManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.SHIPPING);
        this.productManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.productManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.productManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.reviewManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.reviewManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.reviewManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.REVIEWER);
        this.customerManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.customerManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.customerManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.workflowManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.workflowManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.workflowManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.orderManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.orderManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.adjusterManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADJUSTER);
        this.shippingManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.shippingManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.shippingManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.SHIPPING);
        this.webManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.ADMINISTRATOR);
        this.webManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.STOREMANAGER);
        this.webManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.WEBMANAGER);
        this.webManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.webManagementRoles_AdminRoleFactory.add(basicUserRoleFactory.VIEWEDITOR);
        return this;
    }
    

    BasicArrayList@ getProductManagementRoles()
    {
        return this.productManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getAdminRoles()
    {
        return this.adminRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getStoreAdminRoles()
    {
        return this.storeAdminRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getStoreManagementRoles()
    {
        return this.storeManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getReviewManagementRoles()
    {
        return this.reviewManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getCustomerManagementRoles()
    {
        return this.customerManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getWorkflowManagementRoles()
    {
        return this.workflowManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getWebManagementRoles()
    {
        return this.webManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getShippingManagementRoles()
    {
        return this.shippingManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getAdjusterManagementRoles()
    {
        return this.adjusterManagementRoles_AdminRoleFactory;
    }
    

    BasicArrayList@ getOrderManagementRoles()
    {
        return this.orderManagementRoles_AdminRoleFactory;
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

