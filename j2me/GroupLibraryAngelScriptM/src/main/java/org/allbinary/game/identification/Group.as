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

class Group : JObjectBase, GroupInterface
{
    string name;
    int16 teamId;
    string string_;

    // Java field initializers run after the super constructor
    void jfields_Group()
    {
    this.name = StringUtil::getInstance().EMPTY_STRING;
    
    this.string_ = StringUtil::getInstance().EMPTY_STRING;
    }
    

    Group@ jinit_Group(string teamName, int16 teamId)
    {
        this.jfields_Group();
        this.teamId = teamId;
        this.setName(teamName);
        return this;
    }
    

    string getGroupName()
    {
        return this.name;
    }
    

    void setName(string name)
    {
        this.name = name;
        GroupCommonFactory@ groupCommonFactory = GroupCommonFactory::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL);
        stringBuffer.append(this.name);
        stringBuffer.append(groupCommonFactory.ID_LABEL);
        stringBuffer.appendshort(this.teamId);
        this.string_ = stringBuffer.toString();
    }
    

    int16 getGroupId()
    {
        return this.teamId;
    }
    

    string toString()
    {
        return this.string_;
    }
}

