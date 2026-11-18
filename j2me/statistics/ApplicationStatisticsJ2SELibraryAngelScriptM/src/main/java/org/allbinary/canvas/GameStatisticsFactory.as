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
// package org.allbinary.canvas

//ActualPlatform
class GameStatisticsFactory : BaseGameStatistics
{
    StringMaker@ stringBuffer_GameStatisticsFactory;

    // Java field initializers run after the super constructor
    void jfields_GameStatisticsFactory()
    {
    @this.stringBuffer_GameStatisticsFactory = StringMaker().jinit_StringMaker();
    }

    GameStatisticsFactory@ jinit_GameStatisticsFactory()
    {
        this.jinit_BaseGameStatistics();
        this.jfields_GameStatisticsFactory();
        return this;
    }
    

    void add(string string_)
    {
        if (this.stringBuffer_GameStatisticsFactory.length() > 12000) {
            this.stringBuffer_GameStatisticsFactory.delete(0, this.stringBuffer_GameStatisticsFactory.length());
            this.stringBuffer_GameStatisticsFactory.append("Old Stats Cleared");
        }
        this.stringBuffer_GameStatisticsFactory.append(string_);
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(BaseGameStatistics::toString()).append(this.stringBuffer_GameStatisticsFactory.toString()).toString();
    }
}

namespace GameStatisticsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameStatisticsFactory().jinit_GameStatisticsFactory();
    }

    GameStatisticsFactory@ jcell_instance;
    GameStatisticsFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameStatisticsFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameStatisticsFactory@ getInstance()
    {
        return GameStatisticsFactory::instance;
    }
}

