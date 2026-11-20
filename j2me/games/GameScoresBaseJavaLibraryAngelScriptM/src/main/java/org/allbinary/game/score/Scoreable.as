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
// package org.allbinary.game.score

class Scoreable : JObjectBase, ScoreableInterface
{
    int points_Scoreable;
    

    Scoreable@ jinit_Scoreable(int points)
    {
        this.points_Scoreable = points;
        return this;
    }
    

    void addPoints(int points)
    {
        this.points_Scoreable += points;
    }
    

    void removePoints(int points)
    {
        this.points_Scoreable -= points;
    }
    

    void setPoints(int points)
    {
        this.points_Scoreable = points;
    }
    

    int getPoints()
    {
        return this.points_Scoreable;
    }
}

namespace Scoreable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_ID = SmallIntegerSingletonFactory::getInstance().getAt(3);
    }

    JInteger@ jcell_ID;
    JInteger@ get_ID() property { jclinit(); return jcell_ID; }
    void set_ID(JInteger@ value) property { jclinit(); @jcell_ID = value; }
}

