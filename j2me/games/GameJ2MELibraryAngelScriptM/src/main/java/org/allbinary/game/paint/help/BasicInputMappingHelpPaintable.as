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
// package org.allbinary.game.paint.help

class BasicInputMappingHelpPaintable : HelpPaintable
{
    GameInputMapping@[]@ gameInputMappingArray_BasicInputMappingHelpPaintable;
    GameKey@ NONE_BasicInputMappingHelpPaintable;

    // Java field initializers run after the super constructor
    void jfields_BasicInputMappingHelpPaintable()
    {
    
    @this.NONE_BasicInputMappingHelpPaintable = GameKeyFactory::getInstance().NONE;
    }
    

    BasicInputMappingHelpPaintable@ jinit_BasicInputMappingHelpPaintable(GameInputMapping@[]@ gameInputMappingArray, BasicColor@ basicColor)
    {
        this.jinit_HelpPaintable("Help Screen", BasicColorFactory::getInstance().BLACK, basicColor);
        this.jfields_BasicInputMappingHelpPaintable();
        @this.gameInputMappingArray_BasicInputMappingHelpPaintable = gameInputMappingArray;
        this.update(this.NONE_BasicInputMappingHelpPaintable, this.NONE_BasicInputMappingHelpPaintable);
        return this;
    }
    

    void update(GameKey@ selectedGameKey, Input@ selectedInput)
    {
        PersistentInputMapping@ gameKeyMapping = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance();
        string EQUAL = " = ";
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        int size = int(this.gameInputMappingArray_BasicInputMappingHelpPaintable.length());
        string[]@ keyInfo = array<string>(size);
        GameInputMapping@ gameInputMapping;
        GameKey@ gameKey;
        BasicArrayList@ list;
        for (int index = 0; index < size; index++) {
            @gameInputMapping = this.gameInputMappingArray_BasicInputMappingHelpPaintable[index];
            @gameKey = gameInputMapping.getGameKey();
            @list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            stringMaker.delete(0, stringMaker.length());
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.get(list)).toString();
        }
        HelpPaintable::setInputInfoP(keyInfo);
    }
    

    string get(BasicArrayList@ keyList)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string AND = "and ";
        Input@ key;
        int size = keyList.size();
        for (int index = 0; index < size; index++) {
            @key = cast<Input>(keyList.objectArray[index]);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(commonSeps.SPACE).append(AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                        stringBuffer.append(AND);
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
}

