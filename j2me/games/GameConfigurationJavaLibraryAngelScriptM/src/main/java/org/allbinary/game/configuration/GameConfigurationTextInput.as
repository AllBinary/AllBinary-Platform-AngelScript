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

class GameConfigurationTextInput : JObjectBase
{
    string label_GameConfigurationTextInput;
    string text_GameConfigurationTextInput;

    // Java field initializers run after the super constructor
    void jfields_GameConfigurationTextInput()
    {
    this.label_GameConfigurationTextInput = StringUtil::getInstance().EMPTY_STRING;
    this.text_GameConfigurationTextInput = StringUtil::getInstance().EMPTY_STRING;
    }
    

    GameConfigurationTextInput@ jinit_GameConfigurationTextInput(string label, string text)
    {
        this.jfields_GameConfigurationTextInput();
        this.setText(text);
        this.setLabel(label);
        GameConfigurationTextInput::hashtable.put(this.getLabel(), this);
        return this;
    }
    

    void setText(string text)
    {
        this.text_GameConfigurationTextInput = text;
    }
    

    string getText()
    {
        return this.text_GameConfigurationTextInput;
    }
    

    void setLabel(string label)
    {
        this.label_GameConfigurationTextInput = label;
    }
    

    string getLabel()
    {
        return this.label_GameConfigurationTextInput;
    }
}

namespace GameConfigurationTextInput
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_hashtable = StdUtil::getInstance().createHashtable();
        @jcell_SIMULATOR_IP = GameConfigurationTextInput().jinit_GameConfigurationTextInput("IP: ", "192.168.1.3");
        @jcell_SIMULATOR_PORT = GameConfigurationTextInput().jinit_GameConfigurationTextInput("Port: ", "8010");
    }

    ABHashtable@ jcell_hashtable;
    ABHashtable@ get_hashtable() property { jclinit(); return jcell_hashtable; }
    void set_hashtable(ABHashtable@ value) property { jclinit(); @jcell_hashtable = value; }

    GameConfigurationTextInput@ jcell_SIMULATOR_IP;
    GameConfigurationTextInput@ get_SIMULATOR_IP() property { jclinit(); return jcell_SIMULATOR_IP; }
    void set_SIMULATOR_IP(GameConfigurationTextInput@ value) property { jclinit(); @jcell_SIMULATOR_IP = value; }

    GameConfigurationTextInput@ jcell_SIMULATOR_PORT;
    GameConfigurationTextInput@ get_SIMULATOR_PORT() property { jclinit(); return jcell_SIMULATOR_PORT; }
    void set_SIMULATOR_PORT(GameConfigurationTextInput@ value) property { jclinit(); @jcell_SIMULATOR_PORT = value; }
    

    void update(TextField@ textField)
    {
        JObject@ anyType = jbox(textField.getLabel());
        GameConfigurationTextInput@ gameConfigurationTextInput = cast<GameConfigurationTextInput>(GameConfigurationTextInput::hashtable.get(anyType));
        gameConfigurationTextInput.setText(textField.getString());
    }
    

    ABHashtable@ getHashtable()
    {
        return GameConfigurationTextInput::hashtable;
    }
}

