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
    int totalColumns_TouchButtonLocationHelper;
    int totalRows_TouchButtonLocationHelper;
    int columnsRemainder_TouchButtonLocationHelper;
    int rowsRemainder_TouchButtonLocationHelper;
    int columnsRemainderHalf_TouchButtonLocationHelper;
    int rowsRemainderHalf_TouchButtonLocationHelper;
    

    TouchButtonLocationHelper@ jinit_TouchButtonLocationHelper()
    {
        int buttonSize = CommonButtons::getInstance().STANDARD_BUTTON_SIZE;
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        this.totalColumns_TouchButtonLocationHelper = Math::round(float(displayInfo.getLastWidth()) / float(buttonSize));
        this.totalRows_TouchButtonLocationHelper = Math::round(float(displayInfo.getLastHeight()) / float(buttonSize));
        this.columnsRemainder_TouchButtonLocationHelper = displayInfo.getLastWidth() % buttonSize;
        this.columnsRemainderHalf_TouchButtonLocationHelper = (this.columnsRemainder_TouchButtonLocationHelper >>> 1);
        this.rowsRemainder_TouchButtonLocationHelper = displayInfo.getLastHeight() % buttonSize;
        this.rowsRemainderHalf_TouchButtonLocationHelper = (this.rowsRemainder_TouchButtonLocationHelper >>> 1);
        return this;
    }
    

    int getTotalColumns()
    {
        return this.totalColumns_TouchButtonLocationHelper;
    }
    

    int getTotalRows()
    {
        return this.totalRows_TouchButtonLocationHelper;
    }
    

    int getColumnsRemainder()
    {
        return this.columnsRemainder_TouchButtonLocationHelper;
    }
    

    int getRowsRemainder()
    {
        return this.rowsRemainder_TouchButtonLocationHelper;
    }
    

    int getColumnsRemainderHalf()
    {
        return this.columnsRemainderHalf_TouchButtonLocationHelper;
    }
    

    int getRowsRemainderHalf()
    {
        return this.rowsRemainderHalf_TouchButtonLocationHelper;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("totalColumns: ");
        stringBuffer.appendint(this.totalColumns_TouchButtonLocationHelper);
        stringBuffer.append(" totalRows: ");
        stringBuffer.appendint(this.totalRows_TouchButtonLocationHelper);
        stringBuffer.append(" columnsRemainder: ");
        stringBuffer.appendint(this.columnsRemainder_TouchButtonLocationHelper);
        stringBuffer.append(" rowsRemainder: ");
        stringBuffer.appendint(this.rowsRemainder_TouchButtonLocationHelper);
        stringBuffer.append(" columnsRemainderHalf: ");
        stringBuffer.appendint(this.columnsRemainderHalf_TouchButtonLocationHelper);
        stringBuffer.append(" rowsRemainderHalf: ");
        stringBuffer.appendint(this.rowsRemainderHalf_TouchButtonLocationHelper);
        return stringBuffer.toString();
    }
}

