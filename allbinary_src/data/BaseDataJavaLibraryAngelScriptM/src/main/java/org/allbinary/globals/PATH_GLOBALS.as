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

class PATH_GLOBALS : JObjectBase
{
    string DATA_PATH;
    string INIT_PATH;
    string VIEWS_PATH;
    string LOG_PATH;
    string BACKUP_PATH;
    

    PATH_GLOBALS@ jinit_PATH_GLOBALS()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        AbPathData@ abPathData = AbPathData::getInstance();
        stringBuffer.append("data");
        stringBuffer.append(abPathData.SEPARATOR);
        this.DATA_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append(CommonStrings::getInstance().INIT);
        stringBuffer.append(abPathData.SEPARATOR);
        this.INIT_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("log");
        stringBuffer.append(abPathData.SEPARATOR);
        this.LOG_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("backup");
        stringBuffer.append(abPathData.SEPARATOR);
        this.BACKUP_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.INIT_PATH);
        stringBuffer.append("views");
        stringBuffer.append(abPathData.SEPARATOR);
        this.VIEWS_PATH = stringBuffer.toString();
        return this;
    }
}

namespace PATH_GLOBALS
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PATH_GLOBALS().jinit_PATH_GLOBALS();
    }

    PATH_GLOBALS@ jcell_instance;
    PATH_GLOBALS@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PATH_GLOBALS@ value) property { jclinit(); @jcell_instance = value; }
    

    PATH_GLOBALS@ getInstance()
    {
        return PATH_GLOBALS::instance;
    }
}

