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

class TouchButtonsMappingPaintable : Paintable
{
    LogUtil@ logUtil;
    int foregroundColor;
    Paintable@[]@[]@ paintableTable_TouchButtonsMappingPaintable;
    TouchButtonLocationHelper@ touchButtonLocationHelper_TouchButtonsMappingPaintable;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonsMappingPaintable()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.paintableTable_TouchButtonsMappingPaintable = TouchButtonsMappingPaintable::jnewArray2_Paintable(0, 0);
    @this.touchButtonLocationHelper_TouchButtonsMappingPaintable = TouchButtonLocationHelper().jinit_TouchButtonLocationHelper();
    }
    

    TouchButtonsMappingPaintable@ jinit_TouchButtonsMappingPaintable(BasicColor@ basicColor)
    {
        this.jinit_Paintable();
        this.jfields_TouchButtonsMappingPaintable();
        this.foregroundColor = basicColor.intValue();
        this.init();
        return this;
    }
    

    void init()
    {
        try {
            @this.paintableTable_TouchButtonsMappingPaintable = this.createPaintableTable();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    Paintable@[]@[]@ createPaintableTable()
    {
        int totalColumns = this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getTotalColumns();
        int totalRows = this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getTotalRows();
        Paintable@[]@[]@ paintableTable = TouchButtonsMappingPaintable::jnewArray2_Paintable(totalColumns, totalRows);
        CellPositionFactory@ cellPositionFactory = CellPositionFactory::getInstance();
        CommonButtons@ commonButtons = CommonButtons::getInstance();
        for (int index = totalColumns - 1; index >= 0; index--) {
            for (int rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                @this.paintableTable_TouchButtonsMappingPaintable[index][rowIndex] = TouchButton::createButton(BasicTouchInputFactory::getInstance().NONE, TouchButtonBlankResource::getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getColumnsRemainderHalf(), this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getRowsRemainderHalf());
            }
        }
        return paintableTable;
    }
    

    void paint(Graphics@ graphics)
    {
        int totalColumns = this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getTotalColumns();
        int totalRows = this.touchButtonLocationHelper_TouchButtonsMappingPaintable.getTotalRows();
        for (int index = totalColumns - 1; index >= 0; index--) {
            for (int rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                this.paintableTable_TouchButtonsMappingPaintable[index][rowIndex].paint(graphics);
            }
        }
    }
}

namespace TouchButtonsMappingPaintable
{

    Paintable@[]@[]@ jnewArray2_Paintable(int a, int b)
    {
        Paintable@[]@[]@ result = array<Paintable@[]@>(a);
        for (int i = 0; i < a; i++) { @result[i] = array<Paintable@>(b); }
        return result;
    }
}

