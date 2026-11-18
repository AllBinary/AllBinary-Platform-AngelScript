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
// package org.allbinary.game.resource

class FeatureResourceInitializationUtil : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_FeatureResourceInitializationUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    FeatureResourceInitializationUtil@ jinit_FeatureResourceInitializationUtil()
    {
        this.jfields_FeatureResourceInitializationUtil();
        return this;
    }
    

    void init(int level)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(commonStrings.START, this, commonStrings.INIT);
        FeaturedResourceFactory@ featuredResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance();
        featuredResourceFactory.init(level);
        FeaturedResourceRelativeRelationshipFactory::getInstance().init(level);
    }
}

namespace FeatureResourceInitializationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FeatureResourceInitializationUtil().jinit_FeatureResourceInitializationUtil();
    }

    FeatureResourceInitializationUtil@ jcell_instance;
    FeatureResourceInitializationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FeatureResourceInitializationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    FeatureResourceInitializationUtil@ getInstance()
    {
        return FeatureResourceInitializationUtil::instance;
    }
}

