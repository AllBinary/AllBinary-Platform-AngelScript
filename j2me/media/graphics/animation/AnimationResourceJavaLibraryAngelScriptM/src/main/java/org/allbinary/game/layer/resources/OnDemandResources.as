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
// package org.allbinary.game.layer.resources

class OnDemandResources : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_OnDemandResources()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    OnDemandResources@ jinit_OnDemandResources()
    {
        this.jfields_OnDemandResources();
        return this;
    }
    

    void waitFor()
    {
    }
    

    void init()
    {
    }
    

    int initAt(ImageCache@ imageCache, BaseResourceAnimationInterfaceFactoryInterfaceFactory@ resourceAnimationInterfaceFactoryInterfaceFactory, int portion, string loadingString, int index)
    {
        return 0;
    }
}

namespace OnDemandResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ON_DEMAND_RESOURCES = OnDemandResources().jinit_OnDemandResources();
    }

    OnDemandResources@ jcell_NULL_ON_DEMAND_RESOURCES;
    OnDemandResources@ get_NULL_ON_DEMAND_RESOURCES() property { jclinit(); return jcell_NULL_ON_DEMAND_RESOURCES; }
    void set_NULL_ON_DEMAND_RESOURCES(OnDemandResources@ value) property { jclinit(); @jcell_NULL_ON_DEMAND_RESOURCES = value; }
}

