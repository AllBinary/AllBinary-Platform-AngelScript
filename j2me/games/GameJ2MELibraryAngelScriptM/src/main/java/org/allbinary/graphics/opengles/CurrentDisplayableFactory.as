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
    CommonStrings@ commonStrings;
    CanvasStrings@ canvasStrings;
    StringUtil@ stringUtil;
    string SET_DISPLAYABLE;
    string SET_RUNNABLE;
    string CLEAR_RUNNABLE;
    string SET_USED_RUNNABLE;
    string RUNNABLE;
    string RUNNABLE_WAS_ALREADY_IN_USE;
    BasicArrayList@ DEFAULT_CHILD_NAME_LIST;
    Displayable@ displayable;
    Displayable@ openGlReadydisplayable;
    GameRunnable@ runnable;
    GameRunnable@ usedRunnable;

    // Java field initializers run after the super constructor
    void jfields_CurrentDisplayableFactory()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.canvasStrings = CanvasStrings::getInstance();
    @this.stringUtil = StringUtil::getInstance();
    this.SET_DISPLAYABLE = "setDisplayable";
    this.SET_RUNNABLE = "setRunnable";
    this.CLEAR_RUNNABLE = "clearRunnable";
    this.SET_USED_RUNNABLE = "setUsedRunnable";
    this.RUNNABLE = "Runnable: ";
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: ";
    @this.DEFAULT_CHILD_NAME_LIST = BasicArrayListD().jinit_BasicArrayListD();
    @this.displayable = NullDisplayable::getInstance();
    @this.openGlReadydisplayable = NullDisplayable::getInstance();
    @this.runnable = NullWaitGameRunnable::getInstance();
    @this.usedRunnable = NullWaitGameRunnable::getInstance();
    }
    

    CurrentDisplayableFactory@ jinit_CurrentDisplayableFactory()
    {
        this.jfields_CurrentDisplayableFactory();
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(this.canvasStrings.ABOUT));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(this.canvasStrings.OPTIONS));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(GameInputMappingCanvas::NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(GameInputMappingInstructionsCanvas::NAME));
        this.DEFAULT_CHILD_NAME_LIST.add(jbox(HighScoresCanvas::NAME));
        return this;
    }
    

    void setMyCanvas(MyCanvas@ displayable)
    {
        if ((cast<MyCanvas>(this.displayable) !is null)) {
            if (displayable.hasChild(cast<MyCanvas>(this.displayable))) {
                PreLogUtil::put(StringMaker().jinit_StringMaker().append("Child Displayable is already set for: ").append(this.stringUtil.toString(displayable)).toString(), this, this.SET_DISPLAYABLE);
                return;
            }
        }
        this.setDisplayable(displayable);
    }
    

    void setDisplayable(Displayable@ displayable)
    {
        @this.displayable = displayable;
        this.setOpenGlReadydisplayable(displayable);
    }
    

    void setOpenGlReadydisplayable(Displayable@ openGlReadydisplayable)
    {
        @this.openGlReadydisplayable = openGlReadydisplayable;
        this.update();
    }
    

    Displayable@ getOpenGlReadydisplayable()
    {
        return this.openGlReadydisplayable;
    }
    

    void setRunnable(GameRunnable@ runnable)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(runnable)).toString(), this, this.SET_RUNNABLE);
        @this.runnable = runnable;
        if (this.usedRunnable !is this.runnable) {
            this.update();
        } else {
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE).append(this.stringUtil.toString(runnable)).toString(), this, this.SET_RUNNABLE);
        }
    }
    

    void clearRunnable()
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable::getInstance())).toString(), this, this.CLEAR_RUNNABLE);
        this.setUsedRunnable(NullWaitGameRunnable::getInstance());
    }
    

    void update()
    {
        {
            CommonSeps@ commonSeps = CommonSeps::getInstance();
            Features@ features = Features::getInstance();
            StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
            stringMaker.append(this.stringUtil.toString(this.openGlReadydisplayable));
            if (SWTUtil::isSWT && !features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL)) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(SWTUtil::SWT).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable::getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable::getInstance());
            } else if (J2MEUtil::isHTML()) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings::getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else if ((cast<DemoCanvas>(this.openGlReadydisplayable) !is null) || (cast<AllBinaryGameCanvas>(this.openGlReadydisplayable) !is null) || features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL)) {
                PreLogUtil::put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory::getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else {
                PreLogUtil::put(stringMaker.append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable::getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable::getInstance());
            }
        }
    }
    

    Displayable@ getDisplayable()
    {
        return this.displayable;
    }
    

    GameRunnable@ getUsedRunnable()
    {
        return this.usedRunnable;
    }
    

    void setUsedRunnable(GameRunnable@ usedRunnable)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).append(CommonSeps::getInstance().COLON_SEP).append(this.stringUtil.toString(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE);
        @this.usedRunnable = usedRunnable;
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

