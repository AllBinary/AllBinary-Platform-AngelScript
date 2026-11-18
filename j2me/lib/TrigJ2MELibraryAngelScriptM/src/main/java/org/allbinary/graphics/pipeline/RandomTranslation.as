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
// package org.allbinary.graphics.pipeline

class RandomTranslation : JObjectBase
{

    RandomTranslation@ jinit_RandomTranslation()
    {
        return this;
    }
}

namespace RandomTranslation
{
    

    BasicArrayList@ getInstance(BasicArrayList@ vector, int howMuch)
    {
        MyRandomFactory@ myRandomFactory = MyRandomFactory::getInstance();
        int x = -myRandomFactory.getNextInt(howMuch);
        int y = myRandomFactory.getNextInt(howMuch);
        BasicGraphicsPipeline@ graphicsPipe = BasicGraphicsPipeline().jinit_BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(x, y);
        return graphicsPipe.getMatrix();
    }
}

