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
// package org.allbinary.view

class StaticViewPosition : ViewPosition
{
    

    StaticViewPosition@ jinit_StaticViewPosition(int x, int y, int z)
    {
        this.jinit_ViewPosition(x, y, z);
        return this;
    }
    

    int getX()
    {
        return this.getRawX();
    }
    

    int getY()
    {
        return this.getRawY();
    }
    

    int getZ()
    {
        return this.getRawZ();
    }
}

