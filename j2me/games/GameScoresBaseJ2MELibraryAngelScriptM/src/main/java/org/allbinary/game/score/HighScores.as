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
// package org.allbinary.game.score

class HighScores : JObjectBase, HighScoresInterface
{
    BasicArrayList@ orderedHighScoresList_HighScores;
    string name_HighScores;
    string heading_HighScores;
    string columnOneHeading_HighScores;
    string columnTwoHeading_HighScores;

    // Java field initializers run after the super constructor
    void jfields_HighScores()
    {
    @this.orderedHighScoresList_HighScores = BasicArrayListD().jinit_BasicArrayListD();
    
    
    this.columnOneHeading_HighScores = "Name";
    
    }
    

    HighScores@ jinit_HighScores(string name, string heading, string columnTwoHeading)
    {
        this.jfields_HighScores();
        this.name_HighScores = name;
        this.heading_HighScores = heading;
        this.columnTwoHeading_HighScores = columnTwoHeading;
        return this;
    }
    

    void setList(BasicArrayList@ orderedHighScoresList)
    {
        @this.orderedHighScoresList_HighScores = orderedHighScoresList;
    }
    

    BasicArrayList@ getList()
    {
        return this.orderedHighScoresList_HighScores;
    }
    

    string getName()
    {
        return this.name_HighScores;
    }
    

    int getTotal()
    {
        return this.getList().size();
    }
    

    void addHighScore(HighScore@ newHighScore)
    {
        this.orderedHighScoresList_HighScores.add(newHighScore);
    }
    

    string getHeading()
    {
        return this.heading_HighScores;
    }
    

    string getColumnOneHeading()
    {
        return this.columnOneHeading_HighScores;
    }
    

    string getColumnTwoHeading()
    {
        return this.columnTwoHeading_HighScores;
    }
    

    bool isBestScore(HighScore@ newHighScore)
    {
        return false;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("HighScores: ");
        stringBuffer.append(this.heading_HighScores);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(CommonLabels::getInstance().TOTAL_LABEL);
        stringBuffer.appendint(this.orderedHighScoresList_HighScores.size());
        return stringBuffer.toString();
    }
}

