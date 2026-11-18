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
// package org.allbinary.logic.math

class BasicDecimal : JObjectBase
{
    int64 units;
    int scaled;
    int factor;
    int factorValue;

    // Java field initializers run after the super constructor
    void jfields_BasicDecimal()
    {
    
    
    this.factor = ScaleFactorFactory::getInstance().DEFAULT_SCALE_FACTOR;
    this.factorValue = ScaleFactorFactory::getInstance().DEFAULT_SCALE_VALUE;
    }
    

    BasicDecimal@ jinit_BasicDecimal(int64 units)
    {
        this.jfields_BasicDecimal();
        this.units = units;
        this.updateScaled();
        return this;
    }
    

    void setint(int value)
    {
        this.units = int64(value);
        this.updateScaled();
    }
    

    void setlong(int64 value)
    {
        this.units = value;
        this.updateScaled();
    }
    

    void set(BasicDecimal@ bigDecimal)
    {
        this.units = bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void addint(int value)
    {
        this.units = this.units + int64(value);
        this.updateScaled();
    }
    

    void addlong(int64 value)
    {
        this.units = this.units + value;
        this.updateScaled();
    }
    

    void add(BasicDecimal@ bigDecimal)
    {
        this.units = this.units + bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void subtractint(int value)
    {
        this.units = this.units - int64(value);
        this.updateScaled();
    }
    

    void subtractlong(int64 value)
    {
        this.units = this.units - value;
        this.updateScaled();
    }
    

    void subtract(BasicDecimal@ bigDecimal)
    {
        this.units = this.units - bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void multiplyint(int value)
    {
        this.units = this.units * int64(value);
        this.updateScaled();
    }
    

    void multiplylong(int64 value)
    {
        this.units = this.units * value;
        this.updateScaled();
    }
    

    void multiply(BasicDecimal@ bigDecimal)
    {
        this.units = this.units * bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void divideint(int value)
    {
        this.units = this.units / int64(value);
        this.updateScaled();
    }
    

    void dividelong(int64 value)
    {
        this.units = this.units / value;
        this.updateScaled();
    }
    

    void divide(BasicDecimal@ bigDecimal)
    {
        this.units = this.units / bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    int64 getUnscaled()
    {
        return this.units;
    }
    

    void updateScaled()
    {
        this.scaled = int((this.units / int64(this.factorValue)));
    }
    

    int getScaled()
    {
        return this.scaled;
    }
    

    string toString()
    {
        return Long::toString(this.units);
    }
    

    int getScaledFactor()
    {
        return this.factor;
    }
    

    int getScaledFactorValue()
    {
        return this.factorValue;
    }
}

namespace BasicDecimal
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_ZERO_BIGDECIMAL = BasicDecimal().jinit_BasicDecimal(0);
    }

    BasicDecimal@ jcell_ZERO_BIGDECIMAL;
    BasicDecimal@ get_ZERO_BIGDECIMAL() property { jclinit(); return jcell_ZERO_BIGDECIMAL; }
    void set_ZERO_BIGDECIMAL(BasicDecimal@ value) property { jclinit(); @jcell_ZERO_BIGDECIMAL = value; }
    

    BasicDecimal@ createBigDecimal(BasicDecimal@ bigDecimal)
    {
        return BasicDecimal().jinit_BasicDecimal(bigDecimal.getUnscaled());
    }
}

