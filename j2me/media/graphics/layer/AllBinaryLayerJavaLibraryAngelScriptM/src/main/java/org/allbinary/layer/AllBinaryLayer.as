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
// package org.allbinary.layer

class AllBinaryLayer : ABLayer, LayerInterface
{
    ViewPositionEvent@ viewPositionEvent;
    int halfWidth_AllBinaryLayer;
    int halfHeight_AllBinaryLayer;
    string name_AllBinaryLayer;
    ViewPositionBase@ viewPosition_AllBinaryLayer;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryLayer()
    {
    @this.viewPositionEvent = ViewPositionEvent().jinit_ViewPositionEvent(this);
    
    
    
    @this.viewPosition_AllBinaryLayer = ViewPositionBase::NULL_VIEW_POSITION;
    }
    

    AllBinaryLayer@ jinit_AllBinaryLayer(string name, Rectangle@ rectangle, ViewPositionBase@ viewPosition)
    {
        this.jinit_ABLayer(rectangle.getWidth(), rectangle.getHeight());
        this.jfields_AllBinaryLayer();
        string localName = "";
        localName = StringMaker().jinit_StringMaker().append(name).append(CommonSeps::getInstance().COLON).append(Integer::toHexString(TsUtil::getInstance().hashCode(this))).toString();
        this.name_AllBinaryLayer = localName;
        GPoint@ point = rectangle.getPoint();
        this.setPosition(point.getX(), point.getY(), point.getZ());
        this.setHalfWidth((this.getWidth() >>> 1));
        this.setHalfHeight((this.getHeight() >>> 1));
        @this.viewPosition_AllBinaryLayer = viewPosition;
        this.viewPosition_AllBinaryLayer.setAllbinaryLayer(this);
        return this;
    }
    

    void setPosition(int x, int y, int z)
    {
        ABLayer::setPosition(x, y, z);
    }
    

    void moveDXYZ(int dx, int dy, int dz)
    {
        ABLayer::moveDXYZ(dx, dy, dz);
    }
    

    int getXP()
    {
        return ABLayer::getXP();
    }
    

    int getYP()
    {
        return ABLayer::getYP();
    }
    

    int getZP()
    {
        return ABLayer::getZP();
    }
    

    int getWidth()
    {
        return ABLayer::getWidth();
    }
    

    int getHeight()
    {
        return ABLayer::getHeight();
    }
    

    void setVisible(bool visible)
    {
        ABLayer::setVisible(visible);
    }
    

    bool isVisible()
    {
        return ABLayer::isVisible();
    }
    

    void paint(Graphics@ graphics)
    {
        ABLayer::paint(graphics);
    }
    

    void onChangeEvent(ViewPositionEvent@ layerManagerEvent)
    {
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    int getX2()
    {
        return this.getXP() + this.getWidth();
    }
    

    int getY2()
    {
        return this.getYP() + this.getHeight();
    }
    

    int getZ2()
    {
        return int((int64(this.getZP()) + this.getDepth()));
    }
    

    string getName()
    {
        return this.name_AllBinaryLayer;
    }
    

    void setHalfWidth(int halfWidth)
    {
        this.halfWidth_AllBinaryLayer = halfWidth;
    }
    

    int getHalfWidth()
    {
        return this.halfWidth_AllBinaryLayer;
    }
    

    void setHalfHeight(int halfHeight)
    {
        this.halfHeight_AllBinaryLayer = halfHeight;
    }
    

    int getHalfHeight()
    {
        return this.halfHeight_AllBinaryLayer;
    }
    

    int getHalfDepth()
    {
        return int(this.getDepth()) / 2;
    }
    

    ViewPositionBase@ getViewPosition()
    {
        return this.viewPosition_AllBinaryLayer;
    }
    

    void setViewPosition(ViewPositionBase@ viewPosition)
    {
        @this.viewPosition_AllBinaryLayer = viewPosition;
    }
    

    Group@[]@ getGroupInterface()
    {
        return BasicGroupFactory::getInstance().NONE_ARRAY;
    }
    

    bool implmentsTickableInterface()
    {
        return false;
    }
    

    bool implmentsGameInputInterface()
    {
        return false;
    }
    

    bool implmentsArtificialIntelligenceCompositeInterface()
    {
        return false;
    }
    

    bool implmentsCollidableInterface()
    {
        return false;
    }
    

    bool implementsThreedInterface()
    {
        return OpenGLFeatureUtil::getInstance().isAnyThreed();
    }
    

    int getType()
    {
        return -1;
    }
    

    int getMultiPlayerType()
    {
        return -1;
    }
    

    void toStringAppend(StringMaker@ stringBuffer)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        PositionStrings@ positionStrings = PositionStrings::getInstance();
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        stringBuffer.append(this.getName());
        stringBuffer.append(commonSeps.COLON);
        stringBuffer.append(AllBinaryLayer::TYPE);
        stringBuffer.appendint(this.getType());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.getXP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.getYP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.getZP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

namespace AllBinaryLayer
{
    const string TYPE = "Type: ";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ALLBINARY_LAYER = AllBinaryLayer().jinit_AllBinaryLayer(StringUtil::getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPositionBase::NULL_VIEW_POSITION);
        
    }

    AllBinaryLayer@ jcell_NULL_ALLBINARY_LAYER;
    AllBinaryLayer@ get_NULL_ALLBINARY_LAYER() property { jclinit(); return jcell_NULL_ALLBINARY_LAYER; }
    void set_NULL_ALLBINARY_LAYER(AllBinaryLayer@ value) property { jclinit(); @jcell_NULL_ALLBINARY_LAYER = value; }
}

