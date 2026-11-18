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

class NullGameCanvas : AllBinaryGameCanvas
{
    bool runningNull_NullGameCanvas;

    // Java field initializers run after the super constructor
    void jfields_NullGameCanvas()
    {
    this.runningNull_NullGameCanvas = true;
    }
    

    NullGameCanvas@ jinit_NullGameCanvas(AllBinaryGameLayerManager@ gameLayerManager)
    {
        this.jinit_AllBinaryGameCanvas(NullCommandListener::NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory::getInstance(), BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false);
        this.jfields_NullGameCanvas();
        AllBinaryGameCanvas::setWait(1200);
        return this;
    }
    

    bool isGameOver()
    {
        return false;
    }
    

    void setRunning(bool running)
    {
        this.runningNull_NullGameCanvas = running;
    }
    

    bool isRunning()
    {
        return this.runningNull_NullGameCanvas;
    }
    

    void pause()
    {
        this.setPaused(true);
    }
    

    void unPause()
    {
        this.setPaused(false);
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        this.removeAllCommands();
        this.setCommandListener(cmdListener);
    }
    

    void buildGameInit(bool isProgress)
    {
    }
    

    void draw(Graphics@ graphics)
    {
    }
    

    void run()
    {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    int getType()
    {
        return NullGameCanvas::TYPE;
    }
}

namespace NullGameCanvas
{
    const string NO_GAME = "No Background Game";
    const int TYPE = 1;

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
    

    NullGameCanvas@ createNull()
    {
        try {
            return NullGameCanvas().jinit_NullGameCanvas(AllBinaryGameLayerManager::getNullInstance());
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            LogUtil::getInstance().put(CommonStrings::getInstance().EXCEPTION, jbox("NullGameCanvas"), CommonStrings::getInstance().GET_INSTANCE, e);
            jthrow(RuntimeException().jinit_RuntimeException());
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    NullGameCanvas@ getInstance()
    {
        if (NullGameCanvas::instance is NullUtil::getInstance().NULL_OBJECT) {
            @NullGameCanvas::instance = NullGameCanvas::createNull();
        }
        return cast<NullGameCanvas>(NullGameCanvas::instance);
    }
    

    NullGameCanvas@ createCanvas(AllBinaryGameLayerManager@ gameLayerManager)
    {
        NullGameCanvas@ nullGameCanvas = NullGameCanvas().jinit_NullGameCanvas(gameLayerManager);
        nullGameCanvas.setInitialized(true);
        nullGameCanvas.setTitle(NullGameCanvas::NO_GAME);
        return nullGameCanvas;
    }
}

