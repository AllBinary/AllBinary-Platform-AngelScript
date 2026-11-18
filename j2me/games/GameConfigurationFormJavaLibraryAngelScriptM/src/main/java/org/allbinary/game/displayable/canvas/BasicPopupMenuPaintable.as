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
// package org.allbinary.game.displayable.canvas

class BasicPopupMenuPaintable : Paintable, UpdateMyFontInterface
{
    BasicColorSetUtil@ basicSetColorUtil;
    DrawVerticalStringUtil@ drawStringUtil_BasicPopupMenuPaintable;
    string label_BasicPopupMenuPaintable;
    BasicColor@ foregroundBasicColor_BasicPopupMenuPaintable;
    MyFontProcessor@ myFontProcessor_BasicPopupMenuPaintable;
    Rectangle@ rectangle_BasicPopupMenuPaintable;
    int BORDER_BasicPopupMenuPaintable;
    int heightOffset_BasicPopupMenuPaintable;
    int offset_BasicPopupMenuPaintable;
    Animation@ animationInterface_BasicPopupMenuPaintable;

    // Java field initializers run after the super constructor
    void jfields_BasicPopupMenuPaintable()
    {
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.drawStringUtil_BasicPopupMenuPaintable = DrawVerticalStringUtil::getInstance();
    
    
    @this.myFontProcessor_BasicPopupMenuPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    
    
    
    }
    

    BasicPopupMenuPaintable@ jinit_BasicPopupMenuPaintable(Rectangle@ rectangle, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_Paintable();
        this.jfields_BasicPopupMenuPaintable();
        @this.foregroundBasicColor_BasicPopupMenuPaintable = foregroundBasicColor;
        this.label_BasicPopupMenuPaintable = BasicPopupMenuPaintable::NAME;
        @this.rectangle_BasicPopupMenuPaintable = rectangle;
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
            @this.animationInterface_BasicPopupMenuPaintable = NullAnimationFactory::getFactoryInstance().getInstance(0);
        } else {
            @this.animationInterface_BasicPopupMenuPaintable = RectangleFilledAnimation().jinit_RectangleFilledAnimation(this.rectangle_BasicPopupMenuPaintable.getWidth(), this.rectangle_BasicPopupMenuPaintable.getHeight(), BasicColorFactory::getInstance().TRANSPARENT_GREY);
        }
        this.init(rectangle);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        Features@ features = Features::getInstance();
        bool isOpenGL = features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL);
        this.drawStringUtil_BasicPopupMenuPaintable.updateMeasurement(graphics, this.label_BasicPopupMenuPaintable);
        int BORDER = 0;
        if (J2MEUtil::isHTML() || isOpenGL) {
            BORDER = MyFontProcessor::defaultCharWidth(font) / 2;
        } else if (AndroidUtil::isAndroid() || J2MEUtil::isJ2SE() || SWTUtil::isSWT) {
            BORDER = MyFontProcessor::defaultCharWidth(font);
        } else {
            BORDER = MyFontProcessor::defaultCharWidth(font) * 2;
        }
        this.BORDER_BasicPopupMenuPaintable = BORDER;
        this.heightOffset_BasicPopupMenuPaintable = this.rectangle_BasicPopupMenuPaintable.getHeight() - (font.getHeight() * int(BasicPopupMenuPaintable::NAME.length()));
        if (OpenGLFeatureUtil::getInstance().isAnyThreed()) {
            this.heightOffset_BasicPopupMenuPaintable -= font.getHeight() + 2;
            if (AndroidUtil::isAndroid()) {
                this.heightOffset_BasicPopupMenuPaintable = font.getHeight();
            } else {
                this.heightOffset_BasicPopupMenuPaintable -= font.getHeight() + 2;
            }
        }
        this.offset_BasicPopupMenuPaintable = (this.heightOffset_BasicPopupMenuPaintable >>> 1) + ((SWTJOGLProcessor::getInstance().isJOGL() ? 4 : 0));
        @this.myFontProcessor_BasicPopupMenuPaintable = MyFontProcessor::getInstance();
    }
    

    void init(Rectangle@ rectangle)
    {
        @this.rectangle_BasicPopupMenuPaintable = rectangle;
        int width = this.rectangle_BasicPopupMenuPaintable.getWidth();
        int height = this.rectangle_BasicPopupMenuPaintable.getHeight();
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
        } else {
            RectangleFilledAnimation@ rectangleFilledAnimation = cast<RectangleFilledAnimation>(this.animationInterface_BasicPopupMenuPaintable);
            rectangleFilledAnimation.setWidth(width);
            rectangleFilledAnimation.setHeight(height);
        }
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_BasicPopupMenuPaintable.process(graphics);
        GPoint@ point = this.rectangle_BasicPopupMenuPaintable.getPoint();
        int x = point.getX();
        int y = point.getY();
        int width = this.rectangle_BasicPopupMenuPaintable.getWidth();
        int height = this.rectangle_BasicPopupMenuPaintable.getHeight();
        this.animationInterface_BasicPopupMenuPaintable.paintXY(graphics, x, y);
        this.basicSetColorUtil.setBasicColorP(graphics, this.foregroundBasicColor_BasicPopupMenuPaintable);
        this.drawStringUtil_BasicPopupMenuPaintable.paintVerticle(graphics, this.label_BasicPopupMenuPaintable, x + this.BORDER_BasicPopupMenuPaintable, y + this.offset_BasicPopupMenuPaintable, 0);
        graphics.drawRect(x, y, width, height);
    }
}

namespace BasicPopupMenuPaintable
{
    const string NAME = "MENU";
}

