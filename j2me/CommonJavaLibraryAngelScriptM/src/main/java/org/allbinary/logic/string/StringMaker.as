// Generated Code Do Not Modify
// package org.allbinary.logic.string

class StringMaker : JObjectBase
{
    uint16[]@ charArray_StringMaker;
    int currentLength_StringMaker;
    

    StringMaker@ jinit_StringMaker()
    {
        @this.charArray_StringMaker = array<uint16>(20);
        return this;
    }
    

    StringMaker@ append(string string_)
    {
        int stringLength = int(string_.length());
        this.ensureCapacity(this.currentLength_StringMaker + stringLength);
        String::getChars(string_, 0, stringLength, this.charArray_StringMaker, this.currentLength_StringMaker);
        this.currentLength_StringMaker += stringLength;
        return this;
    }
    

    StringMaker@ appendchar(uint16 c)
    {
        this.ensureCapacity(this.currentLength_StringMaker + 1);
        this.charArray_StringMaker[this.currentLength_StringMaker++] = c;
        return this;
    }
    

    StringMaker@ appendCharArray(uint16[]@ charArray, int start, int end)
    {
        this.ensureCapacity(this.currentLength_StringMaker + (end - start));
        for (int index = start; index < end; index++) {
            this.charArray_StringMaker[this.currentLength_StringMaker++] = charArray[index];
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
            this.ensureCapacity(this.currentLength_StringMaker + 4);
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('t');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('r');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('u');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('e');
        } else {
            this.ensureCapacity(this.currentLength_StringMaker + 5);
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('f');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('a');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('l');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('s');
            this.charArray_StringMaker[this.currentLength_StringMaker++] = uint16('e');
        }
        return this;
    }
    

    void ensureCapacity(int minSize)
    {
        int oldCapacity = int(this.charArray_StringMaker.length());
        if (minSize > oldCapacity) {
            int newCapacity = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            uint16[]@ copy = array<uint16>(newCapacity);
            int min = this.min(int(this.charArray_StringMaker.length()), newCapacity);
            System::arraycopy(@this.charArray_StringMaker, 0, @copy, 0, min);
            @this.charArray_StringMaker = copy;
        }
    }
    

    int min(int value, int value2)
    {
        return ((value <= value2) ? value : value2);
    }
    

    StringMaker@ delete(int start, int end)
    {
        this.currentLength_StringMaker -= (end - start);
        return this;
    }
    

    int length()
    {
        return this.currentLength_StringMaker;
    }
    

    string toString()
    {
        return String::newString(this.charArray_StringMaker, 0, this.currentLength_StringMaker);
    }
}

