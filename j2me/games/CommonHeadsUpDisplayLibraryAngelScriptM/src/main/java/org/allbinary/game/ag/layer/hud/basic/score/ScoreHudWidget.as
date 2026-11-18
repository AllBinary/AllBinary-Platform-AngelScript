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
// package org.allbinary.game.ag.layer.hud.basic.score

class ScoreHudWidget : NumberStringHud
{
    

    ScoreHudWidget@ jinit_ScoreHudWidget(int maxscore, int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jinit_NumberStringHud("Pts ", maxscore, location, direction, bufferZone, basicColor);
        this.updateMaxHeight = 14;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        NumberStringHud::updateMeasurement(graphics);
    }
}

namespace ScoreHudWidget
{
    

    ScoreHudWidget@ getInstance(int maxscore, int location, int direction)
    {
        return ScoreHudWidget().jinit_ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory::getInstance().GREY);
    }
}

