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

class InputMappingHelpPaintable : HelpPaintable
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CommonSeps@ commonSeps;
    StringUtil@ stringUtil;
    BasicColorFactory@ basicColorFactory_InputMappingHelpPaintable;
    GameKey@ NONE_InputMappingHelpPaintable;
    string EMPTY_STRING_InputMappingHelpPaintable;
    GameInputMapping@[]@ gameInputMappingArray_InputMappingHelpPaintable;
    BasicArrayList@[]@ keyMappingArray_InputMappingHelpPaintable;
    BasicColor@[]@ actionBasicColor_InputMappingHelpPaintable;
    BasicColor@[]@[]@ inputBasicColorArray_InputMappingHelpPaintable;
    BasicColor@ selectedBasicColor_InputMappingHelpPaintable;
    UpdateMyFontProperties@ updateMyFontProperties_InputMappingHelpPaintable;

    // Java field initializers run after the super constructor
    void jfields_InputMappingHelpPaintable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.commonSeps = CommonSeps::getInstance();
    @this.stringUtil = StringUtil::getInstance();
    @this.basicColorFactory_InputMappingHelpPaintable = BasicColorFactory::getInstance();
    @this.NONE_InputMappingHelpPaintable = GameKeyFactory::getInstance().NONE;
    this.EMPTY_STRING_InputMappingHelpPaintable = StringUtil::getInstance().EMPTY_STRING;
    
    @this.keyMappingArray_InputMappingHelpPaintable = array<BasicArrayList@>(0);
    @this.actionBasicColor_InputMappingHelpPaintable = BasicColorUtil::getInstance().ZERO_ARRAY;
    @this.inputBasicColorArray_InputMappingHelpPaintable = InputMappingHelpPaintable::jnewArray2_BasicColor(0, 0);
    
    @this.updateMyFontProperties_InputMappingHelpPaintable = UpdateMyFontProperties().jinit_UpdateMyFontProperties();
    }
    

    InputMappingHelpPaintable@ jinit_InputMappingHelpPaintable(GameInputMapping@[]@ gameInputMappingArray, BasicColor@ backgroundBasicColor, BasicColor@ basicColor)
    {
        this.jinit_HelpPaintable("Input Mapping", backgroundBasicColor, basicColor);
        this.jfields_InputMappingHelpPaintable();
        @this.gameInputMappingArray_InputMappingHelpPaintable = gameInputMappingArray;
        this.update(this.NONE_InputMappingHelpPaintable, this.NONE_InputMappingHelpPaintable);
        if (backgroundBasicColor is this.basicColorFactory_InputMappingHelpPaintable.WHITE || basicColor is this.basicColorFactory_InputMappingHelpPaintable.WHITE) {
            @this.selectedBasicColor_InputMappingHelpPaintable = this.basicColorFactory_InputMappingHelpPaintable.RED;
        } else {
            @this.selectedBasicColor_InputMappingHelpPaintable = this.basicColorFactory_InputMappingHelpPaintable.WHITE;
        }
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        UpdateMyFontProperties@ updateMyFontProperties = UpdateMyFontProperties().jinit_UpdateMyFontProperties();
        updateMyFontProperties.charHeight = font.getHeight();
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        string[]@ inputInfo = this.inputInfo;
        int size = int(inputInfo.length());
        @updateMyFontProperties.actionStringArray = array<string>(size);
        @updateMyFontProperties.keymappingBeginWidthArray = array<int>(size);
        @updateMyFontProperties.actionStringDeltaXArray = array<int>(size);
        @updateMyFontProperties.inputDeltaXArray = jnewArray2_Int(size, 0);
        @updateMyFontProperties.sepArray = jnewArray2_String(size, 0);
        @updateMyFontProperties.sepWidthArray = jnewArray2_Int(size, 0);
        BasicArrayList@ list;
        string keyMappings = "";
        string actionString = "";
        Input@ input;
        int size2 = 0;
        for (int index = 0; index < size; index++) {
            @list = this.keyMappingArray_InputMappingHelpPaintable[index];
            keyMappings = this.get(list);
            stringMaker.delete(0, stringMaker.length());
            actionString = stringMaker.append(inputInfo[index]).append(this.commonSeps.COLON).append(this.commonSeps.SPACE).append(this.commonSeps.SPACE).toString();
            updateMyFontProperties.actionStringArray[index] = actionString;
            stringMaker.delete(0, stringMaker.length());
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()) >>> 1);
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString);
            size2 = list.size();
            @updateMyFontProperties.inputDeltaXArray[index] = array<int>(size2);
            @updateMyFontProperties.sepArray[index] = array<string>(size2);
            @updateMyFontProperties.sepWidthArray[index] = array<int>(size2);
            for (int index2 = 0; index2 < size2; index2++) {
                @input = cast<Input>(list.objectArray[index2]);
                updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName());
                updateMyFontProperties.sepArray[index][index2] = this.EMPTY_STRING_InputMappingHelpPaintable;
                if (index2 + 1 < list.size()) {
                    if (list.size() == 2) {
                        updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::AND;
                    } else {
                        if (index2 + 2 == list.size()) {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::MORE_THAN_TWO_IN_LIST_AND;
                        } else {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable::SEP;
                        }
                    }
                }
                if (updateMyFontProperties.sepArray[index][index2] != this.EMPTY_STRING_InputMappingHelpPaintable) {
                    updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2]);
                }
            }
        }
        @this.updateMyFontProperties_InputMappingHelpPaintable = updateMyFontProperties;
        HelpPaintable::updateMeasurement(graphics);
    }
    

    void update(GameKey@ selectedGameKey, Input@ selectedInput)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels::getInstance().START_LABEL).append("selected GameKey: ").append(this.stringUtil.toString(selectedGameKey)).append(" Input: ").append(this.stringUtil.toString(selectedInput)).toString(), this, this.commonStrings.UPDATE);
        PersistentInputMapping@ gameKeyMapping = PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance();
        int size = int(this.gameInputMappingArray_InputMappingHelpPaintable.length());
        string[]@ keyInfo = array<string>(size);
        BasicArrayList@[]@ keyMappingArray = array<BasicArrayList@>(size);
        BasicColor@[]@ actionBasicColor = array<BasicColor@>(size);
        BasicColor@[]@[]@ inputBasicColorArray = array<BasicColor@[]@>(size);
        GameInputMapping@ gameInputMapping;
        GameKey@ gameKey;
        BasicArrayList@ list;
        for (int index = 0; index < size; index++) {
            @gameInputMapping = this.gameInputMappingArray_InputMappingHelpPaintable[index];
            @gameKey = gameInputMapping.getGameKey();
            @list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            int size2 = list.size();
            @inputBasicColorArray[index] = array<BasicColor@>(size2);
            for (int index2 = 0; index2 < size2; index2++) {
                @inputBasicColorArray[index][index2] = this.basicColor;
            }
            if (gameKey is selectedGameKey) {
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(this.stringUtil.toString(selectedGameKey)).toString(), this, this.commonStrings.UPDATE);
                @actionBasicColor[index] = this.selectedBasicColor_InputMappingHelpPaintable;
                int indexOfSelectedInput = list.indexOf(selectedInput);
                if (indexOfSelectedInput >= 0) {
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append("Found: selected Input: ").append(this.stringUtil.toString(selectedInput)).toString(), this, this.commonStrings.UPDATE);
                    @inputBasicColorArray[index][indexOfSelectedInput] = this.selectedBasicColor_InputMappingHelpPaintable;
                }
            } else {
                @actionBasicColor[index] = this.basicColor;
            }
            keyInfo[index] = gameInputMapping.getName();
            @keyMappingArray[index] = list;
        }
        @this.keyMappingArray_InputMappingHelpPaintable = keyMappingArray;
        @this.actionBasicColor_InputMappingHelpPaintable = actionBasicColor;
        @this.inputBasicColorArray_InputMappingHelpPaintable = inputBasicColorArray;
        HelpPaintable::setInputInfoP(keyInfo);
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    string get(BasicArrayList@ keyList)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        Input@ key;
        int size = keyList.size();
        for (int index = 0; index < size; index++) {
            @key = cast<Input>(keyList.objectArray[index]);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(InputMappingHelpPaintable::AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(InputMappingHelpPaintable::MORE_THAN_TWO_IN_LIST_AND);
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable::SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        int halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.updateMyFontProperties_InputMappingHelpPaintable.charHeight, this.anchor);
        string[]@ inputInfo = this.inputInfo;
        int size = int(inputInfo.length());
        int y = 0;
        int deltaX = 0;
        int size2 = 0;
        string actionString = "";
        Input@ input;
        BasicArrayList@ list;
        string sep = "";
        int beginWidth = 0;
        for (int index = 0; index < size; index++) {
            y = (index + 3) * this.updateMyFontProperties_InputMappingHelpPaintable.charHeight;
            deltaX = 0;
            @list = this.keyMappingArray_InputMappingHelpPaintable[index];
            size2 = list.size();
            beginWidth = this.updateMyFontProperties_InputMappingHelpPaintable.keymappingBeginWidthArray[index];
            graphics.setColor(this.actionBasicColor_InputMappingHelpPaintable[index].intValue());
            actionString = this.updateMyFontProperties_InputMappingHelpPaintable.actionStringArray[index];
            graphics.drawString(actionString, halfWidth - beginWidth + deltaX, y, this.anchor);
            deltaX += this.updateMyFontProperties_InputMappingHelpPaintable.actionStringDeltaXArray[index];
            for (int index2 = 0; index2 < size2; index2++) {
                @input = cast<Input>(list.objectArray[index2]);
                graphics.setColor(this.inputBasicColorArray_InputMappingHelpPaintable[index][index2].intValue());
                graphics.drawString(input.getName(), halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties_InputMappingHelpPaintable.inputDeltaXArray[index][index2];
                sep = this.updateMyFontProperties_InputMappingHelpPaintable.sepArray[index][index2];
                graphics.setColor(this.basicColor.intValue());
                graphics.drawString(sep, halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties_InputMappingHelpPaintable.sepWidthArray[index][index2];
            }
        }
    }
}

namespace InputMappingHelpPaintable
{
    const string AND = " and ";
    const string SEP = ", ";
    const string MORE_THAN_TWO_IN_LIST_AND = ", and ";

    BasicColor@[]@[]@ jnewArray2_BasicColor(int a, int b)
    {
        BasicColor@[]@[]@ result = array<BasicColor@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<BasicColor@>(b); }
        return result;
    }
}

