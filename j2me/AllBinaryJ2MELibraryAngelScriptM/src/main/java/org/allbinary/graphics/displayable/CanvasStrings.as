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
// package org.allbinary.graphics.displayable

class CanvasStrings : JObjectBase
{
    string CONSTRUCTOR;
    string PAUSE;
    string UN_PAUSE;
    string SET_FULL_SCREEN_MODE;
    string SIZE_CHANGED;
    string SCALED_IMAGES;
    string PAINT;
    string ON_DISPLAY_CHANGE_EVENT;
    string UPDATE_MEASUREMENT;
    string FD_WIDTH;
    string FD_HEIGHT;
    BasicArrayList@ EMPTY_CHILD_NAME_LIST;
    string ABOUT;
    string OPTIONS;
    string FONT_ATLAS;
    string OBJ_MODEL;
    string MD2_MODEL;
    string _PNG;

    // Java field initializers run after the super constructor
    void jfields_CanvasStrings()
    {
    this.CONSTRUCTOR = "MyCanvas::MyCanvas";
    this.PAUSE = "MyCanvas::pause";
    this.UN_PAUSE = "MyCanvas::unPause";
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode";
    this.SIZE_CHANGED = "sizeChanged";
    this.SCALED_IMAGES = "scaledImages";
    this.PAINT = "paint";
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent";
    this.UPDATE_MEASUREMENT = "updateMeasurement";
    this.FD_WIDTH = " font/display width: ";
    this.FD_HEIGHT = " font/display height: ";
    @this.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil::getInstance().getImmutableInstance();
    this.ABOUT = "About";
    this.OPTIONS = "Options";
    this.FONT_ATLAS = "/font.png";
    this.OBJ_MODEL = "_obj";
    this.MD2_MODEL = "_md2";
    this._PNG = ".png";
    }

    CanvasStrings@ jinit_CanvasStrings()
    {
        this.jfields_CanvasStrings();
        return this;
    }
}

namespace CanvasStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CanvasStrings().jinit_CanvasStrings();
    }

    CanvasStrings@ jcell_instance;
    CanvasStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CanvasStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    CanvasStrings@ getInstance()
    {
        return CanvasStrings::instance;
    }
}

