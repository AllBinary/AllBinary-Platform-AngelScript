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
// package org.allbinary.game.ag.layer.weapon.mine

class MineLayerFactory : JObjectBase, AllBinaryLayerFactoryInterface
{
    ViewPositionFactoryInterface@ viewPositionFactoryInterface;
    

    MineLayerFactory@ jinit_MineLayerFactory(ViewPositionFactoryInterface@ viewPositionFactoryInterface)
    {
        @this.viewPositionFactoryInterface = viewPositionFactoryInterface;
        return this;
    }
    

    AllBinaryLayer@ getInstance()
    {
        return MineLayer().jinit_MineLayer(this.viewPositionFactoryInterface.getInstance());
    }
}

