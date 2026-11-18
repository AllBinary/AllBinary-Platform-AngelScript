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

class BasicGroupFactory : JObjectBase
{
    string NAME;
    string NO_SUCH_GROUP;
    Group@ GOOD;
    Group@ ENEMY;
    Group@ ENEMY_ON_LEVEL;
    Group@ NONE;
    Group@[]@ GOOD_ARRAY;
    Group@[]@ ENEMY_ARRAY;
    Group@[]@ ENEMY_ON_LEVEL_ARRAY;
    Group@[]@ NONE_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_BasicGroupFactory()
    {
    this.NAME = "GROUP_NAME";
    this.NO_SUCH_GROUP = "No Such Group: ";
    @this.GOOD = Group().jinit_Group("Good Guys", int16(0));
    @this.ENEMY = Group().jinit_Group("Bad Guys", int16(1));
    @this.ENEMY_ON_LEVEL = Group().jinit_Group("Bad Guys on Level", int16(2));
    @this.NONE = Group().jinit_Group("Not On A Team", int16(3));
    @this.GOOD_ARRAY = array<Group@> = {this.GOOD};
    @this.ENEMY_ARRAY = array<Group@> = {this.ENEMY};
    @this.ENEMY_ON_LEVEL_ARRAY = array<Group@> = {this.ENEMY, this.ENEMY_ON_LEVEL};
    @this.NONE_ARRAY = array<Group@> = {this.NONE};
    }

    BasicGroupFactory@ jinit_BasicGroupFactory()
    {
        this.jfields_BasicGroupFactory();
        return this;
    }
}

namespace BasicGroupFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicGroupFactory@ getInstance()
    {
        if (BasicGroupFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @BasicGroupFactory::instance = BasicGroupFactory().jinit_BasicGroupFactory();
        }
        return cast<BasicGroupFactory>(BasicGroupFactory::instance);
    }
}

