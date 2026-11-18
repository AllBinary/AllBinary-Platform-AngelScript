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
// package org.allbinary.graphics.color

class SmallBasicColorCacheFactory : JObjectBase
{
    int SIZE;
    int[]@ INDEX_TO_COLOR;
    BasicColor@[]@ BASIC_COLOR_ARRAY;
    int colorIndex;

    // Java field initializers run after the super constructor
    void jfields_SmallBasicColorCacheFactory()
    {
    this.SIZE = 255;
    @this.INDEX_TO_COLOR = array<int>(this.SIZE);
    @this.BASIC_COLOR_ARRAY = array<BasicColor@>(this.SIZE);
    this.colorIndex = 0;
    }
    

    SmallBasicColorCacheFactory@ jinit_SmallBasicColorCacheFactory()
    {
        this.jfields_SmallBasicColorCacheFactory();
        return this;
    }
    

    void add(BasicColor@ basicDefaultColor)
    {
        @this.BASIC_COLOR_ARRAY[this.colorIndex] = basicDefaultColor;
        this.INDEX_TO_COLOR[this.colorIndex] = basicDefaultColor.intValue();
        this.colorIndex++;
    }
    

    BasicColor@ getAndOrCreate(int colorAsInt)
    {
        BasicColor@ basicColor;
        for (int index = 0; index < this.SIZE; index++) {
            if (this.INDEX_TO_COLOR[index] == colorAsInt) {
                return this.BASIC_COLOR_ARRAY[index];
            }
        }
        int ALPHA_MASK = int(0xFF000000);
        @basicColor = BasicColorFactory::getInstance().createInstanceAN(colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil::getInstance().EMPTY_STRING);
        this.add(basicColor);
        return basicColor;
    }
}

namespace SmallBasicColorCacheFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SmallBasicColorCacheFactory().jinit_SmallBasicColorCacheFactory();
    }

    SmallBasicColorCacheFactory@ jcell_instance;
    SmallBasicColorCacheFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SmallBasicColorCacheFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SmallBasicColorCacheFactory@ getInstance()
    {
        return SmallBasicColorCacheFactory::instance;
    }
}

