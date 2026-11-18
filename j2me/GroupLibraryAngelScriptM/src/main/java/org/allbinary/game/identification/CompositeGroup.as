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
// package org.allbinary.game.identification

class CompositeGroup : JObjectBase
{
    LogUtil@ logUtil;
    Group@ groupInterface;
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_CompositeGroup()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    CompositeGroup@ jinit_CompositeGroup(Group@ groupInterface)
    {
        this.jfields_CompositeGroup();
        @this.groupInterface = groupInterface;
        return this;
    }
    

    void clear()
    {
        this.list.clear();
    }
    

    void add(Group@ groupInterface)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        GroupCommonFactory@ groupCommonFactory = GroupCommonFactory::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(groupCommonFactory.ADDING_LABEL);
        stringBuffer.append(groupInterface.toString());
        stringBuffer.append(groupCommonFactory.TO_LABEL);
        stringBuffer.append(StringUtil::getInstance().toString(this.groupInterface));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD);
        this.list.add(groupInterface);
    }
    

    bool isInGroup(Group@ groupInterface)
    {
        if (this.list.contains(groupInterface)) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    Group@ getGroup()
    {
        return this.groupInterface;
    }
}

