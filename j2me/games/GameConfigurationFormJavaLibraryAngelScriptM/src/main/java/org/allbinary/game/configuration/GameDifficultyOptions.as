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
// package org.allbinary.game.configuration

class GameDifficultyOptions : CommandForm
{
    MIDPUtil@ meUtil_GameDifficultyOptions;
    BasicArrayList@ list_GameDifficultyOptions;

    // Java field initializers run after the super constructor
    void jfields_GameDifficultyOptions()
    {
    @this.meUtil_GameDifficultyOptions = MIDPUtil::getInstance();
    
    }
    

    GameDifficultyOptions@ jinit_GameDifficultyOptions(CommandListener@ commandListener, string title, BasicArrayList@ list, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.jfields_GameDifficultyOptions();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.list_GameDifficultyOptions = list;
        this.update();
        this.initCommands(commandListener);
        GameDifficultyFactory@ gameDifficultyFactory = GameDifficultyFactory::getInstance();
        this.setSelectedId(gameDifficultyFactory.getLevel());
        return this;
    }
    

    void open()
    {
        CommandForm::open();
    }
    

    void close()
    {
        CommandForm::close();
        this.save();
    }
    

    void save()
    {
        GameDifficultyFactory@ gameDifficultyFactory = GameDifficultyFactory::getInstance();
        gameDifficultyFactory.setLevel(this.getSelectedId());
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    void update()
    {
        this.deleteAll();
        this.add(this.list_GameDifficultyOptions, "Difficulty", Choice::EXCLUSIVE);
        CommandForm::update();
    }
    

    void add(BasicArrayList@ list, string name, int option)
    {
        ChoiceGroup@ choiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil_GameDifficultyOptions.appendItem(this, choiceGroup);
    }
    

    ChoiceGroup@ getChoiceGroup(BasicArrayList@ list, string name, int option)
    {
        string METHOD_NAME = "addChoiceGroup";
        string NAME = "Adding Choice: ";
        ChoiceGroup@ choiceGroup = ChoiceGroup().jinit_ChoiceGroup(name, option, StringUtil::getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY);
        int size = list.size();
        JObject@ anyType;
        for (int index = 0; index < size; index++) {
            @anyType = list.objectArray[index];
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage::NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    void setSelectedId(int id)
    {
        ChoiceGroup@ choiceGroup = cast<ChoiceGroup>(this.get(0));
        choiceGroup.setSelectedIndex(id, true);
    }
    

    int getSelectedId()
    {
        ChoiceGroup@ choiceGroup = cast<ChoiceGroup>(this.get(0));
        return choiceGroup.getSelectedIndex();
    }
    

    int getSelectedText()
    {
        ChoiceGroup@ choiceGroup = cast<ChoiceGroup>(this.get(0));
        int value = Integer::valueOf(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue();
        return value;
    }
}

