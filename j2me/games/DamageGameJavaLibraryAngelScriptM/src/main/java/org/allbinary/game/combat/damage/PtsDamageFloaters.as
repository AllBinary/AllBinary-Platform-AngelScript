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
// package org.allbinary.game.combat.damage

class PtsDamageFloaters : DamageFloaters
{
    BasicColorSetUtil@ basicSetColorUtil;
    AllBinaryLayer@ layerInterface_PtsDamageFloaters;
    int[]@ lastDamage_PtsDamageFloaters;
    uint16[]@[]@ lastDamageString_PtsDamageFloaters;
    int[]@ lastDamageStringSizeArray_PtsDamageFloaters;
    CircularIndexUtil@ circularIndexUtil_PtsDamageFloaters;
    PrimitiveLongUtil@ primitiveLongUtil_PtsDamageFloaters;
    MyRandomFactory@ myRandomFactory_PtsDamageFloaters;

    // Java field initializers run after the super constructor
    void jfields_PtsDamageFloaters()
    {
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    
    @this.lastDamage_PtsDamageFloaters = array<int>(5);
    @this.lastDamageString_PtsDamageFloaters = jnewArray2_Char(5, 0);
    @this.lastDamageStringSizeArray_PtsDamageFloaters = array<int>(5);
    @this.circularIndexUtil_PtsDamageFloaters = CircularIndexUtil::createInstance(5);
    
    @this.myRandomFactory_PtsDamageFloaters = MyRandomFactory::getInstance();
    }
    

    PtsDamageFloaters@ jinit_PtsDamageFloaters(AllBinaryLayer@ layerInterface)
    {
        this.jinit_DamageFloaters();
        this.jfields_PtsDamageFloaters();
        @this.primitiveLongUtil_PtsDamageFloaters = PrimitiveLongUtil::createPowerOfTen(100000);
        @this.layerInterface_PtsDamageFloaters = layerInterface;
        uint16[]@ CHAR_ARRAY = CharArrayFactory::getInstance().getZeroCharArray();
        for (int index = int(this.lastDamageString_PtsDamageFloaters.length()) - 1; index >= 0; index--) {
            @this.lastDamageString_PtsDamageFloaters[index] = CHAR_ARRAY;
        }
        return this;
    }
    

    void add(int damage)
    {
        int index = this.circularIndexUtil_PtsDamageFloaters.getIndex();
        this.lastDamage_PtsDamageFloaters[index] = damage;
        @this.lastDamageString_PtsDamageFloaters[index] = this.primitiveLongUtil_PtsDamageFloaters.getCharArray(this.lastDamage_PtsDamageFloaters[index]);
        this.lastDamageStringSizeArray_PtsDamageFloaters[index] = this.primitiveLongUtil_PtsDamageFloaters.getCurrentTotalDigits();
        this.circularIndexUtil_PtsDamageFloaters.next();
    }
    

    void paint(Graphics@ graphics)
    {
        ViewPositionBase@ viewPosition = this.layerInterface_PtsDamageFloaters.getViewPosition();
        int x = viewPosition.getX();
        int y = viewPosition.getY();
        for (int index = int(this.lastDamage_PtsDamageFloaters.length()) - 1; index >= 0; index--) {
            if (this.lastDamage_PtsDamageFloaters[index] != 0) {
                int delta = 10 * (index + 2);
                this.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters::basicColorArrayIndexer.get());
                graphics.drawChars(this.lastDamageString_PtsDamageFloaters[index], 0, this.lastDamageStringSizeArray_PtsDamageFloaters[index], x - this.myRandomFactory_PtsDamageFloaters.getNextInt(delta), y - delta, 0);
                PtsDamageFloaters::basicColorArrayIndexer.next();
            }
            this.lastDamage_PtsDamageFloaters[index] = 0;
        }
    }
}

namespace PtsDamageFloaters
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_basicColorArrayIndexer = BasicColorArrayIndexer().jinit_BasicColorArrayIndexer(array<BasicColor@> = {BasicColorFactory::getInstance().WHITE, BasicColorFactory::getInstance().RED, BasicColorFactory::getInstance().YELLOW, BasicColorFactory::getInstance().BLUE});
    }

    BasicColorArrayIndexer@ jcell_basicColorArrayIndexer;
    BasicColorArrayIndexer@ get_basicColorArrayIndexer() property { jclinit(); return jcell_basicColorArrayIndexer; }
    void set_basicColorArrayIndexer(BasicColorArrayIndexer@ value) property { jclinit(); @jcell_basicColorArrayIndexer = value; }
}

