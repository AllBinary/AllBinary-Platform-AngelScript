// Generated Code Do Not Modify
// package org.allbinary.logic.string

class StringMaker : JObjectBase
{
    uint16[]@ charArray;
    int currentLength;
    

    StringMaker@ jinit_StringMaker()
    {
        @this.charArray = array<uint16>(20);
        return this;
    }
    

    StringMaker@ append(string string_)
    {
        int stringLength = int(string_.length());
        this.ensureCapacity(this.currentLength + stringLength);
        String::getChars(string_, 0, stringLength, this.charArray, this.currentLength);
        this.currentLength += stringLength;
        return this;
    }
    

    StringMaker@ appendchar(uint16 c)
    {
        this.ensureCapacity(this.currentLength + 1);
        this.charArray[this.currentLength++] = c;
        return this;
    }
    

    StringMaker@ appendCharArray(uint16[]@ charArray, int start, int end)
    {
        this.ensureCapacity(this.currentLength + (end - start));
        for (int index = start; index < end; index++) {
            this.charArray[this.currentLength++] = charArray[index];
        }
        return this;
    }
    

    StringMaker@ appendbyte(int8 b)
    {
        this.append(Integer::toString(b));
        return this;
    }
    

    StringMaker@ appendshort(int16 b)
    {
        this.append(Integer::toString(b));
        return this;
    }
    

    StringMaker@ appendint(int i)
    {
        this.append(Integer::toString(i));
        return this;
    }
    

    StringMaker@ appendlong(int64 l)
    {
        this.append(Long::toString(l));
        return this;
    }
    

    StringMaker@ appendfloat(float f)
    {
        this.append(Float::toString(f));
        return this;
    }
    

    StringMaker@ appendboolean(bool bool_)
    {
        if (bool_) {
            this.ensureCapacity(this.currentLength + 4);
            this.charArray[this.currentLength++] = uint16('t');
            this.charArray[this.currentLength++] = uint16('r');
            this.charArray[this.currentLength++] = uint16('u');
            this.charArray[this.currentLength++] = uint16('e');
        } else {
            this.ensureCapacity(this.currentLength + 5);
            this.charArray[this.currentLength++] = uint16('f');
            this.charArray[this.currentLength++] = uint16('a');
            this.charArray[this.currentLength++] = uint16('l');
            this.charArray[this.currentLength++] = uint16('s');
            this.charArray[this.currentLength++] = uint16('e');
        }
        return this;
    }
    

    void ensureCapacity(int minSize)
    {
        int oldCapacity = int(this.charArray.length());
        if (minSize > oldCapacity) {
            int newCapacity = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            uint16[]@ copy = array<uint16>(newCapacity);
            int min = this.min(int(this.charArray.length()), newCapacity);
            System::arraycopy(@this.charArray, 0, @copy, 0, min);
            @this.charArray = copy;
        }
    }
    

    int min(int value, int value2)
    {
        return ((value <= value2) ? value : value2);
    }
    

    StringMaker@ delete(int start, int end)
    {
        this.currentLength -= (end - start);
        return this;
    }
    

    int length()
    {
        return this.currentLength;
    }
    

    string toString()
    {
        return String::newString(this.charArray, 0, this.currentLength);
    }
}

