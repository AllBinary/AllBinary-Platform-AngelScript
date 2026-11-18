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

class RandomRotationFactory : JObjectBase
{
    MyRandomFactory@ myRandomFactory;
    AngleFactory@ angleFactory;

    // Java field initializers run after the super constructor
    void jfields_RandomRotationFactory()
    {
    @this.myRandomFactory = MyRandomFactory::getInstance();
    @this.angleFactory = AngleFactory::getInstance();
    }

    RandomRotationFactory@ jinit_RandomRotationFactory()
    {
        this.jfields_RandomRotationFactory();
        return this;
    }
    

    BasicArrayList@ getInstanceList(BasicArrayList@ vector, int howMuch)
    {
        BasicGraphicsPipeline@ graphicsPipe = BasicGraphicsPipeline().jinit_BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.rotateToAngle(this.angleFactory.getAt(this.getNextRandomAngle(howMuch)));
        return graphicsPipe.getMatrix();
    }
    

    int getNextRandomAngle(int howMuch)
    {
        return this.myRandomFactory.getNextInt(howMuch * 10);
    }
}

namespace RandomRotationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RandomRotationFactory().jinit_RandomRotationFactory();
    }

    RandomRotationFactory@ jcell_instance;
    RandomRotationFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RandomRotationFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    RandomRotationFactory@ getInstance()
    {
        return RandomRotationFactory::instance;
    }
}

