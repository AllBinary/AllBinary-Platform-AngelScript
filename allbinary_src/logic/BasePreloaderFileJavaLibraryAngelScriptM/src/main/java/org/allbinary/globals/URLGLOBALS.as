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
// package org.allbinary.globals

class URLGLOBALS : JObjectBase
{

    URLGLOBALS@ jinit_URLGLOBALS()
    {
        return this;
    }
}

namespace URLGLOBALS
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_urlGlobalsInterface = AppUrlGlobals::NULL_APP_URL_GLOBALS;
    }

    UrlGlobalsInterface@ jcell_urlGlobalsInterface;
    UrlGlobalsInterface@ get_urlGlobalsInterface() property { jclinit(); return jcell_urlGlobalsInterface; }
    void set_urlGlobalsInterface(UrlGlobalsInterface@ value) property { jclinit(); @jcell_urlGlobalsInterface = value; }
    

    void init(UrlGlobalsInterface@ urlGlobalsInterface)
    {
        @URLGLOBALS::urlGlobalsInterface = urlGlobalsInterface;
    }
    

    bool isTestingMode()
    {
        return URLGLOBALS::urlGlobalsInterface.isTestingMode();
    }
    

    string getWebappPath()
    {
        return URLGLOBALS::urlGlobalsInterface.getWebappPath();
    }
    

    string getTestHtmlPath()
    {
        return URLGLOBALS::urlGlobalsInterface.getTestHtmlPath();
    }
    

    string getMainPath()
    {
        return URLGLOBALS::urlGlobalsInterface.getMainPath();
    }
}

