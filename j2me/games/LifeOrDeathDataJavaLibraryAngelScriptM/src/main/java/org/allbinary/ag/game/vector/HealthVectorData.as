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
// package org.allbinary.ag.game.vector

class HealthVectorData : JObjectBase
{

    HealthVectorData@ jinit_HealthVectorData()
    {
        return this;
    }
}

namespace HealthVectorData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_points = array<int[]@[]@> = {array<int[]@> = {array<int> = {2, 1}, array<int> = {3, 2}, array<int> = {3, 2}, array<int> = {4, 1}, array<int> = {4, 1}, array<int> = {5, 1}, array<int> = {5, 1}, array<int> = {6, 2}, array<int> = {6, 2}, array<int> = {6, 3}, array<int> = {6, 3}, array<int> = {3, 6}, array<int> = {3, 6}, array<int> = {0, 3}, array<int> = {0, 3}, array<int> = {0, 2}, array<int> = {0, 2}, array<int> = {1, 1}, array<int> = {1, 1}, array<int> = {2, 1}, array<int> = {1000, 1000}}};
    }

    int[]@[]@[]@ jcell_points;
    int[]@[]@[]@ get_points() property { jclinit(); return jcell_points; }
    void set_points(int[]@[]@[]@ value) property { jclinit(); @jcell_points = value; }
}

