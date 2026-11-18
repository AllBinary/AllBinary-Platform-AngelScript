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

class CellPositionFactory : JObjectBase
{
    LogUtil@ logUtil;
    CellPosition@ NONE;
    CellPosition@[]@[]@ cellPositionArray;
    int columns;
    int rows;

    // Java field initializers run after the super constructor
    void jfields_CellPositionFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.NONE = CellPosition().jinit_CellPosition(-1, -1, -1, -1);
    @this.cellPositionArray = CellPositionFactory::jnewArray2_CellPosition(0, 0);
    
    
    }
    

    CellPositionFactory@ jinit_CellPositionFactory()
    {
        this.jfields_CellPositionFactory();
        return this;
    }
    

    void init(int columns, int rows)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Init: columns: ");
        stringBuffer.appendint(columns);
        stringBuffer.append(" rows: ");
        stringBuffer.appendint(rows);
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        @this.cellPositionArray = CellPositionFactory::jnewArray2_CellPosition(columns, rows);
        this.columns = columns;
        this.rows = rows;
        for (int column = 0; column < columns; column++) {
            for (int row = 0; row < rows; row++) {
                this.createInstance(column, row);
            }
        }
    }
    

    CellPosition@ getInstanceColRow(int i_column, int i_row)
    {
        try {
            return this.cellPositionArray[i_column][i_row];
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(StringMaker().jinit_StringMaker().append("columns: ").appendint(this.getColumns()).append(" rows: ").appendint(this.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).toString(), this, commonStrings.GET_INSTANCE, e);
            return this.NONE;
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    CellPosition@ createInstance(int i_column, int i_row)
    {
        CellPosition@ cellPositionCanBeNull = this.cellPositionArray[i_column][i_row];
        if (cellPositionCanBeNull is null) {
            @cellPositionCanBeNull = CellPosition().jinit_CellPosition(i_column, i_row, this.columns, this.rows);
            @this.cellPositionArray[i_column][i_row] = cellPositionCanBeNull;
        }
        return cellPositionCanBeNull;
    }
    

    int getColumns()
    {
        return this.columns;
    }
    

    int getRows()
    {
        return this.rows;
    }
}

namespace CellPositionFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = CellPositionFactory().jinit_CellPositionFactory();
    }

    CellPositionFactory@ jcell_SINGLETON;
    CellPositionFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(CellPositionFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }

    CellPosition@[]@[]@ jnewArray2_CellPosition(int a, int b)
    {
        CellPosition@[]@[]@ result = array<CellPosition@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<CellPosition@>(b); }
        return result;
    }
    

    CellPositionFactory@ getInstance()
    {
        return CellPositionFactory::SINGLETON;
    }
}

