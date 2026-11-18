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

class PostGameCommandFactory : JObjectBase
{

    PostGameCommandFactory@ jinit_PostGameCommandFactory()
    {
        return this;
    }
    

    void addCommands(Canvas@ canvas)
    {
        MultiPlayerGameFeatureFactory::getInstance().addCommands(canvas);
    }
}

namespace PostGameCommandFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PostGameCommandFactory().jinit_PostGameCommandFactory();
    }

    PostGameCommandFactory@ jcell_instance;
    PostGameCommandFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PostGameCommandFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PostGameCommandFactory@ getInstance()
    {
        return PostGameCommandFactory::instance;
    }
}

