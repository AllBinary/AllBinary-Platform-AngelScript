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

class IconLayerFactory : JObjectBase
{

    IconLayerFactory@ jinit_IconLayerFactory()
    {
        return this;
    }
}

namespace IconLayerFactory
{
    

    IconLayer@ getInstance(Animation@ animationInterface, int width, int height)
    {
        return IconLayer().jinit_IconLayer(animationInterface, width, height);
    }
}

