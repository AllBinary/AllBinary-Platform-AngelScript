// Generated Code Do Not Modify
// package org.allbinary.animation.vector

class ARectangleFilledAnimation : RectangleFilledAnimation
{
    int x;
    int y;
    

    ARectangleFilledAnimation@ jinit_ARectangleFilledAnimation()
    {
        this.jinit_RectangleFilledAnimation(0, 0, BasicColorFactory::getInstance().BLACK);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int unusedX, int unusedY)
    {
        RectangleFilledAnimation::paintXY(graphics, this.x, this.y);
    }
}

