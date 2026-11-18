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

class VectorMirrorGenerator : JObjectBase
{
    LogUtil@ logUtil;
    VectorAnimationUtil@ vectorAnimationUtil;

    // Java field initializers run after the super constructor
    void jfields_VectorMirrorGenerator()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.vectorAnimationUtil = VectorAnimationUtil::getInstance();
    }
    

    VectorMirrorGenerator@ jinit_VectorMirrorGenerator()
    {
        this.jfields_VectorMirrorGenerator();
        return this;
    }
    

    int[]@[]@[]@ getInstance(int[]@[]@[]@ points, int width)
    {
        try {
            PointFactory@ pointFactory = PointFactory::getInstance();
            BasicArrayList@ pointBasicArrayList;
            int[]@[]@ nextPoints;
            int size2 = 0;
            int size = int(points.length());
            BasicArrayList@ pointsBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(size);
            for (int frame = 0; frame < size; frame++) {
                @nextPoints = points[frame];
                size2 = int(nextPoints.length());
                @pointBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(size2);
                for (int index = 0; index < size2; index++) {
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index][0], nextPoints[index][1]));
                }
                pointsBasicArrayList.add(pointBasicArrayList);
            }
            for (int index = 0; index < int(points.length()); index++) {
                pointsBasicArrayList.add(this.getInstance(cast<BasicArrayList>(pointsBasicArrayList.objectArray[index]), width));
            }
            int[]@[]@[]@ newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList);
            return newPoints;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            return NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    BasicArrayList@ getInstance(BasicArrayList@ pointBasicArrayList, int width)
    {
        BasicGraphicsPipeline@ graphicsPipe = BasicGraphicsPipeline().jinit_BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.mirror(width);
        return graphicsPipe.getMatrix();
    }
}

namespace VectorMirrorGenerator
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = VectorMirrorGenerator().jinit_VectorMirrorGenerator();
    }

    VectorMirrorGenerator@ jcell_instance;
    VectorMirrorGenerator@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(VectorMirrorGenerator@ value) property { jclinit(); @jcell_instance = value; }
    

    VectorMirrorGenerator@ getInstance_jstatic()
    {
        return VectorMirrorGenerator::instance;
    }
}

