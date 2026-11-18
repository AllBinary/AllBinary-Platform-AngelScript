// Generated Code Do Not Modify
// package org.allbinary.animation

class FillAnimation : IndexedAnimation
{
    int[]@ pixelBuffer_FillAnimation;
    int width_FillAnimation;
    int height_FillAnimation;
    

    FillAnimation@ jinit_FillAnimation(int[]@ pixelBuffer, int width, int height, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.width_FillAnimation = 100;
        this.height_FillAnimation = 100;
        @this.pixelBuffer_FillAnimation = pixelBuffer;
        return this;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        bool changed = false;
        if (this.getBasicColorP() is null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        IndexedAnimation::setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void changeBasicColor(BasicColor@ basicColor)
    {
        bool changed = false;
        if (this.getChangeBasicColor() is null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        IndexedAnimation::changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void setAlpha(int alpha)
    {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        IndexedAnimation::setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void setScale(float scaleX, float scaleY)
    {
    }
    

    void setMaxScale(float maxScaleX, float maxScaleY)
    {
    }
    

    void updateModifiers()
    {
    }
    

    void paint(Graphics@ g)
    {
        g.drawRGB(this.pixelBuffer_FillAnimation, 0, this.width_FillAnimation, 0, 0, this.width_FillAnimation, this.height_FillAnimation, true);
    }
}

