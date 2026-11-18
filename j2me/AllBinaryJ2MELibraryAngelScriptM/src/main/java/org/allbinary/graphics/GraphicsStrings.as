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
// package org.allbinary.graphics

class GraphicsStrings : JObjectBase
{
    string ANIMATION;
    string ANGLE;
    string MOVEMENT_ANGLE;
    string ROTATION;
    string OPACITY;
    string HTML;
    string WIDTH;
    string HEIGHT;

    // Java field initializers run after the super constructor
    void jfields_GraphicsStrings()
    {
    this.ANIMATION = "animation";
    this.ANGLE = "angle";
    this.MOVEMENT_ANGLE = "movement_angle";
    this.ROTATION = "rotation";
    this.OPACITY = "opacity";
    this.HTML = "HTML";
    this.WIDTH = "width";
    this.HEIGHT = "height";
    }

    GraphicsStrings@ jinit_GraphicsStrings()
    {
        this.jfields_GraphicsStrings();
        return this;
    }
}

namespace GraphicsStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GraphicsStrings().jinit_GraphicsStrings();
    }

    GraphicsStrings@ jcell_instance;
    GraphicsStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GraphicsStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    GraphicsStrings@ getInstance()
    {
        return GraphicsStrings::instance;
    }
}

