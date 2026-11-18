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

class AllBinaryNoVibration : AllBinaryVibrationME
{

    AllBinaryNoVibration@ jinit_AllBinaryNoVibration()
    {
        this.jinit_AllBinaryVibrationME();
        return this;
    }
    

    void vibrate(int duration, int type, int volume)
    {
    }
}

namespace AllBinaryNoVibration
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_VIBRATION = AllBinaryNoVibration().jinit_AllBinaryNoVibration();
    }

    AllBinaryVibrationME@ jcell_NO_VIBRATION;
    AllBinaryVibrationME@ get_NO_VIBRATION() property { jclinit(); return jcell_NO_VIBRATION; }
    void set_NO_VIBRATION(AllBinaryVibrationME@ value) property { jclinit(); @jcell_NO_VIBRATION = value; }
}

