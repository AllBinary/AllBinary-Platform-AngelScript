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
// package org.allbinary.game.input

class GameInputProcessorComposite : PlayerGameInput
{
    string name_GameInputProcessorComposite;
    GameInputProcessorInterface@ gameInputProcessorInterface_GameInputProcessorComposite;
    string NAME_LABEL_GameInputProcessorComposite;

    // Java field initializers run after the super constructor
    void jfields_GameInputProcessorComposite()
    {
    
    
    this.NAME_LABEL_GameInputProcessorComposite = " GameInputProcessorInterface: ";
    }
    

    GameInputProcessorComposite@ jinit_GameInputProcessorComposite(string name, GameInputProcessorInterface@ gameInputProcessorInterface)
    {
        this.jinit_PlayerGameInput(BasicArrayListD().jinit_BasicArrayListD(), BasicArrayListD().jinit_BasicArrayListD(), -1);
        this.jfields_GameInputProcessorComposite();
        this.name_GameInputProcessorComposite = name;
        @this.gameInputProcessorInterface_GameInputProcessorComposite = gameInputProcessorInterface;
        return this;
    }
    

    void update()
    {
        try {
            BasicArrayList@ list = this.getGameKeyEventList();
            this.gameInputProcessorInterface_GameInputProcessorComposite.onInput(list);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(PlayerGameInput::toString()).append(this.NAME_LABEL_GameInputProcessorComposite).append(this.name_GameInputProcessorComposite).toString();
    }
}

