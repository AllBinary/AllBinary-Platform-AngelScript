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
// package org.allbinary.input.motion.button

class TouchButtonLocationHelper : JObjectBase
{
    int totalColumns;
    int totalRows;
    int columnsRemainder;
    int rowsRemainder;
    int columnsRemainderHalf;
    int rowsRemainderHalf;
    

    TouchButtonLocationHelper@ jinit_TouchButtonLocationHelper()
    {
        int buttonSize = CommonButtons::getInstance().STANDARD_BUTTON_SIZE;
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        this.totalColumns = Math::round(float(displayInfo.getLastWidth()) / float(buttonSize));
        this.totalRows = Math::round(float(displayInfo.getLastHeight()) / float(buttonSize));
        this.columnsRemainder = displayInfo.getLastWidth() % buttonSize;
        this.columnsRemainderHalf = (this.columnsRemainder >>> 1);
        this.rowsRemainder = displayInfo.getLastHeight() % buttonSize;
        this.rowsRemainderHalf = (this.rowsRemainder >>> 1);
        return this;
    }
    

    int getTotalColumns()
    {
        return this.totalColumns;
    }
    

    int getTotalRows()
    {
        return this.totalRows;
    }
    

    int getColumnsRemainder()
    {
        return this.columnsRemainder;
    }
    

    int getRowsRemainder()
    {
        return this.rowsRemainder;
    }
    

    int getColumnsRemainderHalf()
    {
        return this.columnsRemainderHalf;
    }
    

    int getRowsRemainderHalf()
    {
        return this.rowsRemainderHalf;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("totalColumns: ");
        stringBuffer.appendint(this.totalColumns);
        stringBuffer.append(" totalRows: ");
        stringBuffer.appendint(this.totalRows);
        stringBuffer.append(" columnsRemainder: ");
        stringBuffer.appendint(this.columnsRemainder);
        stringBuffer.append(" rowsRemainder: ");
        stringBuffer.appendint(this.rowsRemainder);
        stringBuffer.append(" columnsRemainderHalf: ");
        stringBuffer.appendint(this.columnsRemainderHalf);
        stringBuffer.append(" rowsRemainderHalf: ");
        stringBuffer.appendint(this.rowsRemainderHalf);
        return stringBuffer.toString();
    }
}

