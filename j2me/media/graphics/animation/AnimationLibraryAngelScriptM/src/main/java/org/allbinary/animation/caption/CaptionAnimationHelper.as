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
// package org.allbinary.animation.caption

class CaptionAnimationHelper : CaptionAnimationHelperBase
{
    TimeDelayHelper@ timeHelper_CaptionAnimationHelper;
    TextAnimation@ textAnimation_CaptionAnimationHelper;
    Animation@ captionAnimation_CaptionAnimationHelper;
    Animation@ animation_CaptionAnimationHelper;

    // Java field initializers run after the super constructor
    void jfields_CaptionAnimationHelper()
    {
    @this.timeHelper_CaptionAnimationHelper = TimeDelayHelper().jinit_TimeDelayHelper(620);
    @this.textAnimation_CaptionAnimationHelper = TextAnimation().jinit_TextAnimation(StringUtil::getInstance().EMPTY_STRING, AnimationBehavior::getInstance());
    
    @this.animation_CaptionAnimationHelper = NullAnimationFactory::getFactoryInstance().getInstance(0);
    }
    

    CaptionAnimationHelper@ jinit_CaptionAnimationHelper(Animation@ captionAnimation, int captionDx, int captionDy, int dx, int dy)
    {
        this.jinit_CaptionAnimationHelperBase();
        this.jfields_CaptionAnimationHelper();
        @this.captionAnimation_CaptionAnimationHelper = CaptionAnimation().jinit_CaptionAnimation(captionAnimation, this.textAnimation_CaptionAnimationHelper, captionDx, captionDy, dx, dy);
        return this;
    }
    

    bool isShowing()
    {
        if (this.animation_CaptionAnimationHelper is this.captionAnimation_CaptionAnimationHelper) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void tick()
    {
        if (this.timeHelper_CaptionAnimationHelper.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            @this.animation_CaptionAnimationHelper = NullAnimationFactory::getFactoryInstance().getInstance(0);
        }
    }
    

    void update(string message, BasicColor@ basicColor)
    {
        this.textAnimation_CaptionAnimationHelper.setBasicColorP(basicColor);
        this.textAnimation_CaptionAnimationHelper.setText(message);
        @this.animation_CaptionAnimationHelper = this.captionAnimation_CaptionAnimationHelper;
        this.timeHelper_CaptionAnimationHelper.setStartTimeTNT();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.animation_CaptionAnimationHelper.paintXY(graphics, x, y);
    }
}

