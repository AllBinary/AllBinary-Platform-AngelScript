/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable

class RepaintBehavior : JObjectBase
{
    LogUtil@ logUtil;
    string NAME;

    // Java field initializers run after the super constructor
    void jfields_RepaintBehavior()
    {
    @this.logUtil = LogUtil::getInstance();
    this.NAME = "RepaintBehavior";
    }

    RepaintBehavior@ jinit_RepaintBehavior()
    {
        this.jfields_RepaintBehavior();
        return this;
    }
    

    void repaint(Canvas@ canvas)
    {
    }
    

    void onChangeRepaint(Canvas@ canvas)
    {
        Features@ features = Features::getInstance();
        OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton::getInstance().process();
        } else {
            Thread@ thread = Thread().jinit_Thread(RepaintRunnable().jinit_RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
}

namespace RepaintBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RepaintBehavior().jinit_RepaintBehavior();
    }

    RepaintBehavior@ jcell_instance;
    RepaintBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RepaintBehavior@ value) property { jclinit(); @jcell_instance = value; }
    

    RepaintBehavior@ getInstance()
    {
        return RepaintBehavior::instance;
    }
}

