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

class VectorExplosionAnimationFactory : JObjectBase, ProceduralAnimationInterfaceFactoryInterface
{
    VectorExplosionGenerator@ vectorExplosionGenerator;
    BasicColor@ basicColor;
    AnimationBehaviorFactory@ animationBehaviorFactory;

    // Java field initializers run after the super constructor
    void jfields_VectorExplosionAnimationFactory()
    {
    @this.vectorExplosionGenerator = VectorExplosionGenerator::getInstance_jstatic();
    @this.basicColor = BasicColorFactory::getInstance().WHITE;
    
    }
    

    VectorExplosionAnimationFactory@ jinit_VectorExplosionAnimationFactory(BasicColor@ basicColor, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jfields_VectorExplosionAnimationFactory();
        @this.animationBehaviorFactory = animationBehaviorFactory;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        VectorAnimationInterface@ vectorRotationAnimationInterface = cast<VectorAnimationInterface>(animationInterface);
        int frame = vectorRotationAnimationInterface.getFrame();
        int[]@[]@ framePoints = vectorRotationAnimationInterface.getPoints(frame);
        int[]@[]@[]@ points = this.vectorExplosionGenerator.getInstance(framePoints, 6, this.vectorExplosionGenerator.ROTATION);
        return VectorRotationAnimation().jinit_VectorRotationAnimation(points, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor;
    }
}

