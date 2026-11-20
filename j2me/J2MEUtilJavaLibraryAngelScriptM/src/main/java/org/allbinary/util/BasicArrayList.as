// Generated Code Do Not Modify
// package org.allbinary.util

//This is a very fast and simple resizable list.
class BasicArrayList : JObjectBase
{
    ArrayUtil@ arrayUtil_BasicArrayList;
    JObject@[]@ objectArray;
    int currentIndex_BasicArrayList;

    // Java field initializers run after the super constructor
    void jfields_BasicArrayList()
    {
    @this.arrayUtil_BasicArrayList = ArrayUtil::getInstance();
    
    this.currentIndex_BasicArrayList = 0;
    }
    

    BasicArrayList@ jinit_BasicArrayList(JObject@[]@ objectArray)
    {
        this.jfields_BasicArrayList();
        @this.objectArray = objectArray;
        return this;
    }
    

    void addAt(int index, JObject@ element)
    {
        if (index > this.currentIndex_BasicArrayList || index < 0) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex_BasicArrayList);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        this.ensureCapacity(this.currentIndex_BasicArrayList + 1);
        System::arraycopy(@this.objectArray, index, @this.objectArray, index + 1, this.currentIndex_BasicArrayList - index);
        @this.objectArray[index] = element;
        this.currentIndex_BasicArrayList++;
    }
    

    bool add(JObject@ anyType)
    {
        this.ensureCapacity(this.currentIndex_BasicArrayList + 1);
        @this.objectArray[this.currentIndex_BasicArrayList++] = anyType;
        return true;
    }
    

    JObject@ removeAt(int index)
    {
        if (index >= this.currentIndex_BasicArrayList) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex_BasicArrayList);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        JObject@ oldValue = this.objectArray[index];
        int numMoved = this.currentIndex_BasicArrayList - index - 1;
        if (numMoved > 0) {
            System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
        }
        @this.objectArray[--this.currentIndex_BasicArrayList] = null;
        return oldValue;
    }
    

    bool remove(JObject@ anyType)
    {
        if (anyType is null) {
            for (int index = 0; index < this.currentIndex_BasicArrayList; index++) {
                if (this.objectArray[index] is null) {
                    int numMoved = this.currentIndex_BasicArrayList - index - 1;
                    if (numMoved > 0) {
                        System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
                    }
                    @this.objectArray[--this.currentIndex_BasicArrayList] = null;
                    return true;
                }
            }
        } else {
            for (int index = 0; index < this.currentIndex_BasicArrayList; index++) {
                if (anyType is this.objectArray[index] || anyType.equals(this.objectArray[index])) {
                    int numMoved = this.currentIndex_BasicArrayList - index - 1;
                    if (numMoved > 0) {
                        System::arraycopy(@this.objectArray, index + 1, @this.objectArray, index, numMoved);
                    }
                    @this.objectArray[--this.currentIndex_BasicArrayList] = null;
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
        this.ensureCapacity(this.currentIndex_BasicArrayList + list.currentIndex_BasicArrayList);
        int listSize = list.currentIndex_BasicArrayList;
        for (int index = 0; index < listSize; index++) {
            @this.objectArray[this.currentIndex_BasicArrayList++] = list.objectArray[index];
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
        this.ensureCapacity(this.currentIndex_BasicArrayList + numSize);
        System::arraycopy(@newObjectArray, 0, @this.objectArray, this.currentIndex_BasicArrayList, numSize);
        this.currentIndex_BasicArrayList += numSize;
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
            @this.objectArray = this.arrayUtil_BasicArrayList.copyOf(this.objectArray, newCapacity);
        }
    }
    

    void trimToSize()
    {
        int oldCapacity = int(this.objectArray.length());
        if (this.currentIndex_BasicArrayList < oldCapacity) {
            @this.objectArray = this.arrayUtil_BasicArrayList.copyOf(this.objectArray, this.currentIndex_BasicArrayList);
        }
    }
    

    int indexOf(JObject@ anyType)
    {
        if (anyType is null) {
            for (int i = 0; i < this.currentIndex_BasicArrayList; i++) {
                if (this.objectArray[i] is null) {
                    return i;
                }
            }
        } else {
            for (int i = 0; i < this.currentIndex_BasicArrayList; i++) {
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
            for (int i = this.currentIndex_BasicArrayList - 1; i >= 0; i--) {
                if (this.objectArray[i] is null) {
                    return i;
                }
            }
        } else {
            for (int i = this.currentIndex_BasicArrayList - 1; i >= 0; i--) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    JObject@ get(int index)
    {
        if (index >= this.currentIndex_BasicArrayList) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex_BasicArrayList);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        return this.objectArray[index];
    }
    

    JObject@ set(int index, JObject@ element)
    {
        if (index >= this.currentIndex_BasicArrayList) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append(CommonLabels::getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList::SIZE);
            stringBuffer.appendint(this.currentIndex_BasicArrayList);
            jthrow(IndexOutOfBoundsException().jinit_IndexOutOfBoundsException(stringBuffer.toString()));
        }
        JObject@ oldValue = this.objectArray[index];
        @this.objectArray[index] = element;
        return oldValue;
    }
    

    void clear()
    {
        for (int i = 0; i < this.currentIndex_BasicArrayList; i++) {
            @this.objectArray[i] = null;
        }
        this.currentIndex_BasicArrayList = 0;
    }
    

    int size()
    {
        return this.currentIndex_BasicArrayList;
    }
    

    bool isEmpty()
    {
        return this.currentIndex_BasicArrayList == 0;
    }
    

    bool contains(JObject@ anyType)
    {
        return this.indexOf(anyType) >= 0;
    }
    

    JObject@[]@ toArray()
    {
        return this.arrayUtil_BasicArrayList.copyOf(this.objectArray, this.currentIndex_BasicArrayList);
    }
    

    JObject@[]@ toArrayType(JObject@[]@ objectArray)
    {
        if (int(objectArray.length()) < this.currentIndex_BasicArrayList) {
            return this.arrayUtil_BasicArrayList.copyOfType(this.objectArray, this.currentIndex_BasicArrayList, jClassName(objectArray));
        }
        System::arraycopy(@this.objectArray, 0, @objectArray, 0, this.currentIndex_BasicArrayList);
        if (int(objectArray.length()) > this.currentIndex_BasicArrayList) {
            @objectArray[this.currentIndex_BasicArrayList] = null;
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
        for (int index = 0; index < this.currentIndex_BasicArrayList; index++) {
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

