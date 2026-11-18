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
// package org.allbinary.graphics.paint

class StringLocationPaintable : LocationPaintable
{
    string value_StringLocationPaintable;
    

    StringLocationPaintable@ jinit_StringLocationPaintable(string value)
    {
        this.jinit_LocationPaintable();
        this.value_StringLocationPaintable = value;
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawString(this.value_StringLocationPaintable, x, y, 0);
    }
}

