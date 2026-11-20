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
// package org.allbinary.graphics.opengles

class CurrentDisplayableFactory : JObjectBase
{
    CommonStrings@ commonStrings_CurrentDisplayableFactory;
    CanvasStrings@ canvasStrings_CurrentDisplayableFactory;
    StringUtil@ stringUtil_CurrentDisplayableFactory;
    string SET_DISPLAYABLE_CurrentDisplayableFactory;
    string SET_RUNNABLE_CurrentDisplayableFactory;
    string CLEAR_RUNNABLE_CurrentDisplayableFactory;
    string SET_USED_RUNNABLE_CurrentDisplayableFactory;
    string RUNNABLE_CurrentDisplayableFactory;
    string RUNNABLE_WAS_ALREADY_IN_USE_CurrentDisplayableFactory;
    BasicArrayList@ DEFAULT_CHILD_NAME_LIST;
    Displayable@ displayable_CurrentDisplayableFactory;
    Displayable@ openGlReadydisplayable_CurrentDisplayableFactory;
    GameRunnable@ runnable_CurrentDisplayableFactory;
    GameRunnable@ usedRunnable_CurrentDisplayableFactory;

    // Java field initializers run after the super constructor
    void jfields_CurrentDisplayableFactory()
    {
    @this.commonStrings_CurrentDisplayableFactory = CommonStrings::getInstance();
    @this.canvasStrings_CurrentDisplayableFactory = CanvasStrings::getInstance();
    @this.stringUtil_CurrentDisplayableFactory = StringUtil::getInstance();
    this.SET_DISPLAYABLE_CurrentDisplayableFactory = "setDisplayable";
    this.SET_RUNNABLE_CurrentDisplayableFactory = "setRunnable";
    this.CLEAR_RUNNABLE_CurrentDisplayableFactory = "clearRunnable";
    this.SET_USED_RUNNABLE_CurrentDisplayableFactory = "setUsedRunnable";
    this.RUNNABLE_CurrentDisplayableFactory = "Runnable: ";
    this.RUNNABLE_WAS_ALREADY_IN_USE_CurrentDisplayableFactory = "Runnable was already in use: ";
    @this.DEFAULT_CHILD_NAME_LIST = BasicArrayListD().jinit_BasicArrayListD();
    @this.displayable_CurrentDisplayableFactory = NullDisplayable::getInstance();
    @this.openGlReadydisplayable_CurrentDisplayableFactory = NullDisplayable::getInstance();
    @this.runnable_CurrentDisplayableFactory = NullWaitGameRunnable::getInstance();
    @this.usedRunnable_CurrentDisplayableFactory = NullWaitGameRunnable::getInstance();
    }
    

    CurrentDisplayableFactory@ jinit_CurrentDisplayableFactory()
    {
        this.jfields_CurrentDisplayableFactory();
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(this.canvasStrings_CurrentDisplayableFactory.ABOUT));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(this.canvasStrings_CurrentDisplayableFactory.OPTIONS));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(GameInputMappingCanvas::NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(GameInputMappingInstructionsCanvas::NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(HighScoresCanvas::NAME));
        return this;
    }
    

    void setMyCanvas(MyCanvas@ displayable)
    {
        if ((cast<MyCanvas>(this.displayable_CurrentDisplayableFactory) !is null)) {
            if (displayable.hasChild(cast<MyCanvas>(this.displayable_CurrentDisplayableFactory))) {
                PreLogUtil::put(StringMaker().jinit_StringMaker().append("Child Displayable is already set for: ").append(this.stringUtil_CurrentDisplayableFactory.toString(displayable)).toString(), this, this.SET_DISPLAYABLE_CurrentDisplayableFactory);
                return;
            }
        }
        this.setDisplayable(displayable);
    }
    

    void setDisplayable(Displayable@ displayable)
    {
        @this.displayable_CurrentDisplayableFactory = displayable;
        this.setOpenGlReadydisplayable(displayable);
    }
    

    void setOpenGlReadydisplayable(Displayable@ openGlReadydisplayable)
    {
        @this.openGlReadydisplayable_CurrentDisplayableFactory = openGlReadydisplayable;
        this.update();
    }
    

    Displayable@ getOpenGlReadydisplayable()
    {
        return this.openGlReadydisplayable_CurrentDisplayableFactory;
    }
    

    void setRunnable(GameRunnable@ runnable)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(runnable)).toString(), this, this.SET_RUNNABLE_CurrentDisplayableFactory);
        @this.runnable_CurrentDisplayableFactory = runnable;
        if (this.usedRunnable_CurrentDisplayableFactory !is this.runnable_CurrentDisplayableFactory) {
            this.update();
        } else {
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(runnable)).toString(), this, this.SET_RUNNABLE_CurrentDisplayableFactory);
        }
    }
    

    void clearRunnable()
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(NullRunnable::getInstance())).toString(), this, this.CLEAR_RUNNABLE_CurrentDisplayableFactory);
        this.setUsedRunnable(NullWaitGameRunnable::getInstance());
    }
    

    void update()
    {
        {
            CommonSeps@ commonSeps = CommonSeps::getInstance();
            Features@ features = Features::getInstance();
            StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
            stringMaker.append(this.stringUtil_CurrentDisplayableFactory.toString(this.openGlReadydisplayable_CurrentDisplayableFactory));
            if (SWTUtil::isSWT && !features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL)) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(SWTUtil::SWT).append(commonSeps.SPACE).append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(NullRunnable::getInstance())).toString(), this, this.commonStrings_CurrentDisplayableFactory.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable::getInstance());
            } else if (J2MEUtil::isHTML()) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings::getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(this.runnable_CurrentDisplayableFactory)).toString(), this, this.commonStrings_CurrentDisplayableFactory.UPDATE);
                this.setUsedRunnable(this.runnable_CurrentDisplayableFactory);
            } else if ((cast<DemoCanvas>(this.openGlReadydisplayable_CurrentDisplayableFactory) !is null) || (cast<AllBinaryGameCanvas>(this.openGlReadydisplayable_CurrentDisplayableFactory) !is null) || features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL)) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory::getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(this.runnable_CurrentDisplayableFactory)).toString(), this, this.commonStrings_CurrentDisplayableFactory.UPDATE);
                this.setUsedRunnable(this.runnable_CurrentDisplayableFactory);
            } else {
                PreLogUtil::put(stringMaker.append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(NullRunnable::getInstance())).toString(), this, this.commonStrings_CurrentDisplayableFactory.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable::getInstance());
            }
        }
    }
    

    Displayable@ getDisplayable()
    {
        return this.displayable_CurrentDisplayableFactory;
    }
    

    GameRunnable@ getUsedRunnable()
    {
        return this.usedRunnable_CurrentDisplayableFactory;
    }
    

    void setUsedRunnable(GameRunnable@ usedRunnable)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE_CurrentDisplayableFactory).append(this.stringUtil_CurrentDisplayableFactory.toString(this.runnable_CurrentDisplayableFactory)).append(CommonSeps::getInstance().COLON_SEP).append(this.stringUtil_CurrentDisplayableFactory.toString(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE_CurrentDisplayableFactory);
        @this.usedRunnable_CurrentDisplayableFactory = usedRunnable;
    }
}

namespace CurrentDisplayableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CurrentDisplayableFactory().jinit_CurrentDisplayableFactory();
    }

    CurrentDisplayableFactory@ jcell_instance;
    CurrentDisplayableFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CurrentDisplayableFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    CurrentDisplayableFactory@ getInstance()
    {
        return CurrentDisplayableFactory::instance;
    }
}

