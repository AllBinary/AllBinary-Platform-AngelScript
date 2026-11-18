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
// package org.allbinary.ai

class ArtificialIntelligence : JObjectBase, ArtificialIntelligenceInterface
{
    

    ArtificialIntelligence@ jinit_ArtificialIntelligence()
    {
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ layerManager)
    {
    }
    

    int getId()
    {
        return 1;
    }
}

namespace ArtificialIntelligence
{
    const int AI_ID = 2;

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        
        @jcell_instance = ArtificialIntelligence().jinit_ArtificialIntelligence();
    }

    ArtificialIntelligence@ jcell_instance;
    ArtificialIntelligence@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ArtificialIntelligence@ value) property { jclinit(); @jcell_instance = value; }
    

    ArtificialIntelligence@ getInstance()
    {
        return ArtificialIntelligence::instance;
    }
}

