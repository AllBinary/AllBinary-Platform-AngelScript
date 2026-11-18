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
// package org.allbinary.game.resource

class FeaturedResourceRelativeRelationshipFactory : FeaturedResourceFactory
{
    BasicArrayListUtil@ basicArrayListUtil_FeaturedResourceRelativeRelationshipFactory;

    // Java field initializers run after the super constructor
    void jfields_FeaturedResourceRelativeRelationshipFactory()
    {
    @this.basicArrayListUtil_FeaturedResourceRelativeRelationshipFactory = BasicArrayListUtil::getInstance();
    }
    

    FeaturedResourceRelativeRelationshipFactory@ jinit_FeaturedResourceRelativeRelationshipFactory()
    {
        this.jinit_FeaturedResourceFactory();
        this.jfields_FeaturedResourceRelativeRelationshipFactory();
        return this;
    }
    

    BasicArrayList@ getRelativeRelationshipList(string resource, AllBinaryLayer@ layer)
    {
        BasicArrayList@ featureReleaseList = this.getList();
        int size = this.getList().size();
        for (int index = 0; index < size; index++) {
            ResourceRelativeRelationshipFactoryInterface@ featureInterface = cast<ResourceRelativeRelationshipFactoryInterface>(featureReleaseList.objectArray[index]);
            if (featureInterface.isFeature()) {
                BasicArrayList@ list = featureInterface.getResourceRelativeRelationshipList(resource);
                if (list !is this.basicArrayListUtil_FeaturedResourceRelativeRelationshipFactory.getImmutableInstance()) {
                    return this.duplicate(list, layer);
                }
            }
        }
        jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString()));
        return null;
    }
    

    BasicArrayList@ duplicate(BasicArrayList@ list, AllBinaryLayer@ layer)
    {
        PointFactory@ pointFactory = PointFactory::getInstance();
        BasicArrayList@ newList = BasicArrayListD().jinit_BasicArrayListD();
        int size = list.size();
        for (int index = 0; index < size; index++) {
            RelativeRelationship@ relativeRelationship = cast<RelativeRelationship>(list.objectArray[index]);
            newList.add(RelativeLayerRelationship().jinit_RelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil::getInstance().getImmutableInstance()));
        }
        return newList;
    }
}

namespace FeaturedResourceRelativeRelationshipFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_INSTANCE = FeaturedResourceRelativeRelationshipFactory().jinit_FeaturedResourceRelativeRelationshipFactory();
    }

    FeaturedResourceRelativeRelationshipFactory@ jcell_INSTANCE;
    FeaturedResourceRelativeRelationshipFactory@ get_INSTANCE() property { jclinit(); return jcell_INSTANCE; }
    void set_INSTANCE(FeaturedResourceRelativeRelationshipFactory@ value) property { jclinit(); @jcell_INSTANCE = value; }
    

    FeaturedResourceRelativeRelationshipFactory@ getInstance()
    {
        return FeaturedResourceRelativeRelationshipFactory::INSTANCE;
    }
}

