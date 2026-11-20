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
    DisplayInfoSingleton@ displayInfoSingleton_CountedLayersHudPaintable;
    PartInterface@[]@ partInterfaceArray_CountedLayersHudPaintable;
    int countedTotalStringColor_CountedLayersHudPaintable;
    int countedPartsBorder_CountedLayersHudPaintable;
    int startIndex_CountedLayersHudPaintable;
    int dropSize_CountedLayersHudPaintable;
    MyFontProcessor@ myFontProcessor_CountedLayersHudPaintable;
    int height_CountedLayersHudPaintable;

    // Java field initializers run after the super constructor
    void jfields_CountedLayersHudPaintable()
    {
    @this.displayInfoSingleton_CountedLayersHudPaintable = DisplayInfoSingleton::getInstance();
    
    
    
    
    
    @this.myFontProcessor_CountedLayersHudPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    }
    

    CountedLayersHudPaintable@ jinit_CountedLayersHudPaintable(PartInterface@[]@ partInterfaceArray, int dropSize, int startIndex, int countedTotalStringColor, int countedPartsBorder)
    {
        this.jfields_CountedLayersHudPaintable();
        @this.partInterfaceArray_CountedLayersHudPaintable = partInterfaceArray;
        this.startIndex_CountedLayersHudPaintable = startIndex;
        this.countedTotalStringColor_CountedLayersHudPaintable = countedTotalStringColor;
        this.countedPartsBorder_CountedLayersHudPaintable = countedPartsBorder;
        this.dropSize_CountedLayersHudPaintable = dropSize;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.height_CountedLayersHudPaintable = font.getHeight();
        if (this.dropSize_CountedLayersHudPaintable > font.getHeight()) {
            this.height_CountedLayersHudPaintable = this.dropSize_CountedLayersHudPaintable;
        }
        if (CountedLayersHudPaintable::XXStringWidth == 0) {
            string XXString = "XX";
            CountedLayersHudPaintable::XXStringWidth = font.stringWidth(XXString);
        }
        @this.myFontProcessor_CountedLayersHudPaintable = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_CountedLayersHudPaintable.process(graphics);
        int lastWidth = this.displayInfoSingleton_CountedLayersHudPaintable.getLastWidth();
        int widthEdge = lastWidth - this.dropSize_CountedLayersHudPaintable;
        int size = int(this.partInterfaceArray_CountedLayersHudPaintable.length());
        int count = 0;
        int y = 0;
        CountedLayerInterfaceFactoryPart@ countedLayerInterfaceFactory;
        PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface;
        AllBinaryLayer@ layerInterface;
        uint16[]@ charArray;
        for (int index = this.startIndex_CountedLayersHudPaintable; index < size; index++) {
            @countedLayerInterfaceFactory = cast<CountedLayerInterfaceFactoryPart>(this.partInterfaceArray_CountedLayersHudPaintable[index]);
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                @pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                @layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer();
                y = 40 + (count * this.height_CountedLayersHudPaintable);
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics);
                graphics.setColor(this.countedTotalStringColor_CountedLayersHudPaintable);
                countedLayerInterfaceFactory.paint(graphics);
                @charArray = countedLayerInterfaceFactory.getTotalString();
                graphics.drawChars(charArray, 0, int(charArray.length()), widthEdge - countedLayerInterfaceFactory.getXOffset(), y, 0);
                count++;
            }
        }
        if (count > 0) {
            graphics.setColor(this.countedPartsBorder_CountedLayersHudPaintable);
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable::XXStringWidth + this.dropSize_CountedLayersHudPaintable), 40, CountedLayersHudPaintable::XXStringWidth + this.dropSize_CountedLayersHudPaintable, (count * this.height_CountedLayersHudPaintable) + 3);
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
    int jpostAdd_XXStringWidth(int delta) { jclinit(); int old = jcell_XXStringWidth; jcell_XXStringWidth = int(old + delta); return old; }
}

