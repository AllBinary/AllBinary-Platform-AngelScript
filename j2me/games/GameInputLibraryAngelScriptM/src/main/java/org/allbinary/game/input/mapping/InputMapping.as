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
// package org.allbinary.game.input.mapping

class InputMapping : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    ABHashtable@ hashtable_InputMapping;
    BasicArrayList@ mappedList_InputMapping;

    // Java field initializers run after the super constructor
    void jfields_InputMapping()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.hashtable_InputMapping = StdUtil::getInstance().createHashtable();
    @this.mappedList_InputMapping = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    InputMapping@ jinit_InputMapping()
    {
        this.jfields_InputMapping();
        return this;
    }
    

    int getTotalMapped()
    {
        return this.hashtable_InputMapping.size();
    }
    

    bool isDefaultNew()
    {
        return false;
    }
    

    InputToGameKeyMapping@ getDefault()
    {
        return InputToGameKeyMapping::getNullInstance();
    }
    

    void removeAll()
    {
        this.hashtable_InputMapping.clear();
        this.mappedList_InputMapping.clear();
    }
    

    void remove(Input@ input, Input@ mappedToInput)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        StringUtil@ stringUtil = StringUtil::getInstance();
        stringBuffer.append(CommonLabels::getInstance().START_LABEL);
        stringBuffer.append(stringUtil.toString(input));
        stringBuffer.append(" == ");
        stringBuffer.append(stringUtil.toString(mappedToInput));
        this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        BasicArrayList@ list = this.getMappedInput(input);
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput);
            this.mappedList_InputMapping.remove(mappedToInput);
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("Removed: ");
            stringBuffer.append(stringUtil.toString(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        } else {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("Not Deleted: ");
            stringBuffer.append(stringUtil.toString(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        }
    }
    

    void addMapping(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    void add(Input@ input, Input@ mappedToInput)
    {
        BasicArrayList@ list = this.getMappedInput(input);
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput);
            this.mappedList_InputMapping.add(mappedToInput);
        }
    }
    

    bool isMapped(Input@ input)
    {
        return this.mappedList_InputMapping.contains(input);
    }
    

    BasicArrayList@ getMappedInput(Input@ id)
    {
        JObject@ mappingInputCanBeNullList = this.hashtable_InputMapping.get(id);
        if (mappingInputCanBeNullList is null) {
            BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
            this.hashtable_InputMapping.put(id, list);
            return list;
        }
        return cast<BasicArrayList>(mappingInputCanBeNullList);
    }
    

    ABHashtable@ getHashtable()
    {
        return this.hashtable_InputMapping;
    }
}

