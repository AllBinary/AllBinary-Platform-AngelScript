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
// package org.allbinary.game.layer

class CollidableCompositeLayer : AllBinaryGameLayer, CollidableInterfaceCompositeInterface
{
    CollidableBaseBehavior@ collidableInferface_CollidableCompositeLayer;

    // Java field initializers run after the super constructor
    void jfields_CollidableCompositeLayer()
    {
    @this.collidableInferface_CollidableCompositeLayer = CollidableNeverCollideBehaviorFactory::getInstance().createBehavior();
    }
    

    CollidableCompositeLayer@ jinit_CollidableCompositeLayer(string name, Rectangle@ layerInfo, ViewPositionBase@ viewPosition, CollidableBaseBehaviorFactory@ collidableBaseBehaviorFactory)
    {
        this.jinit_AllBinaryGameLayer(name, layerInfo, viewPosition);
        this.jfields_CollidableCompositeLayer();
        if (collidableBaseBehaviorFactory !is CollidableNeverCollideBehaviorFactory::getInstance()) {
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior());
        }
        return this;
    }
    

    ArtificialIntelligenceInterface@ getArtificialIntelligenceInterface()
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
        return ArtificialIntelligence::getInstance();
    }
    

    CollidableBaseBehavior@ getCollidableInferface()
    {
        return this.collidableInferface_CollidableCompositeLayer;
    }
    

    void setCollidableInferface(CollidableBaseBehavior@ collidableInferface)
    {
        @this.collidableInferface_CollidableCompositeLayer = collidableInferface;
    }
    

    bool implmentsCollidableInterface()
    {
        return true;
    }
    

    void toStringAppend(StringMaker@ stringBuffer)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        AllBinaryGameLayer::toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.getCollidableInferface().toString());
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

namespace CollidableCompositeLayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_COLLIDABLE_COMPOSITE_LAYER;
    JObject@ get_NULL_COLLIDABLE_COMPOSITE_LAYER() property { jclinit(); return jcell_NULL_COLLIDABLE_COMPOSITE_LAYER; }
    void set_NULL_COLLIDABLE_COMPOSITE_LAYER(JObject@ value) property { jclinit(); @jcell_NULL_COLLIDABLE_COMPOSITE_LAYER = value; }
    

    CollidableCompositeLayer@ getNullInstance()
    {
        if (CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER is NullUtil::getInstance().NULL_OBJECT) {
            @CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer().jinit_CollidableCompositeLayer(StringUtil::getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory::getInstance());
        }
        return cast<CollidableCompositeLayer>(CollidableCompositeLayer::NULL_COLLIDABLE_COMPOSITE_LAYER);
    }
}

