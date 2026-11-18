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
// package org.allbinary.animation.image

class ImageArrayRotationAnimationCacheable : AdjustedImageArrayRotationAnimation, CacheableInterface
{
    

    ImageArrayRotationAnimationCacheable@ jinit_ImageArrayRotationAnimationCacheable(JObject@ anyType, AnimationBehavior@ animationBehavior)
    {
        this.jinit_AdjustedImageArrayRotationAnimation((cast<ImageArrayRotationAnimationInfo>(anyType)).getImageArray(), (cast<ImageArrayRotationAnimationInfo>(anyType)).getAngleInfoP(), (cast<ImageArrayRotationAnimationInfo>(anyType)).getTotalAngle(), (cast<ImageArrayRotationAnimationInfo>(anyType)).getDx(), (cast<ImageArrayRotationAnimationInfo>(anyType)).getDy(), animationBehavior);
        return this;
    }
    

    JObject@ getKey()
    {
        return NullUtil::getInstance().NULL_OBJECT;
    }
    

    string toString()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
}

