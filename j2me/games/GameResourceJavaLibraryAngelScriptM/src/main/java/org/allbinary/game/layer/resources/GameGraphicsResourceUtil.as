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
// package org.allbinary.game.layer.resources

class GameGraphicsResourceUtil : JObjectBase
{
    LogUtil@ logUtil;
    string SPRITE;
    string QUARTER;
    string name_GameGraphicsResourceUtil;

    // Java field initializers run after the super constructor
    void jfields_GameGraphicsResourceUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    this.SPRITE = "_sprite";
    this.QUARTER = "_quarter";
    this.name_GameGraphicsResourceUtil = StringUtil::getInstance().EMPTY_STRING;
    }
    

    GameGraphicsResourceUtil@ jinit_GameGraphicsResourceUtil()
    {
        this.jfields_GameGraphicsResourceUtil();
        try {
            this.name_GameGraphicsResourceUtil = this.getString();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    string getString()
    {
        GraphicsFeatureFactory@ graphicsFeatureFactory = GraphicsFeatureFactory::getInstance();
        GraphicsFeature@ graphicsFeature = graphicsFeatureFactory.NONE;
        Features@ features = Features::getInstance();
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            @graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            @graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            @graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            @graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY;
        }
        return this.getStringForFeature(graphicsFeature);
    }
    

    string getStringForFeature(GraphicsFeature@ graphicsFeature)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        GraphicsFeatureFactory@ graphicsFeatureFactory = GraphicsFeatureFactory::getInstance();
        stringBuffer.delete(0, stringBuffer.length());
        Features@ features = Features::getInstance();
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (graphicsFeature is graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature is graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature is graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) {
                stringBuffer.append(this.SPRITE);
            } else if (graphicsFeature is graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) {
                stringBuffer.append(this.QUARTER);
                stringBuffer.append(this.SPRITE);
            } else {
                jthrow(Exception().jinit_Exception("None/Unknown Sub Image Resource Type Specified"));
            }
        } else if (OpenGLFeatureUtil::getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings::getInstance().OBJ_MODEL);
        } else {
            jthrow(Exception().jinit_Exception("None/Unknown Main Image Resource Type Specified"));
        }
        return stringBuffer.toString();
    }
    

    string getName()
    {
        return this.name_GameGraphicsResourceUtil;
    }
}

namespace GameGraphicsResourceUtil
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
    

    GameGraphicsResourceUtil@ getInstance()
    {
        if (GameGraphicsResourceUtil::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GameGraphicsResourceUtil::instance = GameGraphicsResourceUtil().jinit_GameGraphicsResourceUtil();
        }
        return cast<GameGraphicsResourceUtil>(GameGraphicsResourceUtil::instance);
    }
}

