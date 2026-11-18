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
// package org.allbinary.image

class IndexedAnimationToImageArrayUtil : JObjectBase
{

    IndexedAnimationToImageArrayUtil@ jinit_IndexedAnimationToImageArrayUtil()
    {
        return this;
    }
}

namespace IndexedAnimationToImageArrayUtil
{
    

    Image@[]@ getInstance(int width, int height, IndexedAnimation@ sequentialAnimationInterface)
    {
        int size = sequentialAnimationInterface.getAnimationSize();
        Image@[]@ imageArray = array<Image@>(size);
        for (int index = 0; index < size; index++) {
            sequentialAnimationInterface.setFrame(index);
            @imageArray[index] = AnimationFrameToImageUtil::getInstance().getInstanceWH(width, height, sequentialAnimationInterface);
        }
        return imageArray;
    }
}

