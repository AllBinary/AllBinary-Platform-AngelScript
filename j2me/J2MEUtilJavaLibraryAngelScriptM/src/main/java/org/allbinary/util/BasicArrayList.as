// Generated Code Do Not Modify
// package org.allbinary.util

//This is a very fast and simple resizable list.
class BasicArrayList : JObjectBase
{
    ArrayUtil@ arrayUtil;
    JObject@[]@ objectArray;
    int currentIndex;

    // Java field initializers run after the super constructor
    void jfields_BasicArrayList()
    {
    @this.arrayUtil = ArrayUtil::getInstance();
    
    this.currentIndex = 0;
    }
    

    BasicArrayList@ jinit_BasicArrayList(JObject@[]@ objectArray)
    {
        this.jfields_BasicArrayList();
        @this.objectArray = objectArray;
        return this;
    }
    

    void addAt(int index, JObject@ element)
    {
        if (index > this.currentIndex || index < 0) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        this.ensureCapacity(this.currentIndex + 1);
        System::arraycopy(@this.objectArray, index, @this.objectArray, index + 1, this.currentIndex - index);
        @this.objectArray[index] = element;
        this.currentIndex++;
    }
    

    bool add(JObject@ anyType)
    {
        this.ensureCapacity(this.currentIndex + 1);
        @this.objectArray[this.currentIndex++] = anyType;
        return true;
    }
    

    JObject@ removeAt(int index)
    {
        if (index >= this.currentIndex) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        JObject@ oldValue = this.objectArray[index];
        int numMoved = this.currentIndex - index - 1;
        if (numMoved > 0) {
            System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
        }
        @this.objectArray[--this.currentIndex] = null;
        return oldValue;
    }
    

    bool remove(JObject@ anyType)
    {
        if (anyType is null) {
            for (int index = 0; index < this.currentIndex; index++) {
                if (this.objectArray[index] is null) {
                    int numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
                    }
                    @this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        } else {
            for (int index = 0; index < this.currentIndex; index++) {
                if (anyType is this.objectArray[index] || anyType.equals(this.objectArray[index])) {
                    int numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
                    }
                    @this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        }
        return false;
    }
    

    bool removeAll2(BasicArrayList@ list)
    {
        bool result = true;
        int size = list.size();
        for (int index = 0; index < size; index++) {
            if (this.remove(list.get(index))) {
            } else {
                result = false;
            }
        }
        return result;
    }
    

    bool addAll2(BasicArrayList@ list)
    {
        this.ensureCapacity(this.currentIndex + list.currentIndex);
        int listSize = list.currentIndex;
        for (int index = 0; index < listSize; index++) {
            @this.objectArray[this.currentIndex++] = list.objectArray[index];
        }
        return true;
    }
    

    bool addAllList(BasicArrayList@ list)
    {
        JObject@[]@ newObjectArray = list.toArray();
        return this.addAll(newObjectArray);
    }
    

    bool addAll(JObject@[]@ newObjectArray)
    {
        int numSize = int(newObjectArray.length());
        this.ensureCapacity(this.currentIndex + numSize);
        System::arraycopy(@newObjectArray, 0, @this.objectArray, this.currentIndex, numSize);
        this.currentIndex += numSize;
        return numSize != 0;
    }
    

    void ensureCapacity(int minSize)
    {
        int oldCapacity = int(this.objectArray.length());
        if (minSize > oldCapacity) {
            int newCapacity = ((oldCapacity * 3) >>> 1) + 1;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            @this.objectArray = this.arrayUtil.copyOf(this.objectArray, newCapacity);
        }
    }
    

    void trimToSize()
    {
        int oldCapacity = int(this.objectArray.length());
        if (this.currentIndex < oldCapacity) {
            @this.objectArray = this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
        }
    }
    

    int indexOf(JObject@ anyType)
    {
        if (anyType is null) {
            for (int i = 0; i < this.currentIndex; i++) {
                if (this.objectArray[i] is null) {
                    return i;
                }
            }
        } else {
            for (int i = 0; i < this.currentIndex; i++) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    int lastIndexOf(JObject@ anyType)
    {
        if (anyType is null) {
            for (int i = this.currentIndex - 1; i >= 0; i--) {
                if (this.objectArray[i] is null) {
                    return i;
                }
            }
        } else {
            for (int i = this.currentIndex - 1; i >= 0; i--) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    JObject@ get(int index)
    {
        if (index >= this.currentIndex) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        return this.objectArray[index];
    }
    

    JObject@ set(int index, JObject@ element)
    {
        if (index >= this.currentIndex) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        JObject@ oldValue = this.objectArray[index];
        @this.objectArray[index] = element;
        return oldValue;
    }
    

    void clear()
    {
        for (int i = 0; i < this.currentIndex; i++) {
            @this.objectArray[i] = null;
        }
        this.currentIndex = 0;
    }
    

    int size()
    {
        return this.currentIndex;
    }
    

    bool isEmpty()
    {
        return this.currentIndex == 0;
    }
    

    bool contains(JObject@ anyType)
    {
        return this.indexOf(anyType) >= 0;
    }
    

    JObject@[]@ toArray()
    {
        return this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
    }
    

    JObject@[]@ toArrayType(JObject@[]@ objectArray)
    {
        if (int(objectArray.length()) < this.currentIndex) {
            return this.arrayUtil.copyOfType(this.objectArray, this.currentIndex, jClassName(objectArray));
        }
        System::arraycopy(@this.objectArray, 0, @objectArray, 0, this.currentIndex);
        if (int(objectArray.length()) > this.currentIndex) {
            @objectArray[this.currentIndex] = null;
        }
        return objectArray;
    }
    

    JObject@ clone()
    {
        int size = this.size();
        BasicArrayList@ list = BasicArrayListS().jinit_BasicArrayListS(size);
        JObject@ anyType;
        for (int index = 0; index < size; index++) {
            @anyType = this.objectArray[index];
            list.add(anyType);
        }
        return list;
    }
    

    string toString()
    {
        string COMMA_SEP = CommonSeps::getInstance().COMMA_SEP;
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        for (int index = 0; index < this.currentIndex; index++) {
            stringBuffer.append(this.objectArray[index].toString());
            stringBuffer.append(COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

namespace BasicArrayList
{
    const string SIZE = ", Size: ";
}

