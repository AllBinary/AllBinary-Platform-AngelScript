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
    MyFontProcessor@ updateMyFontProcessor_CountedLayerInterfaceFactoryPart;
    MyFontProcessor@ myFontProcessor_CountedLayerInterfaceFactoryPart;
    Animation@ animationInterface_CountedLayerInterfaceFactoryPart;
    int total_CountedLayerInterfaceFactoryPart;
    uint16[]@ totalString_CountedLayerInterfaceFactoryPart;
    int xOffset_CountedLayerInterfaceFactoryPart;
    CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory_CountedLayerInterfaceFactoryPart;
    PrimitiveLongUtil@ primitiveLongUtil_CountedLayerInterfaceFactoryPart;

    // Java field initializers run after the super constructor
    void jfields_CountedLayerInterfaceFactoryPart()
    {
    @this.updateMyFontProcessor_CountedLayerInterfaceFactoryPart = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_CountedLayerInterfaceFactoryPart = this.updateMyFontProcessor_CountedLayerInterfaceFactoryPart;
    @this.animationInterface_CountedLayerInterfaceFactoryPart = NullAnimationFactory::getFactoryInstance().getInstance(0);
    
    @this.totalString_CountedLayerInterfaceFactoryPart = NullUtil::getInstance().NULL_CHAR_ARRAY;
    
    @this.countedPickedUpLayerInterfaceFactory_CountedLayerInterfaceFactoryPart = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
    }
    

    CountedLayerInterfaceFactoryPart@ jinit_CountedLayerInterfaceFactoryPart(int total, CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        this.jfields_CountedLayerInterfaceFactoryPart();
        @this.primitiveLongUtil_CountedLayerInterfaceFactoryPart = PrimitiveLongUtil::createPowerOfTen(1000);
        this.init(total, countedPickedUpLayerInterfaceFactory);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.setXOffset(font.charsWidth(this.totalString_CountedLayerInterfaceFactoryPart, 0, this.primitiveLongUtil_CountedLayerInterfaceFactoryPart.getCurrentTotalDigits()) + (font.getSize() >>> 1));
        @this.myFontProcessor_CountedLayerInterfaceFactoryPart = MyFontProcessor::getInstance();
    }
    

    void init(int total, CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory);
        this.total_CountedLayerInterfaceFactoryPart = total;
    }
    

    AllBinaryLayer@ getInstance(ABHashtable@ hashtable, int x, int y, int z)
    {
        if (this.total_CountedLayerInterfaceFactoryPart > 0) {
            this.setTotal(this.total_CountedLayerInterfaceFactoryPart - 1);
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z);
        } else {
            jthrow(Exception().jinit_Exception("No more left. Could use a listener to automatically remove"));
        }
        return null;
    }
    

    int getTotal()
    {
        return this.total_CountedLayerInterfaceFactoryPart;
    }
    

    void setTotal(int total)
    {
        this.total_CountedLayerInterfaceFactoryPart = total;
        @this.totalString_CountedLayerInterfaceFactoryPart = this.primitiveLongUtil_CountedLayerInterfaceFactoryPart.getCharArray(total);
        @this.myFontProcessor_CountedLayerInterfaceFactoryPart = this.updateMyFontProcessor_CountedLayerInterfaceFactoryPart;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_CountedLayerInterfaceFactoryPart.process(graphics);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface_CountedLayerInterfaceFactoryPart;
    }
    

    void setAnimationInterface(Animation@ animationInterface)
    {
        @this.animationInterface_CountedLayerInterfaceFactoryPart = animationInterface;
    }
    

    int getXOffset()
    {
        return this.xOffset_CountedLayerInterfaceFactoryPart;
    }
    

    void setXOffset(int totalStringWidth)
    {
        this.xOffset_CountedLayerInterfaceFactoryPart = totalStringWidth;
    }
    

    uint16[]@ getTotalString()
    {
        return this.totalString_CountedLayerInterfaceFactoryPart;
    }
    

    CountedPickedUpLayerInterfaceFactory@ getCountedPickedUpLayerInterfaceFactory()
    {
        return this.countedPickedUpLayerInterfaceFactory_CountedLayerInterfaceFactoryPart;
    }
    

    void setCountedPickedUpLayerInterfaceFactory(CountedPickedUpLayerInterfaceFactory@ countedPickedUpLayerInterfaceFactory)
    {
        @this.countedPickedUpLayerInterfaceFactory_CountedLayerInterfaceFactoryPart = countedPickedUpLayerInterfaceFactory;
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

