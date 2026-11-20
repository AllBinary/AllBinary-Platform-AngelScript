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
// package org.allbinary.game.graphics.hud

class BasicHud_1 : JObjectBase, UpdateMyFontInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CanvasStrings@ canvasStrings;
    BasicColorSetUtil@ basicSetColorUtil;
    DisplayInfoSingleton@ displayInfo_BasicHud_1;
    MyFontProcessor@ updateMyFontProcessor_BasicHud_1;
    MyFontProcessor@ myFontProcessor_BasicHud_1;
    int location_BasicHud_1;
    int direction_BasicHud_1;
    int bufferZone_BasicHud_1;
    HudGraphicsPosition@ hudGraphicsPosition_BasicHud_1;
    int x_BasicHud_1;
    int y_BasicHud_1;
    BasicColor@ basicColor_BasicHud_1;
    int color_BasicHud_1;
    int updateMaxWidth;
    int updateMaxHeight;
    int offsetY;

    // Java field initializers run after the super constructor
    void jfields_BasicHud_1()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.canvasStrings = CanvasStrings::getInstance();
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.displayInfo_BasicHud_1 = DisplayInfoSingleton::getInstance();
    @this.updateMyFontProcessor_BasicHud_1 = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_BasicHud_1 = this.updateMyFontProcessor_BasicHud_1;
    
    
    
    @this.hudGraphicsPosition_BasicHud_1 = HudGraphicsPosition::NULL_HUD_GRAPHICS_POSITION;
    
    
    @this.basicColor_BasicHud_1 = BasicColorFactory::getInstance().BLACK;
    
    
    
    
    }
    

    BasicHud_1@ jinit_BasicHud_1(int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jfields_BasicHud_1();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton::getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color_BasicHud_1 = basicColor.intValue();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            @this.hudGraphicsPosition_BasicHud_1 = this.getHudGraphicsPositionWH(this.displayInfo_BasicHud_1.getLastWidth(), this.displayInfo_BasicHud_1.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x_BasicHud_1 = this.hudGraphicsPosition_BasicHud_1.getPoint().getX();
            this.setY(this.hudGraphicsPosition_BasicHud_1.getPoint().getY());
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex0); }
        }
        @this.myFontProcessor_BasicHud_1 = MyFontProcessor::getInstance();
    }
    

    int getLocation()
    {
        return this.location_BasicHud_1;
    }
    

    int getDirection()
    {
        return this.direction_BasicHud_1;
    }
    

    HudGraphicsPosition@ getHudGraphicsPositionWH(int width, int height, int maxWidth, int maxHeight)
    {
        int x = 0;
        int y = 0;
        int anchor = 0;
        BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = this.bufferZone_BasicHud_1 + 2;
            y = height - maxHeight - this.bufferZone_BasicHud_1;
            anchor = Graphics::BOTTOM & Graphics::LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - this.bufferZone_BasicHud_1;
            anchor = Graphics::BOTTOM & Graphics::RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = this.bufferZone_BasicHud_1 + 2;
            y = this.bufferZone_BasicHud_1 + 5;
            anchor = Anchor::TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = this.bufferZone_BasicHud_1 + 5;
            anchor = Graphics::TOP & Graphics::RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = this.bufferZone_BasicHud_1 + 5;
            anchor = Graphics::TOP & Graphics::HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = height - maxHeight - this.bufferZone_BasicHud_1;
            anchor = Graphics::BOTTOM & Graphics::HCENTER;
        } else if (basicHudFactory.ABSOLUTE == this.getLocation()) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return HudGraphicsPosition().jinit_HudGraphicsPosition(this.getPoint(x, y), anchor);
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        @this.myFontProcessor_BasicHud_1 = this.updateMyFontProcessor_BasicHud_1;
    }
    

    GPoint@ getPoint(int x, int y)
    {
        return PointFactory::getInstance().createXY(x, y);
    }
    

    int getBufferZone()
    {
        return this.bufferZone_BasicHud_1;
    }
    

    void setBufferZone(int bufferZone)
    {
        this.bufferZone_BasicHud_1 = bufferZone;
    }
    

    void setLocation(int location)
    {
        this.location_BasicHud_1 = location;
    }
    

    void setDirection(int direction)
    {
        this.direction_BasicHud_1 = direction;
    }
    

    HudGraphicsPosition@ getHudGraphicsPosition()
    {
        return this.hudGraphicsPosition_BasicHud_1;
    }
    

    int getColor()
    {
        return this.color_BasicHud_1;
    }
    

    int getX()
    {
        return this.x_BasicHud_1;
    }
    

    void setX(int x)
    {
        this.x_BasicHud_1 = x;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_BasicHud_1 = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_BasicHud_1;
    }
    

    void setY(int y)
    {
        this.y_BasicHud_1 = y;
    }
    

    int getY()
    {
        return this.y_BasicHud_1;
    }
    

    void paintSSO(Graphics@ graphics, string string_, string string2, int offset)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string_, this.x_BasicHud_1, this.getY(), this.hudGraphicsPosition_BasicHud_1.getAnchor());
        graphics.drawString(string2, this.x_BasicHud_1 + offset, this.getY(), this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
    

    void paintSSOO(Graphics@ graphics, string string_, string string2, int offset, int offset2)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string_, this.x_BasicHud_1 + offset, this.getY(), this.hudGraphicsPosition_BasicHud_1.getAnchor());
        graphics.drawString(string2, this.x_BasicHud_1 + offset2, this.getY(), this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
    

    void paintDXY(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset, int xOffset2)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud_1 + xOffset, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x_BasicHud_1 + xOffset2, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
    

    void paintDX(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud_1, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x_BasicHud_1 + xOffset, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
    

    void paintOffsetAndLength(Graphics@ graphics, uint16[]@ charArray, int offset, int len)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud_1, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
    

    void paintString(Graphics@ graphics, string string_)
    {
        this.myFontProcessor_BasicHud_1.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY() + this.offsetY;
        graphics.drawString(string_, this.x_BasicHud_1, y, this.hudGraphicsPosition_BasicHud_1.getAnchor());
    }
}

