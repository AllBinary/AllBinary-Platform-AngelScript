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
    int[]@[]@[]@ framePoints_IndependentVectorExplosionRotationAnimationFactory;
    VectorInfo@ vectorInfo_IndependentVectorExplosionRotationAnimationFactory;
    BasicColor@ basicColor_IndependentVectorExplosionRotationAnimationFactory;
    VectorAnimationFactoryInterface@ vectorAnimationFactoryInterface_IndependentVectorExplosionRotationAnimationFactory;
    VectorExplosionGenerator@ vectorExplosionGenerator_IndependentVectorExplosionRotationAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_IndependentVectorExplosionRotationAnimationFactory()
    {
    @this.framePoints_IndependentVectorExplosionRotationAnimationFactory = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    @this.vectorExplosionGenerator_IndependentVectorExplosionRotationAnimationFactory = VectorExplosionGenerator::getInstance_jstatic();
    }
    

    IndependentVectorExplosionRotationAnimationFactory@ jinit_IndependentVectorExplosionRotationAnimationFactory(VectorInfo@ vectorInfo, BasicColor@ basicColor, VectorAnimationFactoryInterface@ vectorAnimationFactoryInterface)
    {
        this.jfields_IndependentVectorExplosionRotationAnimationFactory();
        @this.vectorInfo_IndependentVectorExplosionRotationAnimationFactory = vectorInfo;
        @this.basicColor_IndependentVectorExplosionRotationAnimationFactory = basicColor;
        @this.vectorAnimationFactoryInterface_IndependentVectorExplosionRotationAnimationFactory = vectorAnimationFactoryInterface;
        this.init();
        return this;
    }
    

    void init()
    {
        @this.framePoints_IndependentVectorExplosionRotationAnimationFactory = VectorRotationGenerator::getInstance_jstatic().getInstance(this.vectorInfo_IndependentVectorExplosionRotationAnimationFactory);
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        int frame = 0;
        if (animationInterface !is null) {
            IndexedAnimation@ rotationAnimationInterface = cast<IndexedAnimation>(animationInterface);
            frame = rotationAnimationInterface.getFrame();
        }
        int[]@[]@[]@ points = this.vectorExplosionGenerator_IndependentVectorExplosionRotationAnimationFactory.getInstance(this.framePoints_IndependentVectorExplosionRotationAnimationFactory[frame], 6, this.vectorExplosionGenerator_IndependentVectorExplosionRotationAnimationFactory.ROTATION);
        return this.vectorAnimationFactoryInterface_IndependentVectorExplosionRotationAnimationFactory.getInstance(points, this.basicColor_IndependentVectorExplosionRotationAnimationFactory);
    }
}

