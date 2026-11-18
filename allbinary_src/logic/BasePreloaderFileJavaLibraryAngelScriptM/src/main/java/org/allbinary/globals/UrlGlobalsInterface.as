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

class UrlGlobalsInterface : JObjectBase
{

    UrlGlobalsInterface@ jinit_UrlGlobalsInterface()
    {
        return this;
    }
    

    string getMainPath()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    string getTestHtmlPath()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    string getWebappPath()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    bool isTestingMode()
    {
        return false;
    }
}

