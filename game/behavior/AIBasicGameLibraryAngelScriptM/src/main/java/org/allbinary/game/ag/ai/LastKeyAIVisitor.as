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
// package org.allbinary.game.ag.ai

class LastKeyAIVisitor : Visitor
{
    LogUtil@ logUtil;
    JBoolean@ TRUE_LastKeyAIVisitor;

    // Java field initializers run after the super constructor
    void jfields_LastKeyAIVisitor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.TRUE_LastKeyAIVisitor = BooleanFactory::getInstance().TRUE;
    }
    

    LastKeyAIVisitor@ jinit_LastKeyAIVisitor()
    {
        this.jinit_Visitor();
        this.jfields_LastKeyAIVisitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        try {
            BasicAI@ basicAI = cast<BasicAI>(anyType);
            int key = basicAI.getLastKey();
            if (key != -1) {
                basicAI.processKeyAI(key);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
            }
            else { jthrow(jex0); }
        }
        return this.TRUE_LastKeyAIVisitor;
    }
}

