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

class BasicUserRoleFactory : JObjectBase
{
    int64 INACTIVITYTIMEOUT;
    int64 CUSTOMERTIMEOUT;
    int64 CUSTOMERMAXSESSIONTIME;
    int64 MAXSESSIONTIME;
    BasicUserRole@ INSTALLER;
    BasicUserRole@ ADMINISTRATOR;
    BasicUserRole@ CUSTOMER;
    BasicUserRole@ SUBSCRIBERCUSTOMER;
    BasicUserRole@ WHOLESALECUSTOMER;
    BasicUserRole@ STOREMANAGER;
    BasicUserRole@ PRODUCTMANAGER;
    BasicUserRole@ CUSTOMERMANAGER;
    BasicUserRole@ PAYMENTMANAGER;
    BasicUserRole@ ORDERMANAGER;
    BasicUserRole@ WEBMANAGER;
    BasicUserRole@ REVIEWER;
    BasicUserRole@ SHIPPING;
    BasicUserRole@ ADJUSTER;
    BasicUserRole@ WORKFLOWEDITOR;
    BasicUserRole@ WIZARD;
    BasicUserRole@ VIEWEDITOR;

    // Java field initializers run after the super constructor
    void jfields_BasicUserRoleFactory()
    {
    this.INACTIVITYTIMEOUT = 360000000;
    this.CUSTOMERTIMEOUT = 360000000;
    this.CUSTOMERMAXSESSIONTIME = 360000000;
    this.MAXSESSIONTIME = 360000000;
    @this.INSTALLER = BasicUserRole().jinit_BasicUserRole("Installer", 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.ADMINISTRATOR = BasicUserRole().jinit_BasicUserRole("Administrator", 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.CUSTOMER = BasicUserRole().jinit_BasicUserRole("CustomerUser", "Customer User", 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    @this.SUBSCRIBERCUSTOMER = BasicUserRole().jinit_BasicUserRole("SubscriberUser", "Subscriber User", 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    @this.WHOLESALECUSTOMER = BasicUserRole().jinit_BasicUserRole("WholesaleUser", "Wholesale User", 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    @this.STOREMANAGER = BasicUserRole().jinit_BasicUserRole("StoreManager", "Store Manager", 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.PRODUCTMANAGER = BasicUserRole().jinit_BasicUserRole("ProductManager", "Product Manager", 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.CUSTOMERMANAGER = BasicUserRole().jinit_BasicUserRole("UserManager", "User Manager", 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.PAYMENTMANAGER = BasicUserRole().jinit_BasicUserRole("PaymentManager", "Payment Manager", 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.ORDERMANAGER = BasicUserRole().jinit_BasicUserRole("OrderManager", "Order Manager", 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.WEBMANAGER = BasicUserRole().jinit_BasicUserRole("WebManager", "Web Manager", 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.REVIEWER = BasicUserRole().jinit_BasicUserRole("Reviewer", 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.SHIPPING = BasicUserRole().jinit_BasicUserRole("Shipping", 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.ADJUSTER = BasicUserRole().jinit_BasicUserRole("Adjuster", 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.WORKFLOWEDITOR = BasicUserRole().jinit_BasicUserRole("WorkFlowEditor", "WorkFlow Editor", 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.WIZARD = BasicUserRole().jinit_BasicUserRole("WizardUser", "Wizard User", 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    @this.VIEWEDITOR = BasicUserRole().jinit_BasicUserRole("ViewEditor", "View Editor", 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    }

    BasicUserRoleFactory@ jinit_BasicUserRoleFactory()
    {
        this.jfields_BasicUserRoleFactory();
        return this;
    }
}

namespace BasicUserRoleFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicUserRoleFactory().jinit_BasicUserRoleFactory();
    }

    BasicUserRoleFactory@ jcell_instance;
    BasicUserRoleFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicUserRoleFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicUserRoleFactory@ getInstance()
    {
        return BasicUserRoleFactory::instance;
    }
}

