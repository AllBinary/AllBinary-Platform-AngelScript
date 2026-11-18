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
// package org.allbinary.graphics.displayable

class MyCanvas : Canvas, DisplayableInterface, MyCommandInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CanvasStrings@ canvasStrings;
    StringUtil@ stringUtil;
    DisplayInfoSingleton@ displayInfo;
    string name_MyCanvas;
    BasicArrayList@ childNameList_MyCanvas;
    ABStack@ commandStack_MyCanvas;
    CommandListener@ commandListener_MyCanvas;
    bool paused_MyCanvas;
    TouchJ2ME@ touchME_MyCanvas;

    // Java field initializers run after the super constructor
    void jfields_MyCanvas()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.canvasStrings = CanvasStrings::getInstance();
    @this.stringUtil = StringUtil::getInstance();
    @this.displayInfo = DisplayInfoSingleton::getInstance();
    
    
    
    @this.commandListener_MyCanvas = NullCommandListener::NULL_COMMAND_LISTENER;
    
    @this.touchME_MyCanvas = TouchJ2ME().jinit_TouchJ2ME();
    }
    

    MyCanvas@ jinit_MyCanvas(string name, BasicArrayList@ childNameList)
    {
        this.jinit_Canvas();
        this.jfields_MyCanvas();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.displayInfo.update(this, this.canvasStrings.CONSTRUCTOR);
        this.name_MyCanvas = name;
        @this.childNameList_MyCanvas = childNameList;
        @this.commandStack_MyCanvas = StdUtil::getInstance().createStack();
        return this;
    }
    

    int getWidth()
    {
        return Canvas::getWidth();
    }
    

    int getHeight()
    {
        return Canvas::getHeight();
    }
    

    void setFullScreenMode(bool mode)
    {
        Canvas::setFullScreenMode(mode);
        this.displayInfo.update(this, this.canvasStrings.SET_FULL_SCREEN_MODE);
    }
    

    void sizeChanged(int w, int h)
    {
        this.displayInfo.update(this, this.canvasStrings.SIZE_CHANGED);
    }
    

    ABStack@ getCommandStack()
    {
        return this.commandStack_MyCanvas;
    }
    

    bool isCommand(Command@ command)
    {
        return this.commandStack_MyCanvas.contains(command);
    }
    

    void addCommand(Command@ command)
    {
        if (!this.commandStack_MyCanvas.contains(command)) {
            this.commandStack_MyCanvas.push(command);
            Canvas::addCommand(command);
        }
    }
    

    void removeCommand(Command@ command)
    {
        this.commandStack_MyCanvas.removeElement(command);
        Canvas::removeCommand(command);
    }
    

    void removeAllCommands()
    {
        int size = this.commandStack_MyCanvas.size();
        for (int index = 0; index < size; index++) {
            Canvas::removeCommand(cast<Command>(this.commandStack_MyCanvas.pop()));
        }
    }
    

    void setCommandListener(CommandListener@ l)
    {
        Canvas::setCommandListener(l);
        @this.commandListener_MyCanvas = l;
    }
    

    CommandListener@ getCustomCommandListener()
    {
        return this.commandListener_MyCanvas;
    }
    

    bool isPaused()
    {
        return this.paused_MyCanvas;
    }
    

    void removePauseCommand()
    {
        this.removeCommand(MyCommandsFactory::getInstance().PAUSE_COMMAND);
    }
    

    void pause()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.PAUSE);
        this.removePauseCommand();
        this.addCommand(MyCommandsFactory::getInstance().RESUME_COMMAND);
        this.setPaused(true);
    }
    

    void unPause()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.UN_PAUSE);
        this.removeCommand(MyCommandsFactory::getInstance().RESUME_COMMAND);
        this.addCommand(MyCommandsFactory::getInstance().PAUSE_COMMAND);
        this.setPaused(false);
    }
    

    void process()
    {
        this.displayInfo.process();
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void draw(Graphics@ graphics)
    {
    }
    

    bool hasChild(MyCanvas@ displayable)
    {
        return this.childNameList_MyCanvas.contains(jbox(displayable.name_MyCanvas));
    }
    

    void destroy()
    {
        this.logUtil.putF("Destroyed MyCanvas", this, "destroy");
    }
    

    void setPaused(bool isPaused)
    {
        this.paused_MyCanvas = isPaused;
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
    }
    

    void keyRepeatedByDevice(int keyCode, int deviceId)
    {
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId)
    {
    }
    

    void pointerDragged(int x, int y)
    {
        this.touchME_MyCanvas.pointerDragged(x, y);
    }
    

    void pointerPressed(int x, int y)
    {
        this.touchME_MyCanvas.pointerPressed(x, y);
    }
    

    void pointerReleased(int x, int y)
    {
        this.touchME_MyCanvas.pointerReleased(x, y);
    }
    

    void nextSong(Sound@ nextSongSound, int leftVolume, int rightVolume)
    {
    }
}

