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
    DisplayInfoSingleton@ displayInfo;
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    int location;
    int direction;
    int bufferZone;
    HudGraphicsPosition@ hudGraphicsPosition;
    int x;
    int y;
    BasicColor@ basicColor;
    int color;
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
    @this.displayInfo = DisplayInfoSingleton::getInstance();
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    
    
    
    @this.hudGraphicsPosition = HudGraphicsPosition::NULL_HUD_GRAPHICS_POSITION;
    
    
    @this.basicColor = BasicColorFactory::getInstance().BLACK;
    
    
    
    
    }
    

    BasicHud_1@ jinit_BasicHud_1(int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jfields_BasicHud_1();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton::getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        try {
            @this.hudGraphicsPosition = this.getHudGraphicsPositionWH(this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x = this.hudGraphicsPosition.getPoint().getX();
            this.setY(this.hudGraphicsPosition.getPoint().getY());
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
        return this.location;
    }
    

    int getDirection()
    {
        return this.direction;
    }
    

    HudGraphicsPosition@ getHudGraphicsPositionWH(int width, int height, int maxWidth, int maxHeight)
    {
        int x = 0;
        int y = 0;
        int anchor = 0;
        BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics::BOTTOM & Graphics::LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics::BOTTOM & Graphics::RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = this.bufferZone + 5;
            anchor = Anchor::TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = this.bufferZone + 5;
            anchor = Graphics::TOP & Graphics::RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = this.bufferZone + 5;
            anchor = Graphics::TOP & Graphics::HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = ((width - maxWidth) / 2);
            y = height - maxHeight - this.bufferZone;
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
        return this.bufferZone;
    }
    

    void setBufferZone(int bufferZone)
    {
        this.bufferZone = bufferZone;
    }
    

    void setLocation(int location)
    {
        this.location = location;
    }
    

    void setDirection(int direction)
    {
        this.direction = direction;
    }
    

    HudGraphicsPosition@ getHudGraphicsPosition()
    {
        return this.hudGraphicsPosition;
    }
    

    int getColor()
    {
        return this.color;
    }
    

    int getX()
    {
        return this.x;
    }
    

    void setX(int x)
    {
        this.x = x;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor;
    }
    

    void setY(int y)
    {
        this.y = y;
    }
    

    int getY()
    {
        return this.y;
    }
    

    void paintSSO(Graphics@ graphics, string string_, string string2, int offset)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string_, this.x, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    void paintSSOO(Graphics@ graphics, string string_, string string2, int offset, int offset2)
    {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string_, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset2, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    void paintDXY(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset, int xOffset2)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset2, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintDX(Graphics@ graphics, uint16[]@ charArray, int offset, int len, uint16[]@ charArray2, int offset2, int len2, int xOffset)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintOffsetAndLength(Graphics@ graphics, uint16[]@ charArray, int offset, int len)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintString(Graphics@ graphics, string string_)
    {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        int y = this.getY() + this.offsetY;
        graphics.drawString(string_, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
}

