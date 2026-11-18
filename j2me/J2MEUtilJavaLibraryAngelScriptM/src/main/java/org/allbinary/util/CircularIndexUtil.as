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
// package org.allbinary.util

class CircularIndexUtil : JObjectBase
{
    int index;
    int lastIndex;
    int size;

    // Java field initializers run after the super constructor
    void jfields_CircularIndexUtil()
    {
    this.index = 0;
    this.lastIndex = 0;
    this.size = 0;
    }
    

    CircularIndexUtil@ jinit_CircularIndexUtil(int index, int size)
    {
        this.jfields_CircularIndexUtil();
        this.setSize(size);
        this.setIndex(index);
        return this;
    }
    

    int next()
    {
        if (this.index >= this.lastIndex) {
            this.index = 0;
        } else {
            this.index++;
        }
        return this.index;
    }
    

    int previous()
    {
        if (this.index < 1) {
            this.index = this.lastIndex;
        } else {
            this.index--;
        }
        return this.index;
    }
    

    void setIndex(int index)
    {
        if (index > this.lastIndex) {
            return;
        }
        this.index = index;
    }
    

    int getIndex()
    {
        return this.index;
    }
    

    void setSize(int size)
    {
        this.size = size;
        this.lastIndex = size - 1;
        this.index = 0;
    }
    

    int getSize()
    {
        return this.size;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().INDEX_LABEL).appendint(this.index).append("lastIndex: ").appendint(this.lastIndex).append("size: ").appendint(this.size).toString();
    }
}

namespace CircularIndexUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CIRCULAR_INDEX_UTIL = CircularIndexUtil().jinit_CircularIndexUtil(0, 0);
    }

    CircularIndexUtil@ jcell_NULL_CIRCULAR_INDEX_UTIL;
    CircularIndexUtil@ get_NULL_CIRCULAR_INDEX_UTIL() property { jclinit(); return jcell_NULL_CIRCULAR_INDEX_UTIL; }
    void set_NULL_CIRCULAR_INDEX_UTIL(CircularIndexUtil@ value) property { jclinit(); @jcell_NULL_CIRCULAR_INDEX_UTIL = value; }
    

    CircularIndexUtil@ createInstance(int max)
    {
        return CircularIndexUtil().jinit_CircularIndexUtil(0, max);
    }
    

    CircularIndexUtil@ createInstanceAt(int index, int max)
    {
        return CircularIndexUtil().jinit_CircularIndexUtil(index, max);
    }
}

