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
// package org.allbinary.input.motion.button

class TouchButton : Paintable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    TouchButtonInput@ touchButtonInput_TouchButton;
    Animation@ animationInterface_TouchButton;
    Animation@ hintAnimationInterface_TouchButton;
    Rectangle@ rawRectangle;
    int xBorder;
    int yBorder;
    Rectangle@ rectangleP;
    CellPosition@ cellPositionP;
    int animationX;
    int animationY;
    int hintAnimationY;

    // Java field initializers run after the super constructor
    void jfields_TouchButton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    
    
    
    @this.rectangleP = RectangleFactory::SINGLETON;
    
    
    
    
    }
    

    TouchButton@ jinit_TouchButton(TouchButtonInput@ touchButtonInput, Animation@ animationInterface, Animation@ hintAnimationInterface, Rectangle@ rawRectangle, CellPosition@ cellPosition, int xBorder, int yBorder)
    {
        this.jinit_Paintable();
        this.jfields_TouchButton();
        @this.touchButtonInput_TouchButton = touchButtonInput;
        @this.animationInterface_TouchButton = animationInterface;
        @this.hintAnimationInterface_TouchButton = hintAnimationInterface;
        @this.rawRectangle = rawRectangle;
        @this.cellPositionP = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
        return this;
    }
    

    void paintHint(Graphics@ graphics)
    {
        this.hintAnimationInterface_TouchButton.paintXY(graphics, this.animationX, this.hintAnimationY);
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_TouchButton.paintXY(graphics, this.animationX, this.animationY);
    }
    

    void updateRectangle()
    {
        try {
            PointFactory@ pointFactory = PointFactory::getInstance();
            int x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            int y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            @this.rectangleP = Rectangle().jinit_Rectangle(pointFactory.createXY(x + this.xBorder, y + this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            GPoint@ point = this.rectangleP.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
            this.hintAnimationY = this.animationY - 32;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    CellPosition@ getCellPosition()
    {
        return this.cellPositionP;
    }
    

    Rectangle@ getRectangle()
    {
        return this.rectangleP;
    }
    

    TouchButtonInput@ getTouchButtonInput()
    {
        return this.touchButtonInput_TouchButton;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        StringUtil@ stringUtil = StringUtil::getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString(this.getRectangle()));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString(this.cellPositionP));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
}

namespace TouchButton
{
    

    TouchButton@ createButton(TouchButtonInput@ touchButtonInput, TouchButtonResource@ touchButtonResource, Rectangle@ rawRectangle, CellPosition@ cellPosition, int xBorder, int yBorder)
    {
        return TouchButton().jinit_TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
}

