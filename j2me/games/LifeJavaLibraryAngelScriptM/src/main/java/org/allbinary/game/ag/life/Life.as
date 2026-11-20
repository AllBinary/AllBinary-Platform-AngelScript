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
// package org.allbinary.game.ag.life

class Life : JObjectBase, LifeInterface
{
    int16 lives_Life;
    int16 startLives_Life;
    int16 maxlives_Life;
    

    Life@ jinit_Life(int16 lives, int16 maxlives)
    {
        this.maxlives_Life = maxlives;
        if (lives > this.maxlives_Life) {
            jthrow(Exception().jinit_Exception("To Many Lives"));
        }
        this.lives_Life = lives;
        this.startLives_Life = lives;
        return this;
    }
    

    int16 get()
    {
        return this.lives_Life;
    }
    

    void set(int16 lives)
    {
        this.lives_Life = lives;
    }
    

    void reset()
    {
        this.lives_Life = this.startLives_Life;
    }
    

    void add(int16 lives)
    {
        if (!this.reachedLimit()) {
            if (this.lives_Life + lives <= int(this.getMaxlives())) {
                this.lives_Life = int16((this.lives_Life + lives));
            } else {
                this.lives_Life = this.getMaxlives();
            }
        }
    }
    

    bool isAlive()
    {
        if (int(this.lives_Life) <= 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    int16 getMaxlives()
    {
        return this.maxlives_Life;
    }
    

    bool reachedLimit()
    {
        if (this.lives_Life > this.maxlives_Life || int(this.lives_Life) < 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void deaths(int16 lives)
    {
        if (!this.reachedLimit()) {
            if (this.lives_Life - lives >= 0) {
                this.lives_Life = int16((this.lives_Life - lives));
            } else {
                this.lives_Life = 0;
            }
        }
    }
    

    int16 getStartLives()
    {
        return this.startLives_Life;
    }
    

    void setStartLives(int16 startLives)
    {
        this.startLives_Life = startLives;
    }
}

namespace Life
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_LIFE = Life::createLife();
    }

    Life@ jcell_NO_LIFE;
    Life@ get_NO_LIFE() property { jclinit(); return jcell_NO_LIFE; }
    void set_NO_LIFE(Life@ value) property { jclinit(); @jcell_NO_LIFE = value; }
    

    Life@ createLife()
    {
        try {
            return Life().jinit_Life(int16(0), int16(0));
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            jthrow(RuntimeException().jinit_RuntimeException());
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

