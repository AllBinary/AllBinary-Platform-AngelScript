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
// package org.allbinary.media.audio

class BaseSoundsFactory : JObjectBase, SoundsFactoryInterface
{
    bool initialized_BaseSoundsFactory;

    BaseSoundsFactory@ jinit_BaseSoundsFactory()
    {
        return this;
    }
    

    void init()
    {
    }
    

    Sound@[]@ getSoundInterfaceArray()
    {
        return array<Sound@>(0);
    }
    

    void setInitialized(bool initialized)
    {
        this.initialized_BaseSoundsFactory = initialized;
    }
    

    bool isInitialized()
    {
        return this.initialized_BaseSoundsFactory;
    }
}

