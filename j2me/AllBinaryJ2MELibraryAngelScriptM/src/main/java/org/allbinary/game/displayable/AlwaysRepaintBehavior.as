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

class AlwaysRepaintBehavior : RepaintBehavior
{
    string NAME_AlwaysRepaintBehavior;

    // Java field initializers run after the super constructor
    void jfields_AlwaysRepaintBehavior()
    {
    this.NAME_AlwaysRepaintBehavior = "AlwaysRepaintBehavior";
    }

    AlwaysRepaintBehavior@ jinit_AlwaysRepaintBehavior()
    {
        this.jinit_RepaintBehavior();
        this.jfields_AlwaysRepaintBehavior();
        return this;
    }
    

    void repaint(Canvas@ canvas)
    {
        Features@ features = Features::getInstance();
        OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton::getInstance().process();
        } else {
            Thread@ thread = Thread().jinit_Thread(RepaintRunnable().jinit_RepaintRunnable(canvas), this.NAME_AlwaysRepaintBehavior);
            thread.start();
        }
    }
    

    void onChangeRepaint(Canvas@ canvas)
    {
    }
}

namespace AlwaysRepaintBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = AlwaysRepaintBehavior().jinit_AlwaysRepaintBehavior();
    }

    AlwaysRepaintBehavior@ jcell_instanceC;
    AlwaysRepaintBehavior@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(AlwaysRepaintBehavior@ value) property { jclinit(); @jcell_instanceC = value; }
    

    AlwaysRepaintBehavior@ getInstance()
    {
        return AlwaysRepaintBehavior::instanceC;
    }
}

