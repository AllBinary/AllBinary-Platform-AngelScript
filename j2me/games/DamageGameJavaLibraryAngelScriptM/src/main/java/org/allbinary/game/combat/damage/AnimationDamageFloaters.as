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
// package org.allbinary.game.combat.damage

class AnimationDamageFloaters : DamageFloaters
{
    LogUtil@ logUtil;
    AllBinaryLayer@ layerInterface_AnimationDamageFloaters;
    IndexedAnimation@[]@ animationInterfaceArray_AnimationDamageFloaters;
    CircularIndexUtil@ circularIndexUtil_AnimationDamageFloaters;
    int dx_AnimationDamageFloaters;
    int dy_AnimationDamageFloaters;

    // Java field initializers run after the super constructor
    void jfields_AnimationDamageFloaters()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    
    
    
    }
    

    AnimationDamageFloaters@ jinit_AnimationDamageFloaters(AllBinaryLayer@ layerInterface, IndexedAnimation@[]@ animationInterfaceArray, int dx, int dy)
    {
        this.jinit_DamageFloaters();
        this.jfields_AnimationDamageFloaters();
        @this.animationInterfaceArray_AnimationDamageFloaters = animationInterfaceArray;
        for (int index = int(this.animationInterfaceArray_AnimationDamageFloaters.length()) - 1; index >= 0; index--) {
            this.animationInterfaceArray_AnimationDamageFloaters[index].setFrame(this.animationInterfaceArray_AnimationDamageFloaters[index].getSize() - 1);
        }
        @this.layerInterface_AnimationDamageFloaters = layerInterface;
        @this.circularIndexUtil_AnimationDamageFloaters = CircularIndexUtil::createInstance(int(this.animationInterfaceArray_AnimationDamageFloaters.length()));
        this.dx_AnimationDamageFloaters = dx;
        this.dy_AnimationDamageFloaters = dy;
        return this;
    }
    

    void add(int damage)
    {
        int i = this.circularIndexUtil_AnimationDamageFloaters.getIndex();
        this.animationInterfaceArray_AnimationDamageFloaters[i].setFrame(0);
        this.circularIndexUtil_AnimationDamageFloaters.next();
    }
    

    void paint(Graphics@ graphics)
    {
        try {
            ViewPositionBase@ viewPosition = this.layerInterface_AnimationDamageFloaters.getViewPosition();
            int x = viewPosition.getX();
            int y = viewPosition.getY();
            for (int index = 0; index < int(this.animationInterfaceArray_AnimationDamageFloaters.length()); index++) {
                IndexedAnimation@ animationInterface = this.animationInterfaceArray_AnimationDamageFloaters[index];
                if (animationInterface.getFrame() < animationInterface.getAnimationSize() - 1) {
                    int delta = animationInterface.getFrame() * 20;
                    animationInterface.paintXY(graphics, x + this.dx_AnimationDamageFloaters, y - delta + this.dy_AnimationDamageFloaters);
                    animationInterface.nextFrame();
                }
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            CanvasStrings@ canvasStrings = CanvasStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, canvasStrings.PAINT, e);
            }
            else { jthrow(jex0); }
        }
    }
}

