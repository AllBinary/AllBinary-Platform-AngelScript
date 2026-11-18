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

class IndependentVectorExplosionRotationAnimationFactory : JObjectBase, ProceduralAnimationInterfaceFactoryInterface
{
    int[]@[]@[]@ framePoints;
    VectorInfo@ vectorInfo;
    BasicColor@ basicColor;
    VectorAnimationFactoryInterface@ vectorAnimationFactoryInterface;
    VectorExplosionGenerator@ vectorExplosionGenerator;

    // Java field initializers run after the super constructor
    void jfields_IndependentVectorExplosionRotationAnimationFactory()
    {
    @this.framePoints = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    @this.vectorExplosionGenerator = VectorExplosionGenerator::getInstance_jstatic();
    }
    

    IndependentVectorExplosionRotationAnimationFactory@ jinit_IndependentVectorExplosionRotationAnimationFactory(VectorInfo@ vectorInfo, BasicColor@ basicColor, VectorAnimationFactoryInterface@ vectorAnimationFactoryInterface)
    {
        this.jfields_IndependentVectorExplosionRotationAnimationFactory();
        @this.vectorInfo = vectorInfo;
        @this.basicColor = basicColor;
        @this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        this.init();
        return this;
    }
    

    void init()
    {
        @this.framePoints = VectorRotationGenerator::getInstance_jstatic().getInstance(this.vectorInfo);
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        int frame = 0;
        if (animationInterface !is null) {
            IndexedAnimation@ rotationAnimationInterface = cast<IndexedAnimation>(animationInterface);
            frame = rotationAnimationInterface.getFrame();
        }
        int[]@[]@[]@ points = this.vectorExplosionGenerator.getInstance(this.framePoints[frame], 6, this.vectorExplosionGenerator.ROTATION);
        return this.vectorAnimationFactoryInterface.getInstance(points, this.basicColor);
    }
}

