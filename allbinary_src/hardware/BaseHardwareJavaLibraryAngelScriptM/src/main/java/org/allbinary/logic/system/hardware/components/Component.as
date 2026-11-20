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
// package org.allbinary.logic.system.hardware.components

class Component : JObjectBase
{
    string name_Component;
    

    Component@ jinit_Component(string componentName)
    {
        this.name_Component = componentName;
        return this;
    }
    

    string toString()
    {
        return this.name_Component;
    }
}

