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

class ImageArrayRotationAnimationPool : BasicArrayListResetablePool
{
    

    ImageArrayRotationAnimationPool@ jinit_ImageArrayRotationAnimationPool(CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface)
    {
        this.jinit_BasicArrayListResetablePool(cacheableInterfaceFactoryInterface);
        return this;
    }
    

    CacheableInterface@ remove(JObject@ key)
    {
        CacheableInterface@ cacheableInterface = BasicArrayListResetablePool::remove(key);
        ImageArrayRotationAnimationInfo@ allBinaryImageRotationAnimationInfo = cast<ImageArrayRotationAnimationInfo>(key);
        ImageArrayRotationAnimationCacheable@ imageArrayRotationAnimationCacheable = (cast<ImageArrayRotationAnimationCacheable>(cacheableInterface));
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray());
        return cacheableInterface;
    }
}

namespace ImageArrayRotationAnimationPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_IMAGE_ROTATION_ANIMATION_POOL = ImageArrayRotationAnimationPool().jinit_ImageArrayRotationAnimationPool(ImageArrayRotationAnimationCacheableInterfaceFactory().jinit_ImageArrayRotationAnimationCacheableInterfaceFactory());
    }

    PoolInterface@ jcell_IMAGE_ROTATION_ANIMATION_POOL;
    PoolInterface@ get_IMAGE_ROTATION_ANIMATION_POOL() property { jclinit(); return jcell_IMAGE_ROTATION_ANIMATION_POOL; }
    void set_IMAGE_ROTATION_ANIMATION_POOL(PoolInterface@ value) property { jclinit(); @jcell_IMAGE_ROTATION_ANIMATION_POOL = value; }
    

    PoolInterface@ getInstance()
    {
        return ImageArrayRotationAnimationPool::IMAGE_ROTATION_ANIMATION_POOL;
    }
}

