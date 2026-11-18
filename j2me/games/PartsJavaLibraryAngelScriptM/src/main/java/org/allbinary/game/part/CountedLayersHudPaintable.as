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
// package org.allbinary.game.part

class CountedLayersHudPaintable : JObjectBase, PaintableInterface, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton;
    PartInterface@[]@ partInterfaceArray;
    int countedTotalStringColor;
    int countedPartsBorder;
    int startIndex;
    int dropSize;
    MyFontProcessor@ myFontProcessor;
    int height;

    // Java field initializers run after the super constructor
    void jfields_CountedLayersHudPaintable()
    {
    @this.displayInfoSingleton = DisplayInfoSingleton::getInstance();
    
    
    
    
    
    @this.myFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    }
    

    CountedLayersHudPaintable@ jinit_CountedLayersHudPaintable(PartInterface@[]@ partInterfaceArray, int dropSize, int startIndex, int countedTotalStringColor, int countedPartsBorder)
    {
        this.jfields_CountedLayersHudPaintable();
        @this.partInterfaceArray = partInterfaceArray;
        this.startIndex = startIndex;
        this.countedTotalStringColor = countedTotalStringColor;
        this.countedPartsBorder = countedPartsBorder;
        this.dropSize = dropSize;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.height = font.getHeight();
        if (this.dropSize > font.getHeight()) {
            this.height = this.dropSize;
        }
        if (CountedLayersHudPaintable::XXStringWidth == 0) {
            string XXString = "XX";
            CountedLayersHudPaintable::XXStringWidth = font.stringWidth(XXString);
        }
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        int lastWidth = this.displayInfoSingleton.getLastWidth();
        int widthEdge = lastWidth - this.dropSize;
        int size = int(this.partInterfaceArray.length());
        int count = 0;
        int y = 0;
        CountedLayerInterfaceFactoryPart@ countedLayerInterfaceFactory;
        PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface;
        AllBinaryLayer@ layerInterface;
        uint16[]@ charArray;
        for (int index = this.startIndex; index < size; index++) {
            @countedLayerInterfaceFactory = cast<CountedLayerInterfaceFactoryPart>(this.partInterfaceArray[index]);
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                @pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                @layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer();
                y = 40 + (count * this.height);
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics);
                graphics.setColor(this.countedTotalStringColor);
                countedLayerInterfaceFactory.paint(graphics);
                @charArray = countedLayerInterfaceFactory.getTotalString();
                graphics.drawChars(charArray, 0, int(charArray.length()), widthEdge - countedLayerInterfaceFactory.getXOffset(), y, 0);
                count++;
            }
        }
        if (count > 0) {
            graphics.setColor(this.countedPartsBorder);
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable::XXStringWidth + this.dropSize), 40, CountedLayersHudPaintable::XXStringWidth + this.dropSize, (count * this.height) + 3);
        }
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
}

namespace CountedLayersHudPaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_XXStringWidth = 0;
    }

    int jcell_XXStringWidth;
    int get_XXStringWidth() property { jclinit(); return jcell_XXStringWidth; }
    void set_XXStringWidth(int value) property { jclinit(); jcell_XXStringWidth = value; }
}

