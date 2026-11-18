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
// package org.allbinary.logic.communication.http

class HttpData : JObjectBase
{
    string EQUALS;
    string PARAM_SEP;
    string URL_PARAM_SEP;
    string URL_LABEL;

    // Java field initializers run after the super constructor
    void jfields_HttpData()
    {
    
    
    
    this.URL_LABEL = "Url: ";
    }
    

    HttpData@ jinit_HttpData()
    {
        this.jfields_HttpData();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.PARAM_SEP = commonSeps.AMPERSAND;
        this.URL_PARAM_SEP = commonSeps.QUESTION;
        return this;
    }
}

namespace HttpData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = HttpData().jinit_HttpData();
    }

    HttpData@ jcell_instance;
    HttpData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HttpData@ value) property { jclinit(); @jcell_instance = value; }
    

    HttpData@ getInstance()
    {
        return HttpData::instance;
    }
}

