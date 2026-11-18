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
// package org.allbinary.game.ag.vector

class MineVectorData : JObjectBase
{
    

    MineVectorData@ jinit_MineVectorData()
    {
        return this;
    }
}

namespace MineVectorData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_points = array<int[]@[]@> = {array<int[]@> = {array<int> = {10, 5}, array<int> = {2, 6}, array<int> = {1000, 1000}, array<int> = {2, 2}, array<int> = {10, 9}, array<int> = {1000, 1000}, array<int> = {10, 2}, array<int> = {2, 9}, array<int> = {1000, 1000}, array<int> = {2, 5}, array<int> = {10, 6}, array<int> = {1000, 1000}, array<int> = {7, 9}, array<int> = {5, 2}, array<int> = {1000, 1000}, array<int> = {7, 2}, array<int> = {5, 9}, array<int> = {1000, 1000}}};
    }

    int[]@[]@[]@ jcell_points;
    int[]@[]@[]@ get_points() property { jclinit(); return jcell_points; }
    void set_points(int[]@[]@[]@ value) property { jclinit(); @jcell_points = value; }
}

