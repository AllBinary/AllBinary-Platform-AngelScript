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

class VectorRotationAnimationInterfaceFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    int[]@[]@[]@ currentPoints;
    BasicColor@ basicColor;
    AnimationBehaviorFactory@ animationBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_VectorRotationAnimationInterfaceFactory()
    {
    @this.currentPoints = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    @this.basicColor = BasicColorFactory::getInstance().WHITE;
    
    }
    

    VectorRotationAnimationInterfaceFactory@ jinit_VectorRotationAnimationInterfaceFactory(int[]@[]@[]@ currentPoints, BasicColor@ basicColor, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_VectorRotationAnimationInterfaceFactory();
        @this.currentPoints = currentPoints;
        this.setBasicColorP(basicColor);
        @this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return VectorRotationAnimation().jinit_VectorRotationAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

