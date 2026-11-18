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
// package org.allbinary.game.configuration.feature

class GraphicsFeatureFactory : JObjectBase
{
    GraphicsFeature@ NONE;
    GraphicsFeature@ TRANSPARENT_IMAGE_CREATION;
    GraphicsFeature@ IMAGE_GRAPHICS;
    GraphicsFeature@ IMAGE_ROTATION_ON_THE_FLY;
    GraphicsFeature@ IMAGE_TO_ARRAY_GRAPHICS;
    GraphicsFeature@ SPRITE_QUARTER_ROTATION_GRAPHICS;
    GraphicsFeature@ SPRITE_FULL_GRAPHICS;
    GraphicsFeature@ VECTOR_GRAPHICS;
    GraphicsFeature@ VECTOR_TO_IMAGE_GRAPHICS;

    // Java field initializers run after the super constructor
    void jfields_GraphicsFeatureFactory()
    {
    @this.NONE = GraphicsFeature().jinit_GraphicsFeature(StringUtil::getInstance().NULL_STRING);
    @this.TRANSPARENT_IMAGE_CREATION = GraphicsFeature().jinit_GraphicsFeature("Transparent Image Creation");
    @this.IMAGE_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("Image Graphics");
    @this.IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature().jinit_GraphicsFeature("Image Rotated On The Fly");
    @this.IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("Image To Array Graphics");
    @this.SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("Sprite Quarter Rotation Graphics");
    @this.SPRITE_FULL_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("Sprite Full Rotation Graphics");
    @this.VECTOR_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("BasicArrayList Graphics");
    @this.VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature().jinit_GraphicsFeature("BasicArrayList To Image Graphics");
    }
    

    GraphicsFeatureFactory@ jinit_GraphicsFeatureFactory()
    {
        this.jfields_GraphicsFeatureFactory();
        return this;
    }
}

namespace GraphicsFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GraphicsFeatureFactory().jinit_GraphicsFeatureFactory();
    }

    GraphicsFeatureFactory@ jcell_instance;
    GraphicsFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GraphicsFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GraphicsFeatureFactory@ getInstance()
    {
        return GraphicsFeatureFactory::instance;
    }
}

