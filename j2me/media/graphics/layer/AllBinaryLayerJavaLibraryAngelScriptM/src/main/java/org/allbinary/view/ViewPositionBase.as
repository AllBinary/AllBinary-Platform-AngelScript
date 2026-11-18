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
// package org.allbinary.view

class ViewPositionBase : GPoint
{
    

    ViewPositionBase@ jinit_ViewPositionBase(int x, int y, int z)
    {
        this.jinit_GPoint(x, y, z);
        return this;
    }
    

    int getX2()
    {
        return this.getX();
    }
    

    int getY2()
    {
        return this.getY();
    }
    

    int getZ2()
    {
        return this.getZ();
    }
    

    void setAllbinaryLayer(JObject@ allbinaryLayer)
    {
    }
}

namespace ViewPositionBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_VIEW_POSITION = ViewPositionBase().jinit_ViewPositionBase(0, 0, 0);
    }

    ViewPositionBase@ jcell_NULL_VIEW_POSITION;
    ViewPositionBase@ get_NULL_VIEW_POSITION() property { jclinit(); return jcell_NULL_VIEW_POSITION; }
    void set_NULL_VIEW_POSITION(ViewPositionBase@ value) property { jclinit(); @jcell_NULL_VIEW_POSITION = value; }
}

