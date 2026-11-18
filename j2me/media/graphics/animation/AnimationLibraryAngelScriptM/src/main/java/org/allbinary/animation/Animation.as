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
// package org.allbinary.animation

class Animation : JObjectBase, AnimationInterface, OpenGLSurfaceChangedInterface
{
    BasicColorSetUtil@ basicSetColorUtil;
    BasicColor@ basicColor;
    int colorP;
    BasicColor@ changeBasicColorP;
    int changeColorP;
    int alphaP;

    // Java field initializers run after the super constructor
    void jfields_Animation()
    {
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.basicColor = BasicColorFactory::getInstance().WHITE;
    
    @this.changeBasicColorP = BasicColorFactory::getInstance().NULL_COLOR;
    
    
    }
    

    Animation@ jinit_Animation()
    {
        this.jfields_Animation();
        return this;
    }
    

    void setAlpha(int alpha)
    {
        this.alphaP = alpha;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
    }
    

    bool isThreed()
    {
        return false;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor = basicColor;
        this.colorP = this.basicColor.intValue();
    }
    

    void setBackgroundBasicColorP(BasicColor@ basicColor)
    {
    }
    

    BasicColor@ getChangeBasicColor()
    {
        return this.changeBasicColorP;
    }
    

    void changeBasicColor(BasicColor@ basicColor)
    {
        @this.changeBasicColorP = basicColor;
        this.changeColorP = this.changeBasicColorP.intValue();
    }
    

    int getChangeColor()
    {
        return this.changeColorP;
    }
    

    int getColor()
    {
        return this.colorP;
    }
    

    void setScale(float scaleX, float scaleY)
    {
    }
    

    void setMaxScale(float maxScaleX, float maxScaleY)
    {
    }
    

    void set(GL@ gl)
    {
    }
    

    void setDx(int dx)
    {
    }
    

    int getDx()
    {
        return 0;
    }
    

    void setDy(int dy)
    {
    }
    

    int getDy()
    {
        return 0;
    }
}

