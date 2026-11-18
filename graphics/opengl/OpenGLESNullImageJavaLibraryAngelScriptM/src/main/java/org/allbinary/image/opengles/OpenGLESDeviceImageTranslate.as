/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.image.opengles

class OpenGLESDeviceImageTranslate : OpenGLESImageTranslate
{
    float translateX;
    float translateY;
    float translateX2;
    float translateY2;

    // Java field initializers run after the super constructor
    void jfields_OpenGLESDeviceImageTranslate()
    {
    this.translateX = 0.0f;
    this.translateY = 0.0f;
    this.translateX2 = 0.0f;
    this.translateY2 = 0.0f;
    }

    OpenGLESDeviceImageTranslate@ jinit_OpenGLESDeviceImageTranslate()
    {
        this.jinit_OpenGLESImageTranslate();
        this.jfields_OpenGLESDeviceImageTranslate();
        return this;
    }
    

    void translate(GL10@ gl, OpenGLESImage@ openGLESImage, float x, float y)
    {
        openGLESImage.imageProcessor.translate(gl, this.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), this.translateY + (openGLESImage.openGLESImageProperties.scaleY * y));
    }
    

    void translate2(GL10@ gl, OpenGLESImage@ openGLESImage)
    {
        openGLESImage.imageProcessor.translate(gl, this.translateX2, this.translateY2);
    }
}

