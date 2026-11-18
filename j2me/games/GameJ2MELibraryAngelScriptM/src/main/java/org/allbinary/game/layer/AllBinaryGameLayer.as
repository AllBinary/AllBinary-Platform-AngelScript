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
// package org.allbinary.game.layer

class AllBinaryGameLayer : AllBinaryLayer, ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface
{
    CommonStrings@ commonStrings;
    BasicColorSetUtil@ basicSetColorUtil;
    BasicColor@ RED;
    Paintable@ paintable_AllBinaryGameLayer;
    BasicArrayList@ gameKeyEventList_AllBinaryGameLayer;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryGameLayer()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.RED = BasicColorFactory::getInstance().RED;
    @this.paintable_AllBinaryGameLayer = AllBinaryGameLayer::createPaintable();
    @this.gameKeyEventList_AllBinaryGameLayer = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AllBinaryGameLayer@ jinit_AllBinaryGameLayer(string name, Rectangle@ layerInfo, ViewPositionBase@ viewPosition)
    {
        this.jinit_AllBinaryLayer(name, layerInfo, viewPosition);
        this.jfields_AllBinaryGameLayer();
        return this;
    }
    

    void set(GL@ gl)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void move()
    {
    }
    

    BasicArrayList@ getGameKeyEventList()
    {
        return this.gameKeyEventList_AllBinaryGameLayer;
    }
    

    void processInput(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void processTick(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onViewPositionChangeEvent()
    {
        this.onChangeEvent(this.viewPositionEvent);
    }
    

    void onChangeEvent(ViewPositionEvent@ layerManagerEvent)
    {
        if (GameLayerUtil::isOnScreen(this)) {
            this.setVisible(true);
        } else {
            this.setVisible(false);
        }
    }
    

    void paintFirst(Graphics@ graphics)
    {
        this.paintable_AllBinaryGameLayer.paint(graphics);
    }
    

    void paintDebug(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.getViewPosition();
        int viewX = viewPosition.getX();
        int viewY = viewPosition.getY();
        this.basicSetColorUtil.setBasicColorP(graphics, this.RED);
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight());
    }
    

    void setWidth(int width)
    {
        AllBinaryLayer::setLayerWidth(width);
        this.setHalfWidth(width >>> 1);
    }
    

    void setHeight(int height)
    {
        AllBinaryLayer::setLayerHeight(height);
        this.setHalfHeight(height >>> 1);
    }
}

namespace AllBinaryGameLayer
{
    

    Paintable@ createPaintable()
    {
        if (SWTUtil::isSWT) {
            return SWTBlackPaintable().jinit_SWTBlackPaintable();
        }
        return NullPaintable::getInstance();
    }
}

