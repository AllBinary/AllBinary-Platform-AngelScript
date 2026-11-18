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

class LoadGameForm : CommandForm
{
    MIDPUtil@ meUtil_LoadGameForm;
    bool areChoices_LoadGameForm;

    // Java field initializers run after the super constructor
    void jfields_LoadGameForm()
    {
    @this.meUtil_LoadGameForm = MIDPUtil::getInstance();
    
    }
    

    LoadGameForm@ jinit_LoadGameForm(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.jfields_LoadGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.update();
        this.initCommands(commandListener);
        return this;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.LOAD_FILE);
        this.addCommand(gameCommandsFactory.DELETE_FILE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    void update()
    {
        BasicArrayList@ list = GamePersistanceSingleton::getInstance().getIds();
        this.deleteAll();
        if (list.size() > 0) {
            this.add(list, "Select A Saved Game", Choice::EXCLUSIVE);
            this.areChoices_LoadGameForm = true;
        } else {
            this.meUtil_LoadGameForm.appendItem(this, StringItem().jinit_StringItem("No Saved Games", StringUtil::getInstance().EMPTY_STRING, Item::PLAIN));
            this.areChoices_LoadGameForm = false;
        }
        CommandForm::update();
    }
    

    void add(BasicArrayList@ list, string name, int option)
    {
        ChoiceGroup@ choiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil_LoadGameForm.appendItem(this, choiceGroup);
    }
    

    ChoiceGroup@ getChoiceGroup(BasicArrayList@ list, string name, int option)
    {
        string METHOD_NAME = "getChoiceGroup";
        string ADDING_CHOICE = "Adding Choice: ";
        ChoiceGroup@ choiceGroup = ChoiceGroup().jinit_ChoiceGroup(name, option, StringUtil::getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY);
        int size = list.size();
        for (int index = 0; index < size; index++) {
            JObject@ anyType = list.objectArray[index];
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage::NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    int getSelectedId()
    {
        if (this.areChoices_LoadGameForm) {
            ChoiceGroup@ choiceGroup = cast<ChoiceGroup>(this.get(0));
            return choiceGroup.getSelectedIndex();
        } else {
            return -1;
        }
        return 0;
    }
    

    int getSelectedText()
    {
        if (this.areChoices_LoadGameForm) {
            ChoiceGroup@ choiceGroup = cast<ChoiceGroup>(this.get(0));
            int value = Integer::valueOf(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue();
            return value;
        } else {
            return -1;
        }
        return 0;
    }
}

