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
// package org.allbinary.vector

class PointsUtil : JObjectBase
{

    PointsUtil@ jinit_PointsUtil()
    {
        return this;
    }
    

    int[]@[]@[]@ adjustXY(int[]@[]@[]@ points, int x, int y)
    {
        int size = int(points.length());
        int[]@[]@[]@ newPoints = jnewArray3_Int(size, 0, 0);
        for (int index = 0; index < size; index++) {
            int size2 = int(points[index].length());
            @newPoints[index] = jnewArray2_Int(size2, 2);
            for (int index2 = 0; index2 < size2; index2++) {
                if (points[index][index2][0] != 1000) {
                    newPoints[index][index2][0] = points[index][index2][0] + x;
                    newPoints[index][index2][1] = points[index][index2][1] + y;
                } else {
                    newPoints[index][index2][0] = 1000;
                    newPoints[index][index2][1] = 1000;
                }
            }
        }
        return newPoints;
    }
    

    int[]@[]@ adjust(int[]@[]@ points, int both)
    {
        return this.adjust(points, both, both);
    }
    

    int[]@[]@ adjust(int[]@[]@ points, int x, int y)
    {
        int[]@[]@ newPoints = jnewArray2_Int(int(points.length()), 2);
        for (int index2 = 0; index2 < int(points.length()); index2++) {
            if (points[index2][0] != 1000) {
                newPoints[index2][0] = points[index2][0] + x;
                newPoints[index2][1] = points[index2][1] + y;
            } else {
                newPoints[index2][0] = 1000;
                newPoints[index2][1] = 1000;
            }
        }
        return newPoints;
    }
}

namespace PointsUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PointsUtil().jinit_PointsUtil();
    }

    PointsUtil@ jcell_instance;
    PointsUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PointsUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PointsUtil@ getInstance()
    {
        return PointsUtil::instance;
    }
}

