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

class CountedLayerInterfaceFactoryPart : JObjectBase, PartInterface, UpdateMyFontInterface
{
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    Animation@ animationInterface;
    int total;
    uint16[]@ totalString;
    int xOffset;
    CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory;
    PrimitiveLongUtil@ primitiveLongUtil;

    // Java field initializers run after the super constructor
    void jfields_CountedLayerInterfaceFactoryPart()
    {
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    @this.animationInterface = NullAnimationFactory::getFactoryInstance().getInstance(0);
    
    @this.totalString = NullUtil::getInstance().NULL_CHAR_ARRAY;
    
    @this.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
    }
    

    CountedLayerInterfaceFactoryPart@ jinit_CountedLayerInterfaceFactoryPart(int total, CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        this.jfields_CountedLayerInterfaceFactoryPart();
        @this.primitiveLongUtil = PrimitiveLongUtil::createPowerOfTen(1000);
        this.init(total, countedPickedUpLayerInterfaceFactory);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.setXOffset(font.charsWidth(this.totalString, 0, this.primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >>> 1));
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void init(int total, CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory);
        this.total = total;
    }
    

    AllBinaryLayer@ getInstance(ABHashtable@ hashtable, int x, int y, int z)
    {
        if (this.total > 0) {
            this.setTotal(this.total - 1);
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z);
        } else {
            jthrow(Exception().jinit_Exception("No more left. Could use a listener to automatically remove"));
        }
        return null;
    }
    

    int getTotal()
    {
        return this.total;
    }
    

    void setTotal(int total)
    {
        this.total = total;
        @this.totalString = this.primitiveLongUtil.getCharArray(total);
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface;
    }
    

    void setAnimationInterface(Animation@ animationInterface)
    {
        @this.animationInterface = animationInterface;
    }
    

    int getXOffset()
    {
        return this.xOffset;
    }
    

    void setXOffset(int totalStringWidth)
    {
        this.xOffset = totalStringWidth;
    }
    

    uint16[]@ getTotalString()
    {
        return this.totalString;
    }
    

    CountedPickedUpLayerInterfaceFactory@ getCountedPickedUpLayerInterfaceFactory()
    {
        return this.countedPickedUpLayerInterfaceFactory;
    }
    

    void setCountedPickedUpLayerInterfaceFactory(CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        @this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
    }
}

namespace CountedLayerInterfaceFactoryPart
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY = CountedLayerInterfaceFactoryPart().jinit_CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY);
    }

    CountedLayerInterfaceFactoryPart@ jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    CountedLayerInterfaceFactoryPart@ get_NULL_COUNTED_LAYER_INTERFACE_FACTORY() property { jclinit(); return jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY; }
    void set_NULL_COUNTED_LAYER_INTERFACE_FACTORY(CountedLayerInterfaceFactoryPart@ value) property { jclinit(); @jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY = value; }
}

