// Generated Code Do Not Modify
// package org.allbinary.util

class ArrayUtil : JObjectBase
{
    MathUtil@ mathUtil;

    // Java field initializers run after the super constructor
    void jfields_ArrayUtil()
    {
    @this.mathUtil = MathUtil::getInstance();
    }

    ArrayUtil@ jinit_ArrayUtil()
    {
        this.jfields_ArrayUtil();
        return this;
    }
    

    JObject@[]@ copyOf(JObject@[]@ original, int newLength)
    {
        return this.copyOfType(original, newLength, jClassName(original));
    }
    

    JObject@[]@ copyOfType(JObject@[]@ original, int newLength, string newType)
    {
        JObject@[]@ copy = array<JObject@>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    int8[]@ copyOfbyte(int8[]@ original, int newLength)
    {
        int8[]@ copy = array<int8>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    int16[]@ copyOfshort(int16[]@ original, int newLength)
    {
        int16[]@ copy = array<int16>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    int[]@ copyOfint(int[]@ original, int newLength)
    {
        int[]@ copy = array<int>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    int64[]@ copyOflong(int64[]@ original, int newLength)
    {
        int64[]@ copy = array<int64>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    uint16[]@ copyOfchar(uint16[]@ original, int newLength)
    {
        uint16[]@ copy = array<uint16>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    float[]@ copyOffloat(float[]@ original, int newLength)
    {
        float[]@ copy = array<float>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    double[]@ copyOfdouble(double[]@ original, int newLength)
    {
        double[]@ copy = array<double>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    bool[]@ copyOfboolean(bool[]@ original, int newLength)
    {
        bool[]@ copy = array<bool>(newLength);
        System::arraycopy(@original, 0, @copy, 0, this.mathUtil.min(int(original.length()), newLength));
        return copy;
    }
    

    void reverse(int[]@ intArray)
    {
        int length = int(intArray.length()) - 1;
        int temp = 0;
        int size = length / 2;
        for (int index = 0; index <= size; index++) {
            temp = intArray[index];
            intArray[index] = intArray[length - index];
            intArray[length - index] = temp;
        }
    }
    

    void flip(int[]@ intArray, int width, int height)
    {
        int length = height - 1;
        int temp = 0;
        int index = 0;
        int rowIndex = 0;
        for (int y = 0; y <= length / 2; y++) {
            for (int x = 0; x < width; x++) {
                rowIndex = ((length - y) * width);
                index = x + (y * width);
                temp = intArray[index];
                intArray[index] = intArray[rowIndex + x];
                intArray[rowIndex + x] = temp;
            }
        }
    }
    

    string toStringFromTwoDimensionaArray(int[]@[]@ twoDimensionalIntArray)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        int endIndex = int(twoDimensionalIntArray.length());
        int endIndex2 = int(twoDimensionalIntArray[0].length());
        for (int index = 0; index < endIndex; index++) {
            stringBuffer.append(commonSeps.BRACE_OPEN);
            for (int index2 = 0; index2 < endIndex2; index2++) {
                stringBuffer.appendint(int(twoDimensionalIntArray[index][index2]));
                stringBuffer.append(commonSeps.COMMA_SEP);
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE);
            stringBuffer.append(commonSeps.NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    string toStringFromObjectArray(JObject@[]@ objectArray)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        for (int index = 0; index < int(objectArray.length()); index++) {
            stringBuffer.append(StringUtil::getInstance().toString(objectArray[index]));
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    

    string toStringFromByteArray(int8[]@ byteArray)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        for (int index = 0; index < int(byteArray.length()); index++) {
            stringBuffer.appendbyte(byteArray[index]);
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

namespace ArrayUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ArrayUtil().jinit_ArrayUtil();
    }

    ArrayUtil@ jcell_instance;
    ArrayUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ArrayUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ArrayUtil@ getInstance()
    {
        return ArrayUtil::instance;
    }
}

