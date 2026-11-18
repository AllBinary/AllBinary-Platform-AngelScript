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
    Rectangle@ rawRectangle;
    int xBorder;
    int yBorder;
    Rectangle@ rectangle;
    CellPosition@ cellPosition;
    int animationX;
    int animationY;

    // Java field initializers run after the super constructor
    void jfields_TouchButton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    
    
    @this.rectangle = RectangleFactory::SINGLETON;
    
    
    
    }
    

    TouchButton@ jinit_TouchButton(TouchButtonInput@ touchButtonInput, AnimationInterface@ animationInterface, Rectangle@ rawRectangle, CellPosition@ cellPosition, int xBorder, int yBorder)
    {
        this.jinit_Paintable();
        this.jfields_TouchButton();
        @this.touchButtonInput_TouchButton = touchButtonInput;
        @this.animationInterface_TouchButton = cast<Animation>(animationInterface);
        @this.rawRectangle = rawRectangle;
        @this.cellPosition = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_TouchButton.paintXY(graphics, this.animationX, this.animationY);
    }
    

    void updateRectangle()
    {
        try {
            int x = this.rawRectangle.getWidth() * this.cellPosition.getColumn();
            int y = this.rawRectangle.getHeight() * this.cellPosition.getRow();
            PointFactory@ pointFactory = PointFactory::getInstance();
            @this.rectangle = Rectangle().jinit_Rectangle(pointFactory.createXY(x + this.xBorder, y + this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            GPoint@ point = this.rectangle.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    CellPosition@ getCellPositionP()
    {
        return this.cellPosition;
    }
    

    Rectangle@ getRectangleP()
    {
        return this.rectangle;
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
        stringBuffer.append(stringUtil.toString(this.rectangle));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString(this.cellPosition));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
}

