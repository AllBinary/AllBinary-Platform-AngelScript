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
// package org.allbinary.game.layer

class LayerPlacer : JObjectBase
{
    EnumerationUtil@ enumerationUtil_LayerPlacer;
    LayerInterfaceVisitor@ layerInterfaceVisitor;
    GPoint@ dimension_LayerPlacer;

    // Java field initializers run after the super constructor
    void jfields_LayerPlacer()
    {
    @this.enumerationUtil_LayerPlacer = EnumerationUtil::getInstance();
    
    
    }
    

    LayerPlacer@ jinit_LayerPlacer(LayerInterfaceVisitor@ layerInterfaceVisitor, GPoint@ dimension)
    {
        this.jfields_LayerPlacer();
        @this.layerInterfaceVisitor = layerInterfaceVisitor;
        @this.dimension_LayerPlacer = dimension;
        return this;
    }
    

    void processList(BasicArrayList@ list)
    {
        int size = list.size();
        LayerPlacementInterface@ layerPlacementInterface;
        for (int index = 0; index < size; index++) {
            @layerPlacementInterface = cast<LayerPlacementInterface>(list.objectArray[index]);
            this.process(layerPlacementInterface);
        }
    }
    

    void process(LayerPlacementInterface@ layerPlacementInterface)
    {
        GPoint@ relativePoint = this.getPoint(layerPlacementInterface);
        LayerInterfaceFactory@ layerInterfaceFactory = LayerInterfaceFactory::getInstance();
        ABHashtable@ hashtable = layerPlacementInterface.getInstance();
        Enumeration@ enumeration = hashtable.keys();
        GPoint@ point;
        ABHashtable@ layerHashtable;
        int x = 0;
        int y = 0;
        int z = 0;
        AllBinaryLayer@ layerInterface;
        while (this.enumerationUtil_LayerPlacer.hasMoreElements(enumeration)) {
            @point = cast<GPoint>(this.enumerationUtil_LayerPlacer.nextElement(enumeration));
            @layerHashtable = cast<ABHashtable>(hashtable.get(point));
            x = point.getX() + relativePoint.getX();
            y = point.getY() + relativePoint.getY();
            z = point.getZ() + relativePoint.getZ();
            @layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z);
            this.layerInterfaceVisitor.visit(layerInterface);
        }
    }
    

    GPoint@ getPoint(LayerPlacementInterface@ layerPlacementInterface)
    {
        PointFactory@ pointFactory = PointFactory::getInstance();
        LayerPlacementType@ layerPlacementType = layerPlacementInterface.getLayerType();
        if (layerPlacementType is LayerPlacementTypeFactory::getInstance().MAP) {
            int width = layerPlacementInterface.getWidth();
            int height = layerPlacementInterface.getHeight();
            int x = ((this.dimension_LayerPlacer.getX() - width) / 2);
            int y = ((this.dimension_LayerPlacer.getY() - height) / 2);
            return pointFactory.createXY(x, y);
        } else if (layerPlacementType is LayerPlacementTypeFactory::getInstance().UP) {
            int width = layerPlacementInterface.getWidth();
            int height = layerPlacementInterface.getHeight();
            int x = ((this.dimension_LayerPlacer.getX() - width) / 2);
            int y = -height;
            return pointFactory.createXY(x, y);
        } else {
            jthrow(Exception().jinit_Exception("PlacementType Not Recognized"));
        }
        return null;
    }
}

