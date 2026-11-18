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
// package org.allbinary.layer

class AllBinaryLayerFactory : JObjectBase, AllBinaryLayerFactoryInterface
{
    Rectangle@ rectangle;
    

    AllBinaryLayerFactory@ jinit_AllBinaryLayerFactory(Rectangle@ rectangle)
    {
        @this.rectangle = rectangle;
        return this;
    }
    

    AllBinaryLayer@ getInstance()
    {
        return AllBinaryLayer().jinit_AllBinaryLayer(StringUtil::getInstance().EMPTY_STRING, this.rectangle, ViewPosition::getInstanceD());
    }
}

