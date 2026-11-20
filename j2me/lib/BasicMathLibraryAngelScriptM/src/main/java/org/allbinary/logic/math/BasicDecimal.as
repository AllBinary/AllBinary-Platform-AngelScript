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
    int64 units_BasicDecimal;
    int scaled_BasicDecimal;
    int factor_BasicDecimal;
    int factorValue_BasicDecimal;

    // Java field initializers run after the super constructor
    void jfields_BasicDecimal()
    {
    
    
    this.factor_BasicDecimal = ScaleFactorFactory::getInstance().DEFAULT_SCALE_FACTOR;
    this.factorValue_BasicDecimal = ScaleFactorFactory::getInstance().DEFAULT_SCALE_VALUE;
    }
    

    BasicDecimal@ jinit_BasicDecimal(int64 units)
    {
        this.jfields_BasicDecimal();
        this.units_BasicDecimal = units;
        this.updateScaled();
        return this;
    }
    

    void setint(int value)
    {
        this.units_BasicDecimal = int64(value);
        this.updateScaled();
    }
    

    void setlong(int64 value)
    {
        this.units_BasicDecimal = value;
        this.updateScaled();
    }
    

    void set(BasicDecimal@ bigDecimal)
    {
        this.units_BasicDecimal = bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void addint(int value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal + int64(value);
        this.updateScaled();
    }
    

    void addlong(int64 value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal + value;
        this.updateScaled();
    }
    

    void add(BasicDecimal@ bigDecimal)
    {
        this.units_BasicDecimal = this.units_BasicDecimal + bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void subtractint(int value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal - int64(value);
        this.updateScaled();
    }
    

    void subtractlong(int64 value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal - value;
        this.updateScaled();
    }
    

    void subtract(BasicDecimal@ bigDecimal)
    {
        this.units_BasicDecimal = this.units_BasicDecimal - bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void multiplyint(int value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal * int64(value);
        this.updateScaled();
    }
    

    void multiplylong(int64 value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal * value;
        this.updateScaled();
    }
    

    void multiply(BasicDecimal@ bigDecimal)
    {
        this.units_BasicDecimal = this.units_BasicDecimal * bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void divideint(int value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal / int64(value);
        this.updateScaled();
    }
    

    void dividelong(int64 value)
    {
        this.units_BasicDecimal = this.units_BasicDecimal / value;
        this.updateScaled();
    }
    

    void divide(BasicDecimal@ bigDecimal)
    {
        this.units_BasicDecimal = this.units_BasicDecimal / bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    int64 getUnscaled()
    {
        return this.units_BasicDecimal;
    }
    

    void updateScaled()
    {
        this.scaled_BasicDecimal = int((this.units_BasicDecimal / int64(this.factorValue_BasicDecimal)));
    }
    

    int getScaled()
    {
        return this.scaled_BasicDecimal;
    }
    

    string toString()
    {
        return Long::toString(this.units_BasicDecimal);
    }
    

    int getScaledFactor()
    {
        return this.factor_BasicDecimal;
    }
    

    int getScaledFactorValue()
    {
        return this.factorValue_BasicDecimal;
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

