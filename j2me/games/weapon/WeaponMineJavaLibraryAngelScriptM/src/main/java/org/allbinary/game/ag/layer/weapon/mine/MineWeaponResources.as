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
// package org.allbinary.game.ag.layer.weapon.mine

class MineWeaponResources : BasicGameResources
{
    string DROP_TEXT_RESOURCE;
    string DROP_RESOURCE;
    string DROP_ICON_RESOURCE;

    // Java field initializers run after the super constructor
    void jfields_MineWeaponResources()
    {
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png";
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png";
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png";
    }
    

    MineWeaponResources@ jinit_MineWeaponResources()
    {
        this.jinit_BasicGameResources();
        this.jfields_MineWeaponResources();
        string ROOT = "/mine";
        string SMALL = "_20_by_20.png";
        string MEDIUM = SMALL;
        string SIZE_FOUR = SMALL;
        string SIZE_FIVE = SMALL;
        string SIZE_SIX = SMALL;
        string[]@ SIZE = array<string> = {SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX};
        BasicGameResources::init(ROOT, SIZE);
        return this;
    }
}

namespace MineWeaponResources
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
    

    MineWeaponResources@ getInstance()
    {
        if (MineWeaponResources::instance is NullUtil::getInstance().NULL_OBJECT) {
            @MineWeaponResources::instance = MineWeaponResources().jinit_MineWeaponResources();
        }
        return cast<MineWeaponResources>(MineWeaponResources::instance);
    }
}

