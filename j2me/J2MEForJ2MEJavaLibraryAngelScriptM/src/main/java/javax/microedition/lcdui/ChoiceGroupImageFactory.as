/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

class ChoiceGroupImageFactory : JObjectBase
{
    int8[]@ multiOff_ChoiceGroupImageFactory;
    int8[]@ multiOn_ChoiceGroupImageFactory;
    int8[]@ radioOff_ChoiceGroupImageFactory;
    int8[]@ radioOn_ChoiceGroupImageFactory;
    MIDPUtil@ midpUtil_ChoiceGroupImageFactory;
    Image@ imgMultiOffO_ChoiceGroupImageFactory;
    Image@ imgMultiOnO_ChoiceGroupImageFactory;
    Image@ imgRadioOffO_ChoiceGroupImageFactory;
    Image@ imgRadioOnO_ChoiceGroupImageFactory;
    Image@ imgMultiOff;
    Image@ imgMultiOn;
    Image@ imgRadioOff;
    Image@ imgRadioOn;
    Image@[]@ imageArray_ChoiceGroupImageFactory;

    // Java field initializers run after the super constructor
    void jfields_ChoiceGroupImageFactory()
    {
    @this.multiOff_ChoiceGroupImageFactory = array<int8> = {int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, int8(-12), int8(-117), 0, 0, 0, 6, 80, 76, 84, 69, int8(-1), int8(-1), int8(-1), int8(-69), int8(-69), int8(-69), int8(-57), 75, int8(-33), int8(-8), 0, 0, 0, 30, 73, 68, 65, 84, 120, int8(-38), 99, 96, 96, 96, 96, 12, 101, int8(-8), int8(-51), int8(-32), int8(-64), 32, int8(-64), int8(-60), int8(-64), int8(-64), int8(-128), 11, 51, int8(-122), 50, int8(-4), 6, 0, 63, 116, 3, 1, 53, int8(-108), 39, int8(-26), 0, 0, 0, 0, 73, 69, 78, 68, int8(-82), 66, 96, int8(-126)};
    @this.multiOn_ChoiceGroupImageFactory = array<int8> = {int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, int8(-12), int8(-117), 0, 0, 0, 12, 80, 76, 84, 69, int8(-1), int8(-1), int8(-1), int8(-69), int8(-69), int8(-69), 106, 106, 106, 2, 2, 2, 106, int8(-103), 14, int8(-47), 0, 0, 0, 53, 73, 68, 65, 84, 120, int8(-38), 99, 96, 96, 124, int8(-64), int8(-16), int8(-1), int8(-77), 3, int8(-45), 65, int8(-111), 15, 76, 12, 108, 12, 76, 12, int8(-4), 12, 76, 12, 18, 12, 76, int8(-68), 127, 24, int8(-104), 126, 45, 96, 96, int8(-7), int8(-11), int8(-109), int8(-127), int8(-23), int8(-65), 3, 3, int8(-29), 127, int8(-122), int8(-113), 0, 5, 37, 12, int8(-34), 1, int8(-99), int8(-83), 100, 0, 0, 0, 0, 73, 69, 78, 68, int8(-82), 66, 96, int8(-126)};
    @this.radioOff_ChoiceGroupImageFactory = array<int8> = {int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, int8(-44), int8(-62), int8(-97), int8(-75), 0, 0, 0, 9, 80, 76, 84, 69, int8(-1), int8(-1), int8(-1), int8(-69), int8(-69), int8(-69), 106, 106, 106, int8(-44), 13, int8(-1), int8(-24), 0, 0, 0, 42, 73, 68, 65, 84, 120, int8(-38), 99, 96, 90, int8(-59), int8(-64), 32, int8(-63), 48, int8(-127), 65, int8(-127), 65, int8(-127), 41, int8(-127), int8(-31), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, int8(-6), int8(-63), 80, int8(-64), int8(-64), int8(-76), int8(-118), 1, 0, 113, 24, 5, 61, 73, int8(-68), int8(-100), 98, 0, 0, 0, 0, 73, 69, 78, 68, int8(-82), 66, 96, int8(-126)};
    @this.radioOn_ChoiceGroupImageFactory = array<int8> = {int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, int8(-44), int8(-62), int8(-97), int8(-75), 0, 0, 0, 12, 80, 76, 84, 69, int8(-1), int8(-1), int8(-1), int8(-69), int8(-69), int8(-69), 106, 106, 106, 2, 2, 2, 106, int8(-103), 14, int8(-47), 0, 0, 0, 50, 73, 68, 65, 84, 120, int8(-38), 5, int8(-63), 65, 13, 0, 32, 12, 4, int8(-63), int8(-19), int8(-11), int8(-117), 1, 18, 68, int8(-100), 10, 52, 19, 94, 72, 64, 17, 101, int8(-122), 44, int8(-44), int8(-29), 98, int8(-52), 89, 77, int8(-102), 40, 2, 85, int8(-95), int8(-73), int8(-63), int8(-104), int8(-63), 37, int8(-117), 15, int8(-40), 119, 10, 41, 78, 26, int8(-79), 59, 0, 0, 0, 0, 73, 69, 78, 68, int8(-82), 66, 96, int8(-126)};
    @this.midpUtil_ChoiceGroupImageFactory = MIDPUtil::getInstance();
    @this.imgMultiOffO_ChoiceGroupImageFactory = this.midpUtil_ChoiceGroupImageFactory.createImageFromByteArray(this.multiOff_ChoiceGroupImageFactory, 0, int(this.multiOff_ChoiceGroupImageFactory.length()));
    @this.imgMultiOnO_ChoiceGroupImageFactory = this.midpUtil_ChoiceGroupImageFactory.createImageFromByteArray(this.multiOn_ChoiceGroupImageFactory, 0, int(this.multiOn_ChoiceGroupImageFactory.length()));
    @this.imgRadioOffO_ChoiceGroupImageFactory = this.midpUtil_ChoiceGroupImageFactory.createImageFromByteArray(this.radioOff_ChoiceGroupImageFactory, 0, int(this.radioOff_ChoiceGroupImageFactory.length()));
    @this.imgRadioOnO_ChoiceGroupImageFactory = this.midpUtil_ChoiceGroupImageFactory.createImageFromByteArray(this.radioOn_ChoiceGroupImageFactory, 0, int(this.radioOn_ChoiceGroupImageFactory.length()));
    @this.imgMultiOff = this.imgMultiOffO_ChoiceGroupImageFactory;
    @this.imgMultiOn = this.imgMultiOnO_ChoiceGroupImageFactory;
    @this.imgRadioOff = this.imgRadioOffO_ChoiceGroupImageFactory;
    @this.imgRadioOn = this.imgRadioOnO_ChoiceGroupImageFactory;
    @this.imageArray_ChoiceGroupImageFactory = array<Image@> = {this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn};
    }

    ChoiceGroupImageFactory@ jinit_ChoiceGroupImageFactory()
    {
        this.jfields_ChoiceGroupImageFactory();
        return this;
    }
    

    Image@[]@ getImageArray()
    {
        return this.imageArray_ChoiceGroupImageFactory;
    }
    

    void init(Image@[]@ imageArray)
    {
        @this.imgMultiOff = imageArray[0];
        @this.imageArray_ChoiceGroupImageFactory[0] = this.imgMultiOff;
        @this.imgMultiOn = imageArray[1];
        @this.imageArray_ChoiceGroupImageFactory[1] = this.imgMultiOn;
        @this.imgRadioOff = imageArray[2];
        @this.imageArray_ChoiceGroupImageFactory[2] = this.imgRadioOff;
        @this.imgRadioOn = imageArray[3];
        @this.imageArray_ChoiceGroupImageFactory[3] = this.imgRadioOn;
    }
}

namespace ChoiceGroupImageFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ChoiceGroupImageFactory().jinit_ChoiceGroupImageFactory();
    }

    ChoiceGroupImageFactory@ jcell_instance;
    ChoiceGroupImageFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ChoiceGroupImageFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ChoiceGroupImageFactory@ getInstance()
    {
        return ChoiceGroupImageFactory::instance;
    }
}

