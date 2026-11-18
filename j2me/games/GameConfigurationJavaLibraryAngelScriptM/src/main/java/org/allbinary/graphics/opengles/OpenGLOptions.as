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

class OpenGLOptions : JObjectBase
{

    OpenGLOptions@ jinit_OpenGLOptions()
    {
        return this;
    }
    

    void init()
    {
        OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
        if (Features::getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS)) {
            BasicArrayList@ openGLMultipleList = BasicArrayListD().jinit_BasicArrayListD();
            openGLMultipleList.add(openGLFeatureFactory.OPENGL);
            GameFeatureChoiceGroups::getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList);
            BasicArrayList@ openGLVersionSelectorMultipleList = BasicArrayListD().jinit_BasicArrayListD();
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT);
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM);
            GameFeatureChoiceGroups::getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList);
            BasicArrayList@ openGLImageColorMultipleList = BasicArrayListD().jinit_BasicArrayListD();
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888);
            GameFeatureChoiceGroups::getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList);
        }
    }
}

