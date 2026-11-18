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
// package org.allbinary.time

//ActualPlatform
class TimeStampUtil : JObjectBase
{
    SimpleDateFormat@ simpleDataFormat;

    // Java field initializers run after the super constructor
    void jfields_TimeStampUtil()
    {
    @this.simpleDataFormat = SimpleDateFormat().jinit_SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    }
    

    TimeStampUtil@ jinit_TimeStampUtil()
    {
        this.jfields_TimeStampUtil();
        return this;
    }
    

    string getAsString()
    {
        Calendar@ calendar = Calendar::getInstance();
        Date@ date = calendar.getTime();
        return this.simpleDataFormat.format(date);
    }
}

namespace TimeStampUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TimeStampUtil().jinit_TimeStampUtil();
    }

    TimeStampUtil@ jcell_instance;
    TimeStampUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TimeStampUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    TimeStampUtil@ getInstance()
    {
        return TimeStampUtil::instance;
    }
}

