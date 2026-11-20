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

class Globals : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_Globals()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    Globals@ jinit_Globals()
    {
        this.jfields_Globals();
        return this;
    }
    

    void init(ClassLoader@ classLoader, string pathString)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        AppUrlGlobals@ appUrlGlobals = AppUrlGlobals().jinit_AppUrlGlobals();
        appUrlGlobals.setWebappPath(pathString);
        URLGLOBALS::init(appUrlGlobals);
        WebappClassLoaderInfo::setLoader(classLoader);
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ");
        stringBuffer.append(pathString);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(jClassName(classLoader));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("No Path Provided. Using Process Path: ");
            stringBuffer.append(pathString);
            stringBuffer.append(CommonSeps::getInstance().SPACE);
            stringBuffer.append(CommonSeps::getInstance().EQUALS);
            stringBuffer.append(CommonSeps::getInstance().SPACE);
            stringBuffer.append(URLGLOBALS::getWebappPath());
            this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        }
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append("Webapp Path Set To: ");
        stringBuffer.append(URLGLOBALS::getWebappPath());
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
    }
}

namespace Globals
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = Globals().jinit_Globals();
    }

    Globals@ jcell_instance;
    Globals@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(Globals@ value) property { jclinit(); @jcell_instance = value; }
    

    Globals@ getInstance()
    {
        return Globals::instance;
    }
}

