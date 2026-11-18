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

class VectorRotationGenerator : JObjectBase
{
    LogUtil@ logUtil;
    VectorAnimationUtil@ vectorAnimationUtil;
    AngleFactory@ angleFactory;

    // Java field initializers run after the super constructor
    void jfields_VectorRotationGenerator()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.vectorAnimationUtil = VectorAnimationUtil::getInstance();
    @this.angleFactory = AngleFactory::getInstance();
    }
    

    VectorRotationGenerator@ jinit_VectorRotationGenerator()
    {
        this.jfields_VectorRotationGenerator();
        return this;
    }
    

    int[]@[]@[]@ getInstance(VectorInfo@ vectorRotationInfo)
    {
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames());
    }
    

    int[]@[]@[]@ getInstanceFrames(int width, int height, int[]@[]@ points, int frames)
    {
        try {
            int16 totalAngle = this.angleFactory.TOTAL_ANGLE;
            int angleIncrement = int(totalAngle) / frames;
            BasicArrayList@ pointsBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(int(totalAngle) / angleIncrement);
            BasicArrayList@ pointBasicArrayList = BasicArrayListS().jinit_BasicArrayListS(int(points.length()));
            PointFactory@ pointFactory = PointFactory::getInstance();
            int size = int(points.length());
            for (int index = 0; index < size; index++) {
                pointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]));
            }
            int index = 0;
            while (index < int(totalAngle)) {
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, this.angleFactory.getAt(index)));
                index += angleIncrement;
            }
            int[]@[]@[]@ newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size());
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
    

    BasicArrayList@ getListAtAngle(int width, int height, BasicArrayList@ pointBasicArrayList, Angle@ angle)
    {
        BasicGraphicsPipeline@ graphicsPipe = BasicGraphicsPipeline().jinit_BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(-(width >>> 1), -(height >>> 1));
        graphicsPipe.rotateToAngle(angle);
        graphicsPipe.translate((width >>> 1), (height >>> 1));
        return graphicsPipe.getMatrix();
    }
}

namespace VectorRotationGenerator
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = VectorRotationGenerator().jinit_VectorRotationGenerator();
    }

    VectorRotationGenerator@ jcell_instance;
    VectorRotationGenerator@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(VectorRotationGenerator@ value) property { jclinit(); @jcell_instance = value; }
    

    VectorRotationGenerator@ getInstance_jstatic()
    {
        return VectorRotationGenerator::instance;
    }
}

