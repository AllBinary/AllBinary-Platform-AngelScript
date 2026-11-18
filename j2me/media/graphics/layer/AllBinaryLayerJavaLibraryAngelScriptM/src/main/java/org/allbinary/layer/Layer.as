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
// package org.allbinary.layer

class ABLayer : JObjectBase
{
    LogUtil@ logUtil;
    int x;
    int y;
    int z;
    int width;
    int height;
    bool visible;

    // Java field initializers run after the super constructor
    void jfields_ABLayer()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    this.z = 3;
    
    
    this.visible = true;
    }
    

    ABLayer@ jinit_ABLayer(int width, int height)
    {
        this.jfields_ABLayer();
        this.setLayerWidth(width);
        this.setLayerHeight(height);
        return this;
    }
    

    void setPosition(int x, int y, int z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    void moveDXY(int dx, int dy)
    {
        this.x += dx;
        this.y += dy;
    }
    

    void moveDXYZ(int dx, int dy, int dz)
    {
        this.x += dx;
        this.y += dy;
        this.z += dz;
    }
    

    int getXP()
    {
        return this.x;
    }
    

    int getYP()
    {
        return this.y;
    }
    

    int getZP()
    {
        return this.z;
    }
    

    int getWidth()
    {
        return this.width;
    }
    

    int getHeight()
    {
        return this.height;
    }
    

    int64 getDepth()
    {
        return 0;
    }
    

    void setVisible(bool visible)
    {
        this.visible = visible;
    }
    

    bool isVisible()
    {
        return this.visible;
    }
    

    void paint(Graphics@ graphics)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        CanvasStrings@ canvasStrings = CanvasStrings::getInstance();
        this.logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT);
    }
    

    void setLayerWidth(int width)
    {
        if (width < 0) {
            jthrow(IllegalArgumentException().jinit_IllegalArgumentException());
        }
        this.width = width;
    }
    

    void setLayerHeight(int height)
    {
        if (height < 0) {
            jthrow(IllegalArgumentException().jinit_IllegalArgumentException());
        }
        this.height = height;
    }
    

    void toStringAppend(StringMaker@ stringBuffer)
    {
    }
}

namespace ABLayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_ID = SmallIntegerSingletonFactory::getInstance().getAt(0);
    }

    JInteger@ jcell_ID;
    JInteger@ get_ID() property { jclinit(); return jcell_ID; }
    void set_ID(JInteger@ value) property { jclinit(); @jcell_ID = value; }
}

