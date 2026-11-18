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
// package org.allbinary.animation

class FeaturedAnimationInterfaceFactoryInterfaceFactory : FeaturedResourceFactory
{
    

    FeaturedAnimationInterfaceFactoryInterfaceFactory@ jinit_FeaturedAnimationInterfaceFactoryInterfaceFactory()
    {
        this.jinit_FeaturedResourceFactory();
        return this;
    }
    

    Rectangle@ getRectangle(string resource)
    {
        return this.getRectangleXY(resource, 0, 0);
    }
    

    Rectangle@ getRectangleXY(string resource, int x, int y)
    {
        PointFactory@ pointFactory = PointFactory::getInstance();
        BasicArrayList@ list = this.getList();
        int scale = GameConfigurationCentral::getInstance().SCALE.getValue().intValue();
        int size = this.getList().size();
        for (int index = 0; index < size; index++) {
            FeatureResourceAnimationInterfaceFactoryInterface@ featureInterface = cast<FeatureResourceAnimationInterfaceFactoryInterface>(list.objectArray[index]);
            if (featureInterface.isFeature()) {
                Rectangle@ rectangle = featureInterface.getRectangle(resource);
                if (rectangle !is RectangleFactory::SINGLETON) {
                    return Rectangle().jinit_Rectangle(pointFactory.createXY(x, y), ((rectangle.getWidth() * scale) >>> 1), ((rectangle.getHeight() * scale) >>> 1));
                }
            }
        }
        jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString()));
        return null;
    }
    

    ProceduralAnimationInterfaceFactoryInterface@ getProcedural(string resource)
    {
        return cast<ProceduralAnimationInterfaceFactoryInterface>(this.getBasicAnimationInterfaceFactoryInstance(resource));
    }
    

    AnimationInterfaceFactoryInterface@ get(string resource)
    {
        return cast<AnimationInterfaceFactoryInterface>(this.getBasicAnimationInterfaceFactoryInstance(resource));
    }
    

    BasicAnimationInterfaceFactoryInterface@ getBasicAnimationInterfaceFactoryInstance(string resource)
    {
        BasicArrayList@ list = this.getList();
        BasicArrayList@ resourceTypeAvailableList = BasicArrayListD().jinit_BasicArrayListD();
        int size = this.getList().size();
        FeatureResourceAnimationInterfaceFactoryInterface@ featureInterface;
        BasicAnimationInterfaceFactoryInterface@ animationInterfaceFactoryInterface;
        for (int index = 0; index < size; index++) {
            @featureInterface = cast<FeatureResourceAnimationInterfaceFactoryInterface>(list.objectArray[index]);
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add(featureInterface);
                @animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource);
                if (animationInterfaceFactoryInterface !is NullAnimationFactory::NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
                    return animationInterfaceFactoryInterface;
                }
            }
        }
        if (resourceTypeAvailableList.size() > 0) {
            string NO_ANIMATION_AVAILABLE_FROM = "No animation available from: ";
            string FOR_FACTORIES = " factories: ";
            string FOR_RESOURCE = " for Resource: ";
            string HAS_KEY = " has: ";
            string RESOURCES_LABEL = " resources ";
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint(resourceTypeAvailableList.size());
            stringBuffer.append(CommonSeps::getInstance().FORWARD_SLASH);
            stringBuffer.appendint(size);
            stringBuffer.append(FOR_FACTORIES);
            int size2 = resourceTypeAvailableList.size();
            for (int index = 0; index < size2; index++) {
                stringBuffer.append(resourceTypeAvailableList.get(index).toString());
                stringBuffer.append(CommonSeps::getInstance().COMMA_SEP);
            }
            stringBuffer.append(FOR_RESOURCE);
            stringBuffer.append(resource);
            for (int index = 0; index < size; index++) {
                stringBuffer.append(CommonSeps::getInstance().NEW_LINE);
                @featureInterface = cast<FeatureResourceAnimationInterfaceFactoryInterface>(list.objectArray[index]);
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil::getInstance().toString(featureInterface));
                    stringBuffer.append(HAS_KEY);
                    stringBuffer.appendint(featureInterface.getHashtable().size());
                    stringBuffer.append(RESOURCES_LABEL);
                }
            }
            jthrow(Exception().jinit_Exception(stringBuffer.toString()));
        } else {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            for (int index = 0; index < size; index++) {
                @featureInterface = cast<FeatureResourceAnimationInterfaceFactoryInterface>(list.objectArray[index]);
                stringBuffer.append(featureInterface.toString());
                stringBuffer.append(CommonSeps::getInstance().SPACE);
            }
            string result = stringBuffer.toString();
            stringBuffer.delete(0, stringBuffer.length());
            jthrow(Exception().jinit_Exception(stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString()));
        }
        return null;
    }
}

namespace FeaturedAnimationInterfaceFactoryInterfaceFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory().jinit_FeaturedAnimationInterfaceFactoryInterfaceFactory();
    }

    FeaturedAnimationInterfaceFactoryInterfaceFactory@ jcell_INSTANCE;
    FeaturedAnimationInterfaceFactoryInterfaceFactory@ get_INSTANCE() property { jclinit(); return jcell_INSTANCE; }
    void set_INSTANCE(FeaturedAnimationInterfaceFactoryInterfaceFactory@ value) property { jclinit(); @jcell_INSTANCE = value; }
    

    FeaturedAnimationInterfaceFactoryInterfaceFactory@ getInstance()
    {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory::INSTANCE;
    }
}

