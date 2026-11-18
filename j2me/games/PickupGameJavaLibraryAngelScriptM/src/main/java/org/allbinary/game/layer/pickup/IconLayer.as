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
// package org.allbinary.game.layer.pickup

class IconLayer : AllBinaryLayer
{
    Animation@ animationInterface_IconLayer;
    

    IconLayer@ jinit_IconLayer(Animation@ animationInterface, int width, int height)
    {
        this.jinit_AllBinaryLayer(StringUtil::getInstance().EMPTY_STRING, Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, width, height), ViewPosition::getInstanceD());
        @this.animationInterface_IconLayer = animationInterface;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_IconLayer.paintXY(graphics, this.x, this.y);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.animationInterface_IconLayer.paintThreedXYZ(graphics, this.x, this.y, this.z);
    }
    

    Animation@ getAnimationInterface()
    {
        return this.animationInterface_IconLayer;
    }
}

namespace IconLayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ICON_LAYER = IconLayer().jinit_IconLayer(NullAnimationFactory::getFactoryInstance().getInstance(0), 0, 0);
    }

    IconLayer@ jcell_NULL_ICON_LAYER;
    IconLayer@ get_NULL_ICON_LAYER() property { jclinit(); return jcell_NULL_ICON_LAYER; }
    void set_NULL_ICON_LAYER(IconLayer@ value) property { jclinit(); @jcell_NULL_ICON_LAYER = value; }
}

