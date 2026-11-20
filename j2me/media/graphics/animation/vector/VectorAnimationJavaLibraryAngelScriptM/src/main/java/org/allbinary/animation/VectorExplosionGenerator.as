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

class VectorExplosionGenerator : JObjectBase
{
    VectorExplosionType@ RANDOM;
    VectorExplosionType@ ROTATION;
    VectorAnimationUtil@ vectorAnimationUtil_VectorExplosionGenerator;
    RandomRotationFactory@ randomRotationFactory_VectorExplosionGenerator;

    // Java field initializers run after the super constructor
    void jfields_VectorExplosionGenerator()
    {
    @this.RANDOM = VectorExplosionType().jinit_VectorExplosionType();
    @this.ROTATION = VectorExplosionType().jinit_VectorExplosionType();
    @this.vectorAnimationUtil_VectorExplosionGenerator = VectorAnimationUtil::getInstance();
    @this.randomRotationFactory_VectorExplosionGenerator = RandomRotationFactory::getInstance();
    }
    

    VectorExplosionGenerator@ jinit_VectorExplosionGenerator()
    {
        this.jfields_VectorExplosionGenerator();
        return this;
    }
    

    BasicArrayList@ createList(BasicArrayList@ list, int howMuch, VectorExplosionType@ type)
    {
        GPoint@ point;
        int size = list.size();
        int[]@[]@ points = jnewArray2_Int(size, 2);
        for (int index = 0; index < size; index++) {
            @point = cast<GPoint>(list.objectArray[index]);
            points[index][0] = point.getX();
            points[index][1] = point.getY();
        }
        return this.createListFromPoints(list, points, howMuch, type);
    }
    

    int[]@[]@[]@ getInstance(int[]@[]@ points, int howMuch, VectorExplosionType@ type)
    {
        BasicArrayList@ pointsBasicArrayList = this.getInstanceStartFrame(points, howMuch, type, true);
        BasicArrayList@ tempBasicArrayList = cast<BasicArrayList>(pointsBasicArrayList.objectArray[0]);
        int[]@[]@[]@ newPoints = this.vectorAnimationUtil_VectorExplosionGenerator.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size());
        return newPoints;
    }
    

    BasicArrayList@ getInstanceStartFrame(int[]@[]@ points, int howMuch, VectorExplosionType@ type, bool startFrame)
    {
        try {
            BasicArrayList@ pointsBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(howMuch);
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points));
            int frameIndex = 0;
            BasicArrayList@ tempBasicArrayList;
            BasicArrayList@ pointBasicArrayList;
            while (frameIndex < howMuch) {
                @tempBasicArrayList = cast<BasicArrayList>(pointsBasicArrayList.objectArray[frameIndex]);
                @pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, type);
                pointsBasicArrayList.add(pointBasicArrayList);
                frameIndex++;
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0);
            }
            return pointsBasicArrayList;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            jthrow(e);
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    BasicArrayList@ createListFromPoints(BasicArrayList@ tempBasicArrayList, int[]@[]@ points, int howMuch, VectorExplosionType@ type)
    {
        int index = 0;
        BasicArrayList@ pointBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
        BasicArrayList@ sectionBasicArrayList;
        while (index < int(points.length())) {
            @sectionBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
            while (points[index][0] != 1000) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
                if (index >= int(points.length())) {
                    break;
                }
            }
            @sectionBasicArrayList = RandomTranslation::getInstance(sectionBasicArrayList, howMuch);
            if (type is this.ROTATION) {
                @sectionBasicArrayList = this.randomRotationFactory_VectorExplosionGenerator.getInstanceList(sectionBasicArrayList, howMuch);
            }
            int size = sectionBasicArrayList.size();
            for (int index2 = 0; index2 < size; index2++) {
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2]);
            }
            if (index >= int(points.length())) {
                break;
            } else if (points[index][0] == 1000) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
            }
        }
        return pointBasicArrayList;
    }
    

    BasicArrayList@ createPointsBasicArrayList(int[]@[]@ points)
    {
        if (int(points.length()) == 0) {
            jthrow(Exception().jinit_Exception("Not Points Provided"));
        }
        BasicArrayList@ firstPointBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(int(points.length()));
        PointFactory@ pointFactory = PointFactory::getInstance();
        for (int index = 0; index < int(points.length()); index++) {
            firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]));
        }
        return firstPointBasicArrayList;
    }
}

namespace VectorExplosionGenerator
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = VectorExplosionGenerator().jinit_VectorExplosionGenerator();
    }

    VectorExplosionGenerator@ jcell_instance;
    VectorExplosionGenerator@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(VectorExplosionGenerator@ value) property { jclinit(); @jcell_instance = value; }
    

    VectorExplosionGenerator@ getInstance_jstatic()
    {
        return VectorExplosionGenerator::instance;
    }
}

