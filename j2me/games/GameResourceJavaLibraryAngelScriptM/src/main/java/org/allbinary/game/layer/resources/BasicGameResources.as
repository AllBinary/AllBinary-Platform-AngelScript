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
// package org.allbinary.game.layer.resources

class BasicGameResources : JObjectBase
{
    LogUtil@ logUtil;
    string RESOURCE;
    string RESOURCE_DESTROY;

    // Java field initializers run after the super constructor
    void jfields_BasicGameResources()
    {
    @this.logUtil = LogUtil::getInstance();
    this.RESOURCE = StringUtil::getInstance().EMPTY_STRING;
    this.RESOURCE_DESTROY = StringUtil::getInstance().EMPTY_STRING;
    }
    

    BasicGameResources@ jinit_BasicGameResources()
    {
        this.jfields_BasicGameResources();
        return this;
    }
    

    void init(string ROOT, string[]@ SIZE)
    {
        try {
            int scale = GameConfigurationCentral::getInstance().SCALE.getValue().intValue();
            if (scale > 1 && scale - 1 < int(SIZE.length())) {
                this.append(ROOT, SIZE[scale - 1]);
            } else {
                jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("Invalid Value: ").appendint(scale).toString()));
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void append(string ROOT, string sizeString)
    {
        string DESTROY = "_destroy";
        string string_ = this.getString();
        BasicGameResources::stringBuffer.delete(0, BasicGameResources::stringBuffer.length());
        BasicGameResources::stringBuffer.append(ROOT);
        BasicGameResources::stringBuffer.append(string_);
        BasicGameResources::stringBuffer.append(sizeString);
        this.RESOURCE = BasicGameResources::stringBuffer.toString();
        BasicGameResources::stringBuffer.delete(0, BasicGameResources::stringBuffer.length());
        BasicGameResources::stringBuffer.append(ROOT);
        BasicGameResources::stringBuffer.append(DESTROY);
        BasicGameResources::stringBuffer.append(string_);
        BasicGameResources::stringBuffer.append(sizeString);
        this.RESOURCE_DESTROY = BasicGameResources::stringBuffer.toString();
    }
    

    string getString()
    {
        return GameGraphicsResourceUtil::getInstance().getName();
    }
}

namespace BasicGameResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_stringBuffer = StringMaker().jinit_StringMaker();
    }

    StringMaker@ jcell_stringBuffer;
    StringMaker@ get_stringBuffer() property { jclinit(); return jcell_stringBuffer; }
    void set_stringBuffer(StringMaker@ value) property { jclinit(); @jcell_stringBuffer = value; }
}

