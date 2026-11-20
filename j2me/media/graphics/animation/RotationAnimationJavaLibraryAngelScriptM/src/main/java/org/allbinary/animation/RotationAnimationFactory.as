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

class RotationAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    int16 totalAngle_RotationAnimationFactory;
    int16 angleIncrement_RotationAnimationFactory;
    

    RotationAnimationFactory@ jinit_RotationAnimationFactory(int16 totalAngle, int16 angleIncrement)
    {
        this.totalAngle_RotationAnimationFactory = totalAngle;
        this.angleIncrement_RotationAnimationFactory = angleIncrement;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return NullRotationAnimation::createTotalAngle(AngleInfo::getInstance(this.angleIncrement_RotationAnimationFactory), this.totalAngle_RotationAnimationFactory, AnimationBehavior::getInstance());
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return NullRotationAnimation::createTotalAngle(AngleInfo::getInstance(this.angleIncrement_RotationAnimationFactory), this.totalAngle_RotationAnimationFactory, AnimationBehavior::getInstance());
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace RotationAnimationFactory
{
    

    RotationAnimationFactory@ createFactory()
    {
        int16 totalAngle = AngleFactory::getInstance().TOTAL_ANGLE;
        return RotationAnimationFactory().jinit_RotationAnimationFactory(totalAngle, int16((int(totalAngle) / GameConfigurationCentral::getInstance().getGameControlFidelity())));
    }
}

