/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary

class ThreedResources : JObjectBase
{

    ThreedResources@ jinit_ThreedResources()
    {
        return this;
    }
    

    void add()
    {
    }
}

namespace ThreedResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_threedResources = ThreedResources().jinit_ThreedResources();
    }

    ThreedResources@ jcell_threedResources;
    ThreedResources@ get_threedResources() property { jclinit(); return jcell_threedResources; }
    void set_threedResources(ThreedResources@ value) property { jclinit(); @jcell_threedResources = value; }
    

    ThreedResources@ getThreedResources()
    {
        return ThreedResources::threedResources;
    }
}

