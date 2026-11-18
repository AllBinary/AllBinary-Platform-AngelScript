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

//implements
class AppUrlGlobals : UrlGlobalsInterface
{
    string path_AppUrlGlobals;

    // Java field initializers run after the super constructor
    void jfields_AppUrlGlobals()
    {
    this.path_AppUrlGlobals = StringUtil::getInstance().EMPTY_STRING;
    }

    AppUrlGlobals@ jinit_AppUrlGlobals()
    {
        this.jinit_UrlGlobalsInterface();
        this.jfields_AppUrlGlobals();
        return this;
    }
    

    bool isTestingMode()
    {
        return false;
    }
    

    string getWebappPath()
    {
        return this.path_AppUrlGlobals;
    }
    

    void setWebappPath(string path)
    {
        this.path_AppUrlGlobals = path;
        if (!(String::endsWith(this.path_AppUrlGlobals, "\\") || String::endsWith(this.path_AppUrlGlobals, "/"))) {
            this.path_AppUrlGlobals = this.path_AppUrlGlobals + "\\";
        }
    }
    

    string getTestHtmlPath()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    string getMainPath()
    {
        return this.path_AppUrlGlobals;
    }
}

namespace AppUrlGlobals
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_APP_URL_GLOBALS = AppUrlGlobals().jinit_AppUrlGlobals();
    }

    AppUrlGlobals@ jcell_NULL_APP_URL_GLOBALS;
    AppUrlGlobals@ get_NULL_APP_URL_GLOBALS() property { jclinit(); return jcell_NULL_APP_URL_GLOBALS; }
    void set_NULL_APP_URL_GLOBALS(AppUrlGlobals@ value) property { jclinit(); @jcell_NULL_APP_URL_GLOBALS = value; }
}

