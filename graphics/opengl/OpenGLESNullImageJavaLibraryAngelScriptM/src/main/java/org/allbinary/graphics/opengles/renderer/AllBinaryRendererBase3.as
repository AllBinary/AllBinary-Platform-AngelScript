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
// package org.allbinary.graphics.opengles.renderer

class AllBinaryRendererBase3 : JObjectBase
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryRendererBase3()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }

    AllBinaryRendererBase3@ jinit_AllBinaryRendererBase3()
    {
        this.jfields_AllBinaryRendererBase3();
        return this;
    }
    

    void update(GL10@ gl)
    {
        while (this.list.size() > 0) {
            OpenGLESImage@ openGLESImage = cast<OpenGLESImage>(this.list.removeAt(0));
            if (openGLESImage !is null) {
                openGLESImage.set(gl);
            }
        }
    }
    

    void add(Image@ image)
    {
        this.list.add(image);
    }
}

