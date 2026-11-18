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
// package org.allbinary.direction

interface DirectionalInterface : JObject
{
    void setFrameByDirection(Direction@ direction);
    void setFrameToAngle(Angle@ angle);
    void adjustFrameToAngle(Angle@ newAngle);
    void adjustFrame(int16 angle);
}

