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
    TimeStampUtil@ timeStampUtil_LogFormatUtil;
    CommonSeps@ commonSeps_LogFormatUtil;
    string NONE_LogFormatUtil;
    string LOG_ERROR_LogFormatUtil;
    string EMPTY_LogFormatUtil;
    string STACK_TRACE_LogFormatUtil;
    string TIME_LogFormatUtil;
    string CLASS_NAME_LogFormatUtil;
    string FUNCTION_CALL_LogFormatUtil;
    string SPECIAL_MESSAGE_LogFormatUtil;
    StringUtil@ stringUtil_LogFormatUtil;
    ExceptionUtil@ exceptionUtil_LogFormatUtil;
    NullUtil@ nullUtil_LogFormatUtil;

    // Java field initializers run after the super constructor
    void jfields_LogFormatUtil()
    {
    @this.timeStampUtil_LogFormatUtil = TimeStampUtil::getInstance();
    @this.commonSeps_LogFormatUtil = CommonSeps::getInstance();
    this.NONE_LogFormatUtil = "None";
    this.LOG_ERROR_LogFormatUtil = "\nLog-Error: ";
    this.EMPTY_LogFormatUtil = "Empty";
    this.STACK_TRACE_LogFormatUtil = "\nStack Trace: ";
    this.TIME_LogFormatUtil = "Time: ";
    this.CLASS_NAME_LogFormatUtil = this.commonSeps_LogFormatUtil.SPACE;
    this.FUNCTION_CALL_LogFormatUtil = CommonLabels::getInstance().COLON_SEP;
    this.SPECIAL_MESSAGE_LogFormatUtil = "> ";
    @this.stringUtil_LogFormatUtil = StringUtil::getInstance();
    @this.exceptionUtil_LogFormatUtil = ExceptionUtil::getInstance();
    @this.nullUtil_LogFormatUtil = NullUtil::getInstance();
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
        stringBuffer.append(this.SPECIAL_MESSAGE_LogFormatUtil);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps_LogFormatUtil.NEW_LINE);
        return stringBuffer.toString();
    }
    

    string getS(string className, string functionName, string specialMessage)
    {
        StringMaker@ stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.SPECIAL_MESSAGE_LogFormatUtil);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps_LogFormatUtil.NEW_LINE);
        return stringBuffer.toString();
    }
    

    StringMaker@ getF(string className, string functionName)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.TIME_LogFormatUtil);
        stringBuffer.append(this.timeStampUtil_LogFormatUtil.getAsString());
        stringBuffer.append(this.CLASS_NAME_LogFormatUtil);
        stringBuffer.append(className);
        stringBuffer.append(this.FUNCTION_CALL_LogFormatUtil);
        stringBuffer.append(functionName);
        return stringBuffer;
    }
    

    string getO(JObject@ exception)
    {
        if (exception !is this.nullUtil_LogFormatUtil.NULL_OBJECT) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(this.LOG_ERROR_LogFormatUtil);
            string exceptionAsString = exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(this.STACK_TRACE_LogFormatUtil);
            if (exception !is this.nullUtil_LogFormatUtil.NULL_OBJECT) {
                stringBuffer.append(this.exceptionUtil_LogFormatUtil.getStackTrace(cast<Throwable>(exception)));
            } else {
                stringBuffer.append(this.stringUtil_LogFormatUtil.NULL_STRING);
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

