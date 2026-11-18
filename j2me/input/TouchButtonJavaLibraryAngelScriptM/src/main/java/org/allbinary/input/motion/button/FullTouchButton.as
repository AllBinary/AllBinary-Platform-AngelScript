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

class FullTouchButton : TouchButton
{
    

    FullTouchButton@ jinit_FullTouchButton(TouchButtonInput@ touchButtonInput, Animation@ animationInterface, Animation@ hintAnimationInterface, Rectangle@ rawRectangle, CellPosition@ cellPosition, int xBorder, int yBorder)
    {
        this.jinit_TouchButton(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
        return this;
    }
    

    void updateRectangle()
    {
        try {
            PointFactory@ pointFactory = PointFactory::getInstance();
            int x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            int y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            @this.rectangleP = Rectangle().jinit_Rectangle(pointFactory.createXY(x, y), this.rawRectangle.getWidth() + (2 * this.xBorder), this.rawRectangle.getHeight() + (2 * this.yBorder));
            GPoint@ point = this.rectangleP.getPoint();
            this.animationX = point.getX() + this.xBorder;
            this.animationY = point.getY() + this.yBorder;
            this.hintAnimationY = this.animationY - this.rectangleP.getHeight() >>> 1;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace FullTouchButton
{
    

    FullTouchButton@ createButton(TouchButtonInput@ touchButtonInput, TouchButtonResource@ touchButtonResource, Rectangle@ rawRectangle, CellPosition@ cellPosition, int xBorder, int yBorder)
    {
        return FullTouchButton().jinit_FullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
}

