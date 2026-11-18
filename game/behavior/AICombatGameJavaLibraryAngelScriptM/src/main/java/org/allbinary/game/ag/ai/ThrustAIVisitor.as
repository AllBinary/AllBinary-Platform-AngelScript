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

class ThrustAIVisitor : Visitor
{
    LogUtil@ logUtil;
    JBoolean@ TRUE_ThrustAIVisitor;

    // Java field initializers run after the super constructor
    void jfields_ThrustAIVisitor()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.TRUE_ThrustAIVisitor = BooleanFactory::getInstance().TRUE;
    }
    

    ThrustAIVisitor@ jinit_ThrustAIVisitor()
    {
        this.jinit_Visitor();
        this.jfields_ThrustAIVisitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        try {
            BasicAI@ basicAI = cast<BasicAI>(anyType);
            basicAI.processKeyAI(Canvas::UP);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
            }
            else { jthrow(jex0); }
        }
        return this.TRUE_ThrustAIVisitor;
    }
}

