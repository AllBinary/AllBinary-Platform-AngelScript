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
// package org.allbinary.media

class AllBinaryVibration : AllBinaryVibrationME
{
    

    AllBinaryVibration@ jinit_AllBinaryVibration()
    {
        this.jinit_AllBinaryVibrationME();
        return this;
    }
    

    void vibrate(int duration, int type, int volume)
    {
    }
}

namespace AllBinaryVibration
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_VIBRATION = AllBinaryNoVibration::NO_VIBRATION;
    }

    AllBinaryVibrationME@ jcell_VIBRATION;
    AllBinaryVibrationME@ get_VIBRATION() property { jclinit(); return jcell_VIBRATION; }
    void set_VIBRATION(AllBinaryVibrationME@ value) property { jclinit(); @jcell_VIBRATION = value; }
    

    AllBinaryVibrationME@ getInstance()
    {
        return AllBinaryVibration::VIBRATION;
    }
    

    void init()
    {
        if (GameConfigurationCentral::getInstance().VIBRATION.getValue().intValue() == 0) {
            @AllBinaryVibration::VIBRATION = AllBinaryNoVibration::NO_VIBRATION;
        } else {
            @AllBinaryVibration::VIBRATION = AllBinaryVibration().jinit_AllBinaryVibration();
        }
    }
}

