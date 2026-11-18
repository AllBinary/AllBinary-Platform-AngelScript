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
    BasicArrayList@ orderedHighScoresList;
    string name;
    string heading;
    string columnOneHeading;
    string columnTwoHeading;

    // Java field initializers run after the super constructor
    void jfields_HighScores()
    {
    @this.orderedHighScoresList = BasicArrayListD().jinit_BasicArrayListD();
    
    
    this.columnOneHeading = "Name";
    
    }
    

    HighScores@ jinit_HighScores(string name, string heading, string columnTwoHeading)
    {
        this.jfields_HighScores();
        this.name = name;
        this.heading = heading;
        this.columnTwoHeading = columnTwoHeading;
        return this;
    }
    

    void setList(BasicArrayList@ orderedHighScoresList)
    {
        @this.orderedHighScoresList = orderedHighScoresList;
    }
    

    BasicArrayList@ getList()
    {
        return this.orderedHighScoresList;
    }
    

    string getName()
    {
        return this.name;
    }
    

    int getTotal()
    {
        return this.getList().size();
    }
    

    void addHighScore(HighScore@ newHighScore)
    {
        this.orderedHighScoresList.add(newHighScore);
    }
    

    string getHeading()
    {
        return this.heading;
    }
    

    string getColumnOneHeading()
    {
        return this.columnOneHeading;
    }
    

    string getColumnTwoHeading()
    {
        return this.columnTwoHeading;
    }
    

    bool isBestScore(HighScore@ newHighScore)
    {
        return false;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("HighScores: ");
        stringBuffer.append(this.heading);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(CommonLabels::getInstance().TOTAL_LABEL);
        stringBuffer.appendint(this.orderedHighScoresList.size());
        return stringBuffer.toString();
    }
}

