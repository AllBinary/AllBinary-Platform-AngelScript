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

class NullRotationAnimation2 : NullRotationAnimation
{
    

    NullRotationAnimation2@ jinit_NullRotationAnimation2()
    {
        this.jinit_NullRotationAnimation(AngleInfo::getInstance(AngleFactory::getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil::createInstance(4), IndexedAnimationBehavior().jinit_IndexedAnimationBehavior(1, 250));
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
    }
}

