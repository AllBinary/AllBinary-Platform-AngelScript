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
// package org.allbinary.logic.util.cache

class KeylessBasicArrayListCache : IndexedBasicArrayListCache
{
    LogUtil@ logUtil;
    BasicArrayListUtil@ basicArrayListUtil;

    // Java field initializers run after the super constructor
    void jfields_KeylessBasicArrayListCache()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.basicArrayListUtil = BasicArrayListUtil::getInstance();
    }
    

    KeylessBasicArrayListCache@ jinit_KeylessBasicArrayListCache()
    {
        this.jinit_IndexedBasicArrayListCache();
        this.jfields_KeylessBasicArrayListCache();
        return this;
    }
    

    BasicArrayList@ get()
    {
        try {
            if (this.index >= this.list.size()) {
                this.addDefault();
            }
            BasicArrayList@ list = cast<BasicArrayList>(this.getAt(this.index++));
            return list;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e);
            return this.basicArrayListUtil.getImmutableInstance();
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    void clear()
    {
        IndexedBasicArrayListCache::clear();
        BasicArrayList@ basicArrayList;
        for (int index = this.list.size() - 1; index >= 0; index--) {
            @basicArrayList = (cast<BasicArrayList>(this.list.objectArray[index]));
            basicArrayList.clear();
        }
    }
    

    string log()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("S: ");
        stringBuffer.appendint(this.list.size());
        string S_LABEL = " s: ";
        BasicArrayList@ basicArrayList;
        for (int index = this.list.size() - 1; index >= 0; index--) {
            stringBuffer.append(S_LABEL);
            @basicArrayList = (cast<BasicArrayList>(this.list.objectArray[index]));
            stringBuffer.appendint(basicArrayList.size());
        }
        return stringBuffer.toString();
    }
}

