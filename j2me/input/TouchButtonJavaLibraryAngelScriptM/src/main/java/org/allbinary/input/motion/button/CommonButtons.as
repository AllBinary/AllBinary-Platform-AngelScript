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
// package org.allbinary.input.motion.button

class CommonButtons : JObjectBase
{
    int STANDARD_BUTTON_SIZE;
    Rectangle@ NORMAL_BUTTON;
    Rectangle@ LARGE_BUTTON;
    

    CommonButtons@ jinit_CommonButtons()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        int commonButtonSize = 128;
        while (commonButtonSize > 64) {
            int totalColumns = displayInfo.getLastWidth() / commonButtonSize;
            int totalRows = displayInfo.getLastHeight() / commonButtonSize;
            int max = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >>> 1;
        }
        this.STANDARD_BUTTON_SIZE = commonButtonSize;
        @this.NORMAL_BUTTON = Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE);
        @this.LARGE_BUTTON = Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE << 1, this.STANDARD_BUTTON_SIZE << 1);
        return this;
    }
}

namespace CommonButtons
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonButtons().jinit_CommonButtons();
    }

    CommonButtons@ jcell_instance;
    CommonButtons@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonButtons@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonButtons@ getInstance()
    {
        return CommonButtons::instance;
    }
}

