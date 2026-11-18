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
// package org.allbinary.game.commands

class GameCommandsFactory : JObjectBase
{
    Command@ TOGGLE_FULLSCREEN;
    Command@ TOGGLE_KEYBOARD;
    Command@ SET_MENU_DISPLAYABLE;
    Command@ APPLICATION_UPDATE;
    Command@ DISPLAY_ABOUT;
    Command@ OPEN_WEB_URL;
    Command@ CLOSE_OPTIONS;
    Command@ DISPLAY_OPTIONS;
    Command@ START_TRACE;
    Command@ STOP_TRACE;
    Command@ DEFAULT_OPTIONS;
    Command@ SHOW_GAME_CANVAS;
    Command@ CLOSE_AND_SHOW_GAME_CANVAS;
    Command@ QUIT_COMMAND;
    Command@ RESTART_COMMAND;
    Command@ DISPLAY_SAVE_FORM;
    Command@ SAVE;
    Command@ DISPLAY_LOAD_FORM;
    Command@ LOAD_FILE;
    Command@ DELETE_FILE;
    Command@ EXIT_COMMAND;
    Command@ EXIT_WITHOUT_PROGRESS_COMMAND;
    Command@ START_COMMAND;
    Command@ CONTINUE_COMMAND;
    Command@ SELECT_COMMAND;
    Command@ FEATURE_UPDATE;
    Command@ BUY_COMMAND;

    // Java field initializers run after the super constructor
    void jfields_GameCommandsFactory()
    {
    @this.TOGGLE_FULLSCREEN = Command().jinit_Command("Toggle FullScreen", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.TOGGLE_KEYBOARD = Command().jinit_Command("Keyboard", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.SET_MENU_DISPLAYABLE = Command().jinit_Command("Set Menu Displayable", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.APPLICATION_UPDATE = Command().jinit_Command(CommonStrings::getInstance().UPDATE, StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.DISPLAY_ABOUT = Command().jinit_Command(CanvasStrings::getInstance().ABOUT, StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
    @this.OPEN_WEB_URL = Command().jinit_Command("Open Web URL", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
    @this.CLOSE_OPTIONS = Command().jinit_Command("Back", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.DISPLAY_OPTIONS = Command().jinit_Command(CanvasStrings::getInstance().OPTIONS, StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 2);
    @this.START_TRACE = Command().jinit_Command("Start Trace", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.STOP_TRACE = Command().jinit_Command("Stop Trace", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.DEFAULT_OPTIONS = Command().jinit_Command("Default", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.SHOW_GAME_CANVAS = Command().jinit_Command("Back to Game", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.CLOSE_AND_SHOW_GAME_CANVAS = Command().jinit_Command("Back", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.QUIT_COMMAND = Command().jinit_Command("Quit", StringUtil::getInstance().EMPTY_STRING, Command::STOP, 1);
    @this.RESTART_COMMAND = Command().jinit_Command("Restart", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 0);
    @this.DISPLAY_SAVE_FORM = Command().jinit_Command("Save To", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 3);
    @this.SAVE = Command().jinit_Command("Save", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 3);
    @this.DISPLAY_LOAD_FORM = Command().jinit_Command("Load", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 3);
    @this.LOAD_FILE = Command().jinit_Command("Load File", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 3);
    @this.DELETE_FILE = Command().jinit_Command("Delete File", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.EXIT_COMMAND = Command().jinit_Command("Exit", StringUtil::getInstance().EMPTY_STRING, Command::EXIT, 2);
    @this.EXIT_WITHOUT_PROGRESS_COMMAND = Command().jinit_Command("Exit Without Progress", StringUtil::getInstance().EMPTY_STRING, Command::EXIT, 2);
    @this.START_COMMAND = Command().jinit_Command(CommonStrings::getInstance().START, StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.CONTINUE_COMMAND = Command().jinit_Command("Continue", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.SELECT_COMMAND = Command().jinit_Command("Select", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.FEATURE_UPDATE = Command().jinit_Command("Feature Update", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    @this.BUY_COMMAND = Command().jinit_Command("BUY", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    }
    

    GameCommandsFactory@ jinit_GameCommandsFactory()
    {
        this.jfields_GameCommandsFactory();
        return this;
    }
}

namespace GameCommandsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    GameCommandsFactory@ getInstance()
    {
        if (GameCommandsFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GameCommandsFactory::instance = GameCommandsFactory().jinit_GameCommandsFactory();
        }
        return cast<GameCommandsFactory>(GameCommandsFactory::instance);
    }
}

