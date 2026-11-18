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
// package org.allbinary.game.layer.drop

class DropLayerProcessor : BasicLayerProcessor
{
    

    DropLayerProcessor@ jinit_DropLayerProcessor()
    {
        this.jinit_BasicLayerProcessor();
        return this;
    }
    

    void process(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        BasicArrayList@ list = this.getList();
        int size = list.size();
        AllBinaryLayer@ layerInterface;
        DropLayerInterface@ dropLayerInterface;
        for (int index = 0; index < size; index++) {
            @layerInterface = cast<AllBinaryLayer>(list.objectArray[index]);
            @dropLayerInterface = cast<DropLayerInterface>(layerInterface);
            @layerInterface = cast<AllBinaryLayer>(dropLayerInterface.getDroppedLayer());
            allBinaryLayerManager.append(layerInterface);
        }
        list.clear();
    }
}

namespace DropLayerProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_LAYER_PROCESSOR = DropLayerProcessor().jinit_DropLayerProcessor();
    }

    BasicLayerProcessor@ jcell_LAYER_PROCESSOR;
    BasicLayerProcessor@ get_LAYER_PROCESSOR() property { jclinit(); return jcell_LAYER_PROCESSOR; }
    void set_LAYER_PROCESSOR(BasicLayerProcessor@ value) property { jclinit(); @jcell_LAYER_PROCESSOR = value; }
    

    BasicLayerProcessor@ getInstance()
    {
        return DropLayerProcessor::LAYER_PROCESSOR;
    }
}

