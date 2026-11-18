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
class LogFormatUtil : JObjectBase
{
    TimeStampUtil@ timeStampUtil;
    CommonSeps@ commonSeps;
    string NONE;
    string LOG_ERROR;
    string EMPTY;
    string STACK_TRACE;
    string TIME;
    string CLASS_NAME;
    string FUNCTION_CALL;
    string SPECIAL_MESSAGE;
    StringUtil@ stringUtil;
    ExceptionUtil@ exceptionUtil;
    NullUtil@ nullUtil;

    // Java field initializers run after the super constructor
    void jfields_LogFormatUtil()
    {
    @this.timeStampUtil = TimeStampUtil::getInstance();
    @this.commonSeps = CommonSeps::getInstance();
    this.NONE = "None";
    this.LOG_ERROR = "\nLog-Error: ";
    this.EMPTY = "Empty";
    this.STACK_TRACE = "\nStack Trace: ";
    this.TIME = "Time: ";
    this.CLASS_NAME = this.commonSeps.SPACE;
    this.FUNCTION_CALL = CommonLabels::getInstance().COLON_SEP;
    this.SPECIAL_MESSAGE = "> ";
    @this.stringUtil = StringUtil::getInstance();
    @this.exceptionUtil = ExceptionUtil::getInstance();
    @this.nullUtil = NullUtil::getInstance();
    }
    

    LogFormatUtil@ jinit_LogFormatUtil()
    {
        this.jfields_LogFormatUtil();
        return this;
    }
    

    string get(string className, string functionName, string specialMessage, JObject@ exception)
    {
        StringMaker@ stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.getO(exception));
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    string getS(string className, string functionName, string specialMessage)
    {
        StringMaker@ stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    StringMaker@ getF(string className, string functionName)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.TIME);
        stringBuffer.append(this.timeStampUtil.getAsString());
        stringBuffer.append(this.CLASS_NAME);
        stringBuffer.append(className);
        stringBuffer.append(this.FUNCTION_CALL);
        stringBuffer.append(functionName);
        return stringBuffer;
    }
    

    string getO(JObject@ exception)
    {
        if (exception !is this.nullUtil.NULL_OBJECT) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.LOG_ERROR);
            string exceptionAsString = exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(this.STACK_TRACE);
            if (exception !is this.nullUtil.NULL_OBJECT) {
                stringBuffer.append(this.exceptionUtil.getStackTrace(cast<Throwable>(exception)));
            } else {
                stringBuffer.append(this.stringUtil.NULL_STRING);
            }
            return stringBuffer.toString();
        } else {
            return StringUtil::getInstance().EMPTY_STRING;
        }
        return "";
    }
}

namespace LogFormatUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LogFormatUtil().jinit_LogFormatUtil();
    }

    LogFormatUtil@ jcell_instance;
    LogFormatUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LogFormatUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LogFormatUtil@ getInstance()
    {
        return LogFormatUtil::instance;
    }
}

