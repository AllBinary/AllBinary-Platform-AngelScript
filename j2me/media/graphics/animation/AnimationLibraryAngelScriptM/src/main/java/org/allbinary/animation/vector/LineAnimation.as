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
// package org.allbinary.animation.vector

class LineAnimation : Animation, ColorCompositeInterface, PositionInterface
{
    int[]@[]@ newLine_LineAnimation;
    int[]@[]@ tempLine_LineAnimation;
    int[]@[]@ line_LineAnimation;

    // Java field initializers run after the super constructor
    void jfields_LineAnimation()
    {
    @this.newLine_LineAnimation = jnewArray2_Int(2, 2);
    @this.tempLine_LineAnimation = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY;
    @this.line_LineAnimation = jnewArray2_Int(2, 2);
    }
    

    LineAnimation@ jinit_LineAnimation(BasicColor@ basicColor)
    {
        this.jinit_Animation();
        this.jfields_LineAnimation();
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void init(int x, int y)
    {
        this.newLine_LineAnimation[0][0] = x;
        this.newLine_LineAnimation[0][1] = y;
        this.newLine_LineAnimation[1][0] = x;
        this.newLine_LineAnimation[1][1] = y;
        @this.tempLine_LineAnimation = this.line_LineAnimation;
        @this.line_LineAnimation = this.newLine_LineAnimation;
        @this.newLine_LineAnimation = this.tempLine_LineAnimation;
    }
    

    void setPosition(int x, int y, int z)
    {
        this.newLine_LineAnimation[0][0] = this.line_LineAnimation[1][0];
        this.newLine_LineAnimation[0][1] = this.line_LineAnimation[1][1];
        this.newLine_LineAnimation[1][0] = x;
        this.newLine_LineAnimation[1][1] = y;
        @this.tempLine_LineAnimation = this.line_LineAnimation;
        @this.line_LineAnimation = this.newLine_LineAnimation;
        @this.newLine_LineAnimation = this.tempLine_LineAnimation;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        int[]@[]@ currentLine = this.line_LineAnimation;
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1]);
    }
    

    void nextFrame()
    {
    }
    

    BasicColor@ getBasicColorP()
    {
        return Animation::getBasicColorP();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        Animation::setBasicColorP(basicColor);
    }
}

