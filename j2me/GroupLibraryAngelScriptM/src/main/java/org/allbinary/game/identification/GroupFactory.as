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

class GroupFactory : JObjectBase
{
    LogUtil@ logUtil;
    Group@[]@ NULL_GROUP_ARRAY;
    BasicArrayList@ list;
    int index;

    // Java field initializers run after the super constructor
    void jfields_GroupFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.NULL_GROUP_ARRAY = array<Group@>(0);
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    this.index = 0;
    }

    GroupFactory@ jinit_GroupFactory()
    {
        this.jfields_GroupFactory();
        return this;
    }
    

    Group@ getNextGroup()
    {
        Group@ group = cast<Group>(this.list.objectArray[this.index]);
        this.index++;
        return group;
    }
    

    Group@ getNextGroupByName(string name)
    {
        Group@ group = this.getNextGroup();
        group.setName(name);
        return group;
    }
    

    void init(int16 groups, string[]@ nameArray)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        StringUtil@ stringUtil = StringUtil::getInstance();
        string TEAM = "Team ";
        this.list.clear();
        this.index = 0;
        int size = this.list.size();
        string name = "";
        while (size < int(groups)) {
            name = stringUtil.EMPTY_STRING;
            if (size < int(nameArray.length())) {
                name = nameArray[size];
            } else {
                stringMaker.delete(0, stringMaker.length());
                name = stringMaker.append(TEAM).appendint(size).toString();
            }
            this.list.add(Group().jinit_Group(name, int16((size + 3))));
            size++;
        }
    }
}

namespace GroupFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GroupFactory().jinit_GroupFactory();
    }

    GroupFactory@ jcell_instance;
    GroupFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GroupFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GroupFactory@ getInstance()
    {
        return GroupFactory::instance;
    }
}

