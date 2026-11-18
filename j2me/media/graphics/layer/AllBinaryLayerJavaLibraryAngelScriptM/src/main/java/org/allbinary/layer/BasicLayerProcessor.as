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
// package org.allbinary.layer

class BasicLayerProcessor : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_BasicLayerProcessor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    BasicLayerProcessor@ jinit_BasicLayerProcessor()
    {
        this.jfields_BasicLayerProcessor();
        return this;
    }
    

    void add(AllBinaryLayer@ layerInterface)
    {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
        }
    }
    

    void process(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        jthrow(Exception().jinit_Exception(CommonStrings::getInstance().NOT_IMPLEMENTED));
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
    }
}

namespace BasicLayerProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_LAYER_PROCESSOR = BasicLayerProcessor().jinit_BasicLayerProcessor();
    }

    BasicLayerProcessor@ jcell_NULL_LAYER_PROCESSOR;
    BasicLayerProcessor@ get_NULL_LAYER_PROCESSOR() property { jclinit(); return jcell_NULL_LAYER_PROCESSOR; }
    void set_NULL_LAYER_PROCESSOR(BasicLayerProcessor@ value) property { jclinit(); @jcell_NULL_LAYER_PROCESSOR = value; }
}

