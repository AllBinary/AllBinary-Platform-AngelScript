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
// package org.allbinary.game.combat.destroy

class DestroyedLayerProcessor : BasicLayerProcessor
{
    

    DestroyedLayerProcessor@ jinit_DestroyedLayerProcessor()
    {
        this.jinit_BasicLayerProcessor();
        return this;
    }
    

    void process(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        BasicArrayList@ list = this.getList();
        int size = list.size();
        DestroyedEventHandler@ destroyedEventHandler = DestroyedEventHandler::getInstance();
        DestroyEventCircularStaticPool@ destroyEventCircularStaticPool = DestroyEventCircularStaticPool::getInstance();
        DestroyedEvent@ destroyedEvent;
        AllBinaryLayer@ layerInterface;
        for (int index = 0; index < size; index++) {
            JObject@ layerInterfaceCanBeNull = list.objectArray[index];
            if (layerInterfaceCanBeNull !is null) {
                @layerInterface = cast<AllBinaryLayer>(layerInterfaceCanBeNull);
                allBinaryLayerManager.remove(layerInterface);
                @destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface);
                destroyedEventHandler.fireEvent(destroyedEvent);
            } else {
                CommonStrings@ commonStrings = CommonStrings::getInstance();
            }
        }
        list.clear();
    }
}

namespace DestroyedLayerProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor::NULL_LAYER_PROCESSOR;
    }

    BasicLayerProcessor@ jcell_DESTROYED_LAYER_PROCESSOR;
    BasicLayerProcessor@ get_DESTROYED_LAYER_PROCESSOR() property { jclinit(); return jcell_DESTROYED_LAYER_PROCESSOR; }
    void set_DESTROYED_LAYER_PROCESSOR(BasicLayerProcessor@ value) property { jclinit(); @jcell_DESTROYED_LAYER_PROCESSOR = value; }
    

    void init()
    {
        @DestroyedLayerProcessor::DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor().jinit_DestroyedLayerProcessor();
    }
    

    BasicLayerProcessor@ getInstance()
    {
        return DestroyedLayerProcessor::DESTROYED_LAYER_PROCESSOR;
    }
}

