// Generated Code Do Not Modify
// package org.allbinary.logic.math

class MathUtil : JObjectBase
{
    int ACCURACY;

    // Java field initializers run after the super constructor
    void jfields_MathUtil()
    {
    this.ACCURACY = 100;
    }

    MathUtil@ jinit_MathUtil()
    {
        this.jfields_MathUtil();
        return this;
    }
    

    int getTotalDigits(int digits)
    {
        int total = 0;
        while (digits > 0) {
            digits = digits / 10;
            total++;
        }
        return total;
    }
    

    int sqrt(int value)
    {
        if (value <= 1) {
            return value;
        }
        int accumulated = value >>> 1;
        int result = (accumulated + (value / accumulated)) >>> 1;
        do {
            accumulated = result;
            result = (accumulated + (value / accumulated)) >>> 1;
        } while (accumulated > result);
        return accumulated;
    }
    

    double sqrtd(int x)
    {
        if (x == 0) {
            return double(0.0f);
        }
        if (x < 0) {
            return double(-1.0f);
        }
        double result = double(x);
        for (int index = 0; index < this.ACCURACY; index++) {
            result = (result + (double(x) / result)) / 2.0;
        }
        return result;
    }
    

    int abs(int value)
    {
        return ((value < 0) ? -value : value);
    }
    

    int64 abslong(int64 value)
    {
        return ((value < 0) ? -value : value);
    }
    

    int min(int value, int value2)
    {
        return ((value <= value2) ? value : value2);
    }
    

    int max(int value, int value2)
    {
        return ((value >= value2) ? value : value2);
    }
}

namespace MathUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MathUtil().jinit_MathUtil();
    }

    MathUtil@ jcell_instance;
    MathUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MathUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    MathUtil@ getInstance()
    {
        return MathUtil::instance;
    }
}

