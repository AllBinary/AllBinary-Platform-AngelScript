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
// package org.allbinary.game.displayable.canvas

class OverlayPaintable : InitUpdatePaintable
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_OverlayPaintable()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    OverlayPaintable@ jinit_OverlayPaintable()
    {
        this.jinit_InitUpdatePaintable();
        this.jfields_OverlayPaintable();
        return this;
    }
    

    void update()
    {
        try {
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void paint(Graphics@ graphics)
    {
    }
}

