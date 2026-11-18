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
// package org.allbinary.game.canvas

class ABToGBUtil : JObjectBase
{
    Canvas@ abCanvas;
    AllBinaryGameLayerManager@ allBinaryGameLayerManager;

    // Java field initializers run after the super constructor
    void jfields_ABToGBUtil()
    {
    @this.abCanvas = NullCanvas::NULL_CANVAS;
    @this.allBinaryGameLayerManager = AllBinaryGameLayerManager::getNullInstance();
    }

    ABToGBUtil@ jinit_ABToGBUtil()
    {
        this.jfields_ABToGBUtil();
        return this;
    }
}

namespace ABToGBUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ABToGBUtil().jinit_ABToGBUtil();
    }

    ABToGBUtil@ jcell_instance;
    ABToGBUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ABToGBUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ABToGBUtil@ getInstance()
    {
        return ABToGBUtil::instance;
    }
}

