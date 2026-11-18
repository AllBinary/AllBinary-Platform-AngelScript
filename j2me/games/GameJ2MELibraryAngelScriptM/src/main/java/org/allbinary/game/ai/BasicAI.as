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
// package org.allbinary.game.ai

class BasicAI : ArtificialIntelligence, GameKeyEventSourceInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    GameKeyEventFactory@ gameKeyEventFactory;
    AllBinaryLayer@ ownerLayerInterface_BasicAI;
    GameInput@ gameInput_BasicAI;
    int lastKey_BasicAI;

    // Java field initializers run after the super constructor
    void jfields_BasicAI()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.gameKeyEventFactory = GameKeyEventFactory::getInstance();
    
    
    this.lastKey_BasicAI = -1;
    }
    

    BasicAI@ jinit_BasicAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_ArtificialIntelligence();
        this.jfields_BasicAI();
        @this.ownerLayerInterface_BasicAI = ownerLayerInterface;
        @this.gameInput_BasicAI = gameInput;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void processKeyAI(int key)
    {
        if (key != -1) {
            this.gameInput_BasicAI.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
        }
    }
    

    void setLastKey(int lastKey)
    {
        this.lastKey_BasicAI = lastKey;
    }
    

    int getLastKey()
    {
        return this.lastKey_BasicAI;
    }
    

    AllBinaryLayer@ getOwnerLayerInterface()
    {
        return this.ownerLayerInterface_BasicAI;
    }
    

    GameInput@ getGameInput()
    {
        return this.gameInput_BasicAI;
    }
    

    string getName()
    {
        return jClassName(this);
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(CommonSeps::getInstance().NEW_LINE);
        stringBuffer.append(this.getName());
        stringBuffer.append(" LastKey: ");
        stringBuffer.append(CanvasUtil::getKeyName(this.getLastKey()));
        return stringBuffer.toString();
    }
    

    int getSourceId()
    {
        return 1;
    }
}

namespace BasicAI
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_AI_VISITOR = SmallIntegerSingletonFactory::getInstance().getAt(2);
        @jcell_ID = SmallIntegerSingletonFactory::getInstance().getAt(1);
    }

    JInteger@ jcell_AI_VISITOR;
    JInteger@ get_AI_VISITOR() property { jclinit(); return jcell_AI_VISITOR; }
    void set_AI_VISITOR(JInteger@ value) property { jclinit(); @jcell_AI_VISITOR = value; }

    JInteger@ jcell_ID;
    JInteger@ get_ID() property { jclinit(); return jcell_ID; }
    void set_ID(JInteger@ value) property { jclinit(); @jcell_ID = value; }
}

