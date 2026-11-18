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
// package org.allbinary.graphics

class CellPosition : V
{
    int id_CellPosition;
    int column_CellPosition;
    int row_CellPosition;
    

    CellPosition@ jinit_CellPosition(int column, int row, int columns, int rows)
    {
        this.jinit_V();
        this.column_CellPosition = column;
        this.row_CellPosition = row;
        this.id_CellPosition = (row * columns) + column;
        return this;
    }
    

    int getColumn()
    {
        return this.column_CellPosition;
    }
    

    int getRow()
    {
        return this.row_CellPosition;
    }
    

    string toString()
    {
        return CellPosition::toStringColRow(this.getColumn(), this.getRow());
    }
    

    int getId()
    {
        return this.id_CellPosition;
    }
}

namespace CellPosition
{
    

    string toStringCellPosition(CellPosition@ basicGeographicMapCellPosition)
    {
        return CellPosition::toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow());
    }
    

    string toStringColRow(int i_column, int i_row)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN);
        stringBuffer.appendint(i_column);
        stringBuffer.append(commonSeps.COMMA);
        stringBuffer.appendint(i_row);
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE);
        return stringBuffer.toString();
    }
}

