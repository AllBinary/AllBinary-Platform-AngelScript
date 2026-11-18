// Generated Code Do Not Modify
// package org.allbinary.animation

class NullRotationAnimation : RotationAnimation
{
    

    NullRotationAnimation@ jinit_NullRotationAnimation(AngleInfo@ angleInfo, CircularIndexUtil@ circularIndexUtil, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(angleInfo, circularIndexUtil, animationBehavior);
        return this;
    }
    

    int getAnimationSize()
    {
        return 0;
    }
}

namespace NullRotationAnimation
{
    

    NullRotationAnimation@ createTotalAngle(AngleInfo@ angleInfo, int16 totalAngle, AnimationBehavior@ animationBehavior)
    {
        return NullRotationAnimation().jinit_NullRotationAnimation(angleInfo, CircularIndexUtil::createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior);
    }
    

    NullRotationAnimation@ createQuarter(AnimationBehavior@ animationBehavior)
    {
        return NullRotationAnimation().jinit_NullRotationAnimation(AngleInfo::getInstance(AngleFactory::getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil::createInstance(4), animationBehavior);
    }
}

