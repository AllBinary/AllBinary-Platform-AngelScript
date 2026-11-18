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
// package org.allbinary.logic.system.hardware.components

class ComponentFactory : JObjectBase
{
    Component@ VGA;
    Component@ IDE;
    Component@ SCSI;
    Component@ BRIDGE;
    Component@ ETHERNET;
    Component@ USB;
    Component@ MULTIMEDIA;
    Component@ PCI;
    Component@ RAID;
    Component@ SMBUS;
    Component@ PIC;
    Component@ Class;
    Component@ UNKNOWN;

    // Java field initializers run after the super constructor
    void jfields_ComponentFactory()
    {
    @this.VGA = Component().jinit_Component("VGA");
    @this.IDE = Component().jinit_Component("IDE");
    @this.SCSI = Component().jinit_Component("SCSI");
    @this.BRIDGE = Component().jinit_Component("bridge");
    @this.ETHERNET = Component().jinit_Component("Ethernet");
    @this.USB = Component().jinit_Component("USB");
    @this.MULTIMEDIA = Component().jinit_Component("Multimedia");
    @this.PCI = Component().jinit_Component("PCI");
    @this.RAID = Component().jinit_Component("RAID");
    @this.SMBUS = Component().jinit_Component("SMBus");
    @this.PIC = Component().jinit_Component("PIC");
    @this.Class = Component().jinit_Component("Class");
    @this.UNKNOWN = Component().jinit_Component(CommonStrings::getInstance().UNKNOWN);
    }

    ComponentFactory@ jinit_ComponentFactory()
    {
        this.jfields_ComponentFactory();
        return this;
    }
}

namespace ComponentFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ComponentFactory().jinit_ComponentFactory();
    }

    ComponentFactory@ jcell_instance;
    ComponentFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ComponentFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ComponentFactory@ getInstance()
    {
        return ComponentFactory::instance;
    }
}

