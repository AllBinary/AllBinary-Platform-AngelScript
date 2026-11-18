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
// package org.allbinary.game.ag.layer.pickup.points

class PointsLayer : AllBinaryLayer
{
    int points_PointsLayer;
    

    PointsLayer@ jinit_PointsLayer(int points)
    {
        this.jinit_AllBinaryLayer(StringUtil::getInstance().EMPTY_STRING, Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, 0, 0), ViewPosition::getInstanceD());
        this.points_PointsLayer = points;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void visit(ScoreableInterface@ scoreableInterface)
    {
        scoreableInterface.addPoints(this.points_PointsLayer);
    }
}

