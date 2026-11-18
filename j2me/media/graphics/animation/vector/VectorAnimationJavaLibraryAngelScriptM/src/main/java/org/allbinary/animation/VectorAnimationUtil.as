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
// package org.allbinary.animation

class VectorAnimationUtil : JObjectBase
{
    

    VectorAnimationUtil@ jinit_VectorAnimationUtil()
    {
        return this;
    }
    

    int[]@[]@[]@ toAnimationArrayFromListOfPointListWithPointsPerFrame(BasicArrayList@ vector, int pointsPerFrame)
    {
        int size = vector.size();
        int[]@[]@[]@ points = jnewArray3_Int(size, pointsPerFrame, 2);
        BasicArrayList@ nextBasicArrayList;
        int[]@[]@ framePoints;
        for (int index = 0; index < size; index++) {
            @nextBasicArrayList = cast<BasicArrayList>(vector.objectArray[index]);
            @framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            for (int pointIndex = 0; pointIndex < int(framePoints.length()); pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
    }
    

    int[]@[]@[]@ toAnimationArrayFromListOfPointList(BasicArrayList@ vector)
    {
        int size = vector.size();
        int[]@[]@[]@ points = jnewArray3_Int(size, 0, 0);
        BasicArrayList@ nextBasicArrayList;
        int[]@[]@ framePoints;
        for (int index = 0; index < size; index++) {
            @nextBasicArrayList = cast<BasicArrayList>(vector.objectArray[index]);
            @framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            @points[index] = jnewArray2_Int(int(framePoints.length()), 2);
            for (int pointIndex = 0; pointIndex < int(framePoints.length()); pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
    }
    

    int[]@[]@ toFrameArrayFromPointBasicArrayList(BasicArrayList@ list)
    {
        int[]@[]@ points = jnewArray2_Int(list.size(), 2);
        int size = list.size();
        for (int index = 0; index < size; index++) {
            GPoint@ nextPoint = cast<GPoint>(list.objectArray[index]);
            points[index][0] = nextPoint.getX();
            points[index][1] = nextPoint.getY();
        }
        return points;
    }
}

namespace VectorAnimationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = VectorAnimationUtil().jinit_VectorAnimationUtil();
    }

    VectorAnimationUtil@ jcell_instance;
    VectorAnimationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(VectorAnimationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    VectorAnimationUtil@ getInstance()
    {
        return VectorAnimationUtil::instance;
    }
}

