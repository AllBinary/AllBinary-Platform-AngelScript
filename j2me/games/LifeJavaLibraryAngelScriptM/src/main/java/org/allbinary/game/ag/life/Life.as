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
    int16 lives;
    int16 startLives;
    int16 maxlives;
    

    Life@ jinit_Life(int16 lives, int16 maxlives)
    {
        this.maxlives = maxlives;
        if (lives > this.maxlives) {
            jthrow(Exception().jinit_Exception("To Many Lives"));
        }
        this.lives = lives;
        this.startLives = lives;
        return this;
    }
    

    int16 get()
    {
        return this.lives;
    }
    

    void set(int16 lives)
    {
        this.lives = lives;
    }
    

    void reset()
    {
        this.lives = this.startLives;
    }
    

    void add(int16 lives)
    {
        if (!this.reachedLimit()) {
            if (this.lives + lives <= int(this.getMaxlives())) {
                this.lives = int16((this.lives + lives));
            } else {
                this.lives = this.getMaxlives();
            }
        }
    }
    

    bool isAlive()
    {
        if (int(this.lives) <= 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    int16 getMaxlives()
    {
        return this.maxlives;
    }
    

    bool reachedLimit()
    {
        if (this.lives > this.maxlives || int(this.lives) < 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void deaths(int16 lives)
    {
        if (!this.reachedLimit()) {
            if (this.lives - lives >= 0) {
                this.lives = int16((this.lives - lives));
            } else {
                this.lives = 0;
            }
        }
    }
    

    int16 getStartLives()
    {
        return this.startLives;
    }
    

    void setStartLives(int16 startLives)
    {
        this.startLives = startLives;
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

