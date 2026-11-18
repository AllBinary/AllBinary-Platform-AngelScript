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
// package org.allbinary.string

class CommonSeps : JObjectBase
{
    string NEW_LINE;
    string SEMICOLON;
    string EQUALS;
    string SPACE;
    string COMMA;
    string COLON;
    string PERIOD;
    string UNDERSCORE;
    string COLON_SEP;
    string COMMA_SEP;
    string PARENTHESIS_OPEN;
    string PARENTHESIS_CLOSE;
    string BRACE_OPEN;
    string BRACE_CLOSE;
    string BRACKET_OPEN;
    string BRACKET_CLOSE;
    string DASH;
    string PERCENT;
    string AMPERSAND;
    string FORWARD_SLASH;
    string BACK_SLASH;
    string QUESTION;
    string QUOTE;
    string QUOTE_END;
    string COMMENT;
    string INDENT;

    // Java field initializers run after the super constructor
    void jfields_CommonSeps()
    {
    this.NEW_LINE = "\n";
    this.SEMICOLON = ";";
    this.EQUALS = "=";
    this.SPACE = " ";
    this.COMMA = ",";
    this.COLON = ":";
    this.PERIOD = ".";
    this.UNDERSCORE = "_";
    this.COLON_SEP = StringMaker().jinit_StringMaker().append(this.COLON).append(this.SPACE).toString();
    this.COMMA_SEP = StringMaker().jinit_StringMaker().append(this.COMMA).append(this.SPACE).toString();
    this.PARENTHESIS_OPEN = "(";
    this.PARENTHESIS_CLOSE = ")";
    this.BRACE_OPEN = "{";
    this.BRACE_CLOSE = "}";
    this.BRACKET_OPEN = "[";
    this.BRACKET_CLOSE = "]";
    this.DASH = "-";
    this.PERCENT = "%";
    this.AMPERSAND = "&";
    this.FORWARD_SLASH = "/";
    this.BACK_SLASH = "\\";
    this.QUESTION = "?";
    this.QUOTE = "\"";
    this.QUOTE_END = "\",";
    this.COMMENT = "//";
    this.INDENT = "    ";
    }

    CommonSeps@ jinit_CommonSeps()
    {
        this.jfields_CommonSeps();
        return this;
    }
}

namespace CommonSeps
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CommonSeps().jinit_CommonSeps();
    }

    CommonSeps@ jcell_instance;
    CommonSeps@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CommonSeps@ value) property { jclinit(); @jcell_instance = value; }
    

    CommonSeps@ getInstance()
    {
        return CommonSeps::instance;
    }
}

