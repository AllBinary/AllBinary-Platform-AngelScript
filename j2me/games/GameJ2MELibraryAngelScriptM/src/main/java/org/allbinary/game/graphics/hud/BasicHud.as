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

class BasicHud : JObjectBase, UpdateMyFontInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CanvasStrings@ canvasStrings;
    BasicColorSetUtil@ basicSetColorUtil;
    DisplayInfoSingleton@ displayInfo_BasicHud;
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    int location_BasicHud;
    int direction_BasicHud;
    int bufferZone_BasicHud;
    int bufferZoneY_BasicHud;
    HudGraphicsPosition@ hudGraphicsPosition_BasicHud;
    int x_BasicHud;
    int y_BasicHud;
    BasicColor@ basicColor_BasicHud;
    int color_BasicHud;
    int updateMaxWidth;
    int updateMaxHeight;
    int offsetY;

    // Java field initializers run after the super constructor
    void jfields_BasicHud()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.canvasStrings = CanvasStrings::getInstance();
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.displayInfo_BasicHud = DisplayInfoSingleton::getInstance();
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    
    
    
    
    @this.hudGraphicsPosition_BasicHud = HudGraphicsPosition::NULL_HUD_GRAPHICS_POSITION;
    
    
    @this.basicColor_BasicHud = BasicColorFactory::getInstance().BLACK;
    
    
    
    
    }
    

    BasicHud@ jinit_BasicHud(int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jfields_BasicHud();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton::getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color_BasicHud = basicColor.intValue();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            @this.hudGraphicsPosition_BasicHud = this.getHudGraphicsPositionWH(this.displayInfo_BasicHud.getLastWidth(), this.displayInfo_BasicHud.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x_BasicHud = this.hudGraphicsPosition_BasicHud.getPoint().getX();
            this.setY(this.hudGraphicsPosition_BasicHud.getPoint().getY());
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
            else { jthrow(jex0); }
        }
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    int getLocation()
    {
        return this.location_BasicHud;
    }
    

    int getDirection()
    {
        return this.direction_BasicHud;
    }
    

    HudGraphicsPosition@ getHudGraphicsPositionWH(int width, int height, int maxWidth, int maxHeight)
    {
        int x = 0;
        int y = 0;
        int anchor = 0;
        BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = this.bufferZone_BasicHud + 2;
            y = height - maxHeight - this.bufferZone_BasicHud;
            anchor = Graphics::BOTTOM & Graphics::LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - this.bufferZone_BasicHud;
            anchor = Graphics::BOTTOM & Graphics::RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = this.bufferZone_BasicHud + 2;
            y = this.bufferZoneY_BasicHud;
            anchor = Anchor::TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = this.bufferZoneY_BasicHud;
            anchor = Graphics::TOP & Graphics::RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = this.bufferZoneY_BasicHud;
            anchor = Graphics::TOP & Graphics::HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = height - maxHeight - this.bufferZone_BasicHud;
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
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    GPoint@ getPoint(int x, int y)
    {
        return PointFactory::getInstance().createXY(x, y);
    }
    

    int getBufferZone()
    {
        return this.bufferZone_BasicHud;
    }
    

    void setBufferZone(int bufferZone)
    {
        this.bufferZone_BasicHud = bufferZone;
        if (J2MEUtil::isHTML()) {
            this.bufferZoneY_BasicHud = this.bufferZone_BasicHud;
        } else {
            this.bufferZoneY_BasicHud = this.bufferZone_BasicHud + 5;
        }
    }
    

    void setLocation(int location)
    {
        this.location_BasicHud = location;
    }
    

    void setDirection(int direction)
    {
        this.direction_BasicHud = direction;
    }
    

    HudGraphicsPosition@ getHudGraphicsPosition()
    {
        return this.hudGraphicsPosition_BasicHud;
    }
    

    int getColor()
    {
        return this.color_BasicHud;
    }
    

    int getX()
    {
        return this.x_BasicHud;
    }
    

    void setX(int x)
    {
        this.x_BasicHud = x;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_BasicHud = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_BasicHud;
    }
    

    void setY(int y)
    {
        this.y_BasicHud = y;
    }
    

    int getY()
    {
        return this.y_BasicHud;
    }
    

    void paintSSO(Graphics@ graphics, string string_, string string2, int offset)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string_, this.x_BasicHud, this.getY(), this.hudGraphicsPosition_BasicHud.getAnchor());
        graphics.drawString(string2, this.x_BasicHud + offset, this.getY(), this.hudGraphicsPosition_BasicHud.getAnchor());
    }
    

    void paintSSOO(Graphics@ graphics, string string_, string string2, int offset, int offset2)
    {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string_, this.x_BasicHud + offset, this.getY(), this.hudGraphicsPosition_BasicHud.getAnchor());
        graphics.drawString(string2, this.x_BasicHud + offset2, this.getY(), this.hudGraphicsPosition_BasicHud.getAnchor());
    }
    

    void paintDXY(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset, int xOffset2)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud + xOffset, y, this.hudGraphicsPosition_BasicHud.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x_BasicHud + xOffset2, y, this.hudGraphicsPosition_BasicHud.getAnchor());
    }
    

    void paintDX(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud, y, this.hudGraphicsPosition_BasicHud.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x_BasicHud + xOffset, y, this.hudGraphicsPosition_BasicHud.getAnchor());
    }
    

    void paintOffsetAndLength(Graphics@ graphics, uint16[]@ charArray, int offset, int len)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x_BasicHud, y, this.hudGraphicsPosition_BasicHud.getAnchor());
    }
    

    void paintString(Graphics@ graphics, string string_)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY() + this.offsetY;
        graphics.drawString(string_, this.x_BasicHud, y, this.hudGraphicsPosition_BasicHud.getAnchor());
    }
}

