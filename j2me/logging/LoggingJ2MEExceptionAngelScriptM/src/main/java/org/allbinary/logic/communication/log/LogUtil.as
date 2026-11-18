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
// package org.allbinary.logic.communication.log

//ActualPlatform
class LogUtil : JObjectBase
{
    LogFormatUtil@ logFormatUtil;
    string LOG_SUCCESS;

    // Java field initializers run after the super constructor
    void jfields_LogUtil()
    {
    @this.logFormatUtil = LogFormatUtil::getInstance();
    this.LOG_SUCCESS = "org.allbinary: ";
    }
    

    LogUtil@ jinit_LogUtil()
    {
        this.jfields_LogUtil();
        return this;
    }
    

    void putL(Log@ log)
    {
        if (log is LogFactory::LOG) {
            return;
        }
        JObject@ exception = log.getThrowable();
        if (exception is null) {
            return;
        }
        string specialMessage = log.getSpecialMessage();
        JObject@ anyType = log.getObject();
        string functionName = log.getFunctionName();
        this.put(specialMessage, anyType, functionName, exception);
    }
    

    void putF(string specialMessage, JObject@ anyType, string functionName)
    {
    }
    

    void putFS(string specialMessage, string className, string functionName)
    {
    }
    

    void put(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        string className = CommonStrings::getInstance().EMPTY;
        if (!jClassName(anyType).isEmpty()) {
            className = String::newString(jClassName(anyType));
        }
        string message = this.logFormatUtil.get(className, functionName, specialMessage, exception);
        System::out_print(this.LOG_SUCCESS);
        System::out_println(message);
    }
}

namespace LogUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LogUtil().jinit_LogUtil();
    }

    LogUtil@ jcell_instance;
    LogUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LogUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LogUtil@ getInstance()
    {
        return LogUtil::instance;
    }
}

