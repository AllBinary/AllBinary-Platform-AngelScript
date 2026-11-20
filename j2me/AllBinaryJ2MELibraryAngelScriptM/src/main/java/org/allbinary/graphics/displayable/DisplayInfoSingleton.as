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
// package org.allbinary.graphics.displayable

class DisplayInfoSingleton : JObjectBase
{
    LogUtil@ logUtil;
    CommonLabels@ commonLabels_DisplayInfoSingleton;
    CommonSeps@ commonSeps_DisplayInfoSingleton;
    CommonStrings@ commonStrings_DisplayInfoSingleton;
    string ORIENTATION;
    string ADJUSTING_FOR_SCALING_IN_PORTRAIT;
    string ADJUSTING_FOR_SCALING_IN_LANDSCAPE;
    int[]@ last_DisplayInfoSingleton;
    int[]@ lastHalf_DisplayInfoSingleton;
    int[]@ full_DisplayInfoSingleton;
    int top_DisplayInfoSingleton;
    int left_DisplayInfoSingleton;
    int xOffset_DisplayInfoSingleton;
    int yOffset_DisplayInfoSingleton;
    float scaleLargestTo_DisplayInfoSingleton;
    int WIDTH;
    int HEIGHT;
    int CUSTOM_WIDTH;
    int CUSTOM_HEIGHT;
    BaseScalable@ scalableListener_DisplayInfoSingleton;
    float displayRatio_DisplayInfoSingleton;
    float ratio_DisplayInfoSingleton;
    string SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton;
    string FULL_WIDTH_DisplayInfoSingleton;
    string FULL_HEIGHT_DisplayInfoSingleton;
    string LAST_WIDTH_DisplayInfoSingleton;
    string LAST_HEIGHT_DisplayInfoSingleton;
    string PORTRAIT_DisplayInfoSingleton;
    string LANDSCAPE_DisplayInfoSingleton;
    DisplayChangeEvent@ displayChangeEvent;
    string FIRE_METHOD_NAME_DisplayInfoSingleton;
    string REASON_DisplayInfoSingleton;
    string UPDATE_FROM_ORIENTATION_CHANGE_DisplayInfoSingleton;
    BasicArrayList@ list_DisplayInfoSingleton;
    string DISPLAY_INFO_DisplayInfoSingleton;
    string FULL_DisplayInfoSingleton;
    string LAST_DisplayInfoSingleton;
    string LAST_HALF_DisplayInfoSingleton;

    // Java field initializers run after the super constructor
    void jfields_DisplayInfoSingleton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonLabels_DisplayInfoSingleton = CommonLabels::getInstance();
    @this.commonSeps_DisplayInfoSingleton = CommonSeps::getInstance();
    @this.commonStrings_DisplayInfoSingleton = CommonStrings::getInstance();
    this.ORIENTATION = "ORIENTATION";
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    @this.last_DisplayInfoSingleton = array<int>(4);
    @this.lastHalf_DisplayInfoSingleton = array<int>(4);
    @this.full_DisplayInfoSingleton = array<int>(4);
    
    
    
    
    
    this.WIDTH = 0;
    this.HEIGHT = 1;
    this.CUSTOM_WIDTH = 2;
    this.CUSTOM_HEIGHT = 3;
    @this.scalableListener_DisplayInfoSingleton = BaseScalable().jinit_BaseScalable();
    
    this.ratio_DisplayInfoSingleton = 1.0f;
    this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton = "setLastSize";
    this.FULL_WIDTH_DisplayInfoSingleton = " FullWidth: ";
    this.FULL_HEIGHT_DisplayInfoSingleton = " FullHeight: ";
    this.LAST_WIDTH_DisplayInfoSingleton = "LastWidth: ";
    this.LAST_HEIGHT_DisplayInfoSingleton = " LastHeight: ";
    this.PORTRAIT_DisplayInfoSingleton = "Portrait";
    this.LANDSCAPE_DisplayInfoSingleton = "Landscape";
    @this.displayChangeEvent = DisplayChangeEvent().jinit_DisplayChangeEvent(this);
    this.FIRE_METHOD_NAME_DisplayInfoSingleton = "fire";
    this.REASON_DisplayInfoSingleton = "reason: ";
    this.UPDATE_FROM_ORIENTATION_CHANGE_DisplayInfoSingleton = "Updating from Orientation Change ";
    @this.list_DisplayInfoSingleton = BasicArrayListD().jinit_BasicArrayListD();
    this.DISPLAY_INFO_DisplayInfoSingleton = "Display Info: ";
    this.FULL_DisplayInfoSingleton = "full";
    this.LAST_DisplayInfoSingleton = "last";
    this.LAST_HALF_DisplayInfoSingleton = "lastHalf";
    }
    

    DisplayInfoSingleton@ jinit_DisplayInfoSingleton()
    {
        this.jfields_DisplayInfoSingleton();
        int size = int(this.last_DisplayInfoSingleton.length());
        for (int index = 0; index < size; index++) {
            this.last_DisplayInfoSingleton[index] = 0;
            this.lastHalf_DisplayInfoSingleton[index] = 0;
            this.full_DisplayInfoSingleton[index] = 0;
        }
        if (AndroidUtil::isAndroid()) {
            this.scaleLargestTo_DisplayInfoSingleton = 640.0f;
        } else {
            this.scaleLargestTo_DisplayInfoSingleton = 1080.0f;
        }
        return this;
    }
    

    int[]@ getLastHalf()
    {
        return this.lastHalf_DisplayInfoSingleton;
    }
    

    int[]@ getLast()
    {
        return this.last_DisplayInfoSingleton;
    }
    

    int[]@ getFull()
    {
        return this.full_DisplayInfoSingleton;
    }
    

    float getScaleLargestTo()
    {
        return this.scaleLargestTo_DisplayInfoSingleton;
    }
    

    void setScaleLargestTo(int scaleLargestTo)
    {
        this.scaleLargestTo_DisplayInfoSingleton = float(scaleLargestTo);
    }
    

    void setLastSize(int aLastWidth, int aLastHeight, string reason)
    {
        if (this.full_DisplayInfoSingleton[this.WIDTH] != aLastWidth || this.full_DisplayInfoSingleton[this.HEIGHT] != aLastHeight) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason);
        }
    }
    

    void setLastSizeForce(int aLastWidth, int aLastHeight, string reason)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels::getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
        int aFullWidth = aLastWidth;
        int aFullHeight = aLastHeight;
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH_DisplayInfoSingleton).appendint(aFullWidth).append(this.FULL_HEIGHT_DisplayInfoSingleton).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
        GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
            aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if (float(aLastHeight) > this.scaleLargestTo_DisplayInfoSingleton) {
                    this.displayRatio_DisplayInfoSingleton = this.scaleLargestTo_DisplayInfoSingleton / float(aLastHeight);
                    this.ratio_DisplayInfoSingleton = float(aLastHeight) / this.scaleLargestTo_DisplayInfoSingleton;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio_DisplayInfoSingleton).toString(), this, this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
                    aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio_DisplayInfoSingleton)));
                    aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio_DisplayInfoSingleton)));
                    this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                } else {
                    this.ratio_DisplayInfoSingleton = 1.0f;
                    this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                }
            } else {
                if (float(aLastWidth) > this.scaleLargestTo_DisplayInfoSingleton) {
                    this.displayRatio_DisplayInfoSingleton = this.scaleLargestTo_DisplayInfoSingleton / float(aLastWidth);
                    this.ratio_DisplayInfoSingleton = float(aLastWidth) / this.scaleLargestTo_DisplayInfoSingleton;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio_DisplayInfoSingleton).toString(), this, this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
                    aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio_DisplayInfoSingleton)));
                    aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio_DisplayInfoSingleton)));
                    this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                } else {
                    this.ratio_DisplayInfoSingleton = 1.0f;
                    this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                }
            }
        }
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH_DisplayInfoSingleton).appendint(aLastWidth).append(this.LAST_HEIGHT_DisplayInfoSingleton).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
        this.xOffset_DisplayInfoSingleton = aFullWidth - aLastWidth;
        this.yOffset_DisplayInfoSingleton = aFullHeight - aLastHeight;
        this.left_DisplayInfoSingleton = this.scalableListener_DisplayInfoSingleton.getLeft(this.xOffset_DisplayInfoSingleton);
        this.top_DisplayInfoSingleton = this.scalableListener_DisplayInfoSingleton.getTop(this.yOffset_DisplayInfoSingleton);
        this.full_DisplayInfoSingleton[this.WIDTH] = aFullWidth;
        this.full_DisplayInfoSingleton[this.HEIGHT] = aFullHeight;
        this.last_DisplayInfoSingleton[this.WIDTH] = aLastWidth;
        this.lastHalf_DisplayInfoSingleton[this.WIDTH] = (this.last_DisplayInfoSingleton[this.WIDTH] >>> 1);
        this.last_DisplayInfoSingleton[this.HEIGHT] = aLastHeight;
        this.lastHalf_DisplayInfoSingleton[this.HEIGHT] = (this.last_DisplayInfoSingleton[this.HEIGHT] >>> 1);
        SWTJOGLProcessor::getInstance().setCustom(aLastWidth, aLastHeight, this.ratio_DisplayInfoSingleton);
        this.add(this.SET_LAST_SIZE_METHOD_NAME_DisplayInfoSingleton);
    }
    

    bool isPortraitWH(int lastWidth, int lastHeight)
    {
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isPortrait()
    {
        return this.isPortraitWH(this.last_DisplayInfoSingleton[this.WIDTH], this.last_DisplayInfoSingleton[this.HEIGHT]);
    }
    

    void add(string reason)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(this.REASON_DisplayInfoSingleton).append(reason).toString(), this, this.FIRE_METHOD_NAME_DisplayInfoSingleton);
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME_DisplayInfoSingleton);
        this.list_DisplayInfoSingleton.add(jbox(reason));
    }
    

    void process()
    {
        try {
            if (this.list_DisplayInfoSingleton.size() > 0) {
                this.processForced();
            }
            this.list_DisplayInfoSingleton.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE(this.commonStrings_DisplayInfoSingleton.EXCEPTION, this, this.FIRE_METHOD_NAME_DisplayInfoSingleton, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void processForced()
    {
        try {
            SWTJOGLProcessor@ swtJOGLProcessor = SWTJOGLProcessor::getInstance();
            swtJOGLProcessor.clear();
            DisplayChangeEventHandler::getInstance().fireEvent(this.displayChangeEvent);
            LastDisplayChangeEventHandler::getInstance().fireEvent(this.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged();
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            PreLogUtil::putOE(this.commonStrings_DisplayInfoSingleton.EXCEPTION, this, this.FIRE_METHOD_NAME_DisplayInfoSingleton, e);
            }
            else { jthrow(jex1); }
        }
    }
    

    void update(Displayable@ displayable, string reason)
    {
        int aLastWidth = displayable.getWidth();
        int aLastHeight = displayable.getHeight();
        int aFullWidth = aLastWidth;
        int aFullHeight = aLastHeight;
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels::getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH_DisplayInfoSingleton).appendint(aLastWidth).append(this.LAST_HEIGHT_DisplayInfoSingleton).appendint(aLastHeight).append(this.commonSeps_DisplayInfoSingleton.SPACE).append(this.toString()).toString(), this, this.commonStrings_DisplayInfoSingleton.UPDATE);
        if (aLastWidth > 0 && aLastHeight > 0) {
            Features@ features = Features::getInstance();
            OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || this.last_DisplayInfoSingleton[this.WIDTH] != aLastWidth || this.last_DisplayInfoSingleton[this.HEIGHT] != aLastHeight) {
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE_DisplayInfoSingleton).toString(), this, this.commonStrings_DisplayInfoSingleton.UPDATE);
                GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
                    aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if (float(aLastHeight) > this.scaleLargestTo_DisplayInfoSingleton) {
                            this.displayRatio_DisplayInfoSingleton = this.scaleLargestTo_DisplayInfoSingleton / float(aLastHeight);
                            this.ratio_DisplayInfoSingleton = float(aLastHeight) / this.scaleLargestTo_DisplayInfoSingleton;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio_DisplayInfoSingleton).toString(), this, this.commonStrings_DisplayInfoSingleton.UPDATE);
                            aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio_DisplayInfoSingleton)));
                            aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio_DisplayInfoSingleton)));
                            this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                        } else {
                            this.ratio_DisplayInfoSingleton = 1.0f;
                            this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                        }
                    } else {
                        if (float(aLastWidth) > this.scaleLargestTo_DisplayInfoSingleton) {
                            this.displayRatio_DisplayInfoSingleton = this.scaleLargestTo_DisplayInfoSingleton / float(aLastWidth);
                            this.ratio_DisplayInfoSingleton = float(aLastWidth) / this.scaleLargestTo_DisplayInfoSingleton;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio_DisplayInfoSingleton).toString(), this, this.commonStrings_DisplayInfoSingleton.UPDATE);
                            aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio_DisplayInfoSingleton)));
                            aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio_DisplayInfoSingleton)));
                            this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                        } else {
                            this.ratio_DisplayInfoSingleton = 1.0f;
                            this.scalableListener_DisplayInfoSingleton.scale(this.ratio_DisplayInfoSingleton);
                        }
                    }
                }
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE_DisplayInfoSingleton).append(this.LAST_WIDTH_DisplayInfoSingleton).appendint(aLastWidth).append(this.LAST_HEIGHT_DisplayInfoSingleton).appendint(aLastHeight).toString(), this, this.commonStrings_DisplayInfoSingleton.UPDATE);
                this.xOffset_DisplayInfoSingleton = aFullWidth - aLastWidth;
                this.yOffset_DisplayInfoSingleton = aFullHeight - aLastHeight;
                this.left_DisplayInfoSingleton = this.scalableListener_DisplayInfoSingleton.getLeft(this.xOffset_DisplayInfoSingleton);
                this.top_DisplayInfoSingleton = this.scalableListener_DisplayInfoSingleton.getTop(this.yOffset_DisplayInfoSingleton);
                this.full_DisplayInfoSingleton[this.WIDTH] = aFullWidth;
                this.full_DisplayInfoSingleton[this.HEIGHT] = aFullHeight;
                this.last_DisplayInfoSingleton[this.WIDTH] = aLastWidth;
                this.lastHalf_DisplayInfoSingleton[this.WIDTH] = (this.last_DisplayInfoSingleton[this.WIDTH] >>> 1);
                this.last_DisplayInfoSingleton[this.HEIGHT] = aLastHeight;
                this.lastHalf_DisplayInfoSingleton[this.HEIGHT] = (this.last_DisplayInfoSingleton[this.HEIGHT] >>> 1);
                SWTJOGLProcessor::getInstance().setCustom(aLastWidth, aLastHeight, this.ratio_DisplayInfoSingleton);
                this.add(this.commonStrings_DisplayInfoSingleton.UPDATE);
            }
        }
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        return this.toStringAppend(stringBuffer);
    }
    

    string toStringAppend(StringMaker@ stringBuffer)
    {
        stringBuffer.append(this.DISPLAY_INFO_DisplayInfoSingleton);
        stringBuffer.append(this.FULL_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.WIDTH_LABEL);
        stringBuffer.appendint(this.full_DisplayInfoSingleton[this.WIDTH]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append(this.FULL_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.HEIGHT_LABEL);
        stringBuffer.appendint(this.full_DisplayInfoSingleton[this.HEIGHT]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append(this.LAST_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.WIDTH_LABEL);
        stringBuffer.appendint(this.last_DisplayInfoSingleton[this.WIDTH]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append(this.LAST_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.HEIGHT_LABEL);
        stringBuffer.appendint(this.last_DisplayInfoSingleton[this.HEIGHT]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append(this.LAST_HALF_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.WIDTH_LABEL);
        stringBuffer.appendint(this.lastHalf_DisplayInfoSingleton[this.WIDTH]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append(this.LAST_HALF_DisplayInfoSingleton);
        stringBuffer.append(this.commonLabels_DisplayInfoSingleton.HEIGHT_LABEL);
        stringBuffer.appendint(this.lastHalf_DisplayInfoSingleton[this.HEIGHT]);
        stringBuffer.append(this.commonSeps_DisplayInfoSingleton.SPACE);
        stringBuffer.append((this.isPortrait() ? this.PORTRAIT_DisplayInfoSingleton : this.LANDSCAPE_DisplayInfoSingleton));
        return stringBuffer.toString();
    }
    

    int getTop()
    {
        return this.top_DisplayInfoSingleton;
    }
    

    int getLeft()
    {
        return this.left_DisplayInfoSingleton;
    }
    

    int getLastWidth()
    {
        return this.last_DisplayInfoSingleton[this.WIDTH];
    }
    

    int getLastHeight()
    {
        return this.last_DisplayInfoSingleton[this.HEIGHT];
    }
    

    int getLastHalfWidth()
    {
        return this.lastHalf_DisplayInfoSingleton[this.WIDTH];
    }
    

    int getLastHalfHeight()
    {
        return this.lastHalf_DisplayInfoSingleton[this.HEIGHT];
    }
    

    int getCustomLastWidth()
    {
        return this.last_DisplayInfoSingleton[this.CUSTOM_WIDTH];
    }
    

    int getCustomLastHeight()
    {
        return this.last_DisplayInfoSingleton[this.CUSTOM_HEIGHT];
    }
    

    int getRawLastWidth()
    {
        return this.last_DisplayInfoSingleton[this.WIDTH];
    }
    

    int getRawLastHeight()
    {
        return this.last_DisplayInfoSingleton[this.HEIGHT];
    }
    

    void setCustom(int width, int height)
    {
        this.last_DisplayInfoSingleton[this.CUSTOM_WIDTH] = width;
        this.lastHalf_DisplayInfoSingleton[this.CUSTOM_WIDTH] = (this.last_DisplayInfoSingleton[this.CUSTOM_WIDTH] >>> 1);
        this.last_DisplayInfoSingleton[this.CUSTOM_HEIGHT] = height;
        this.lastHalf_DisplayInfoSingleton[this.CUSTOM_HEIGHT] = (this.last_DisplayInfoSingleton[this.CUSTOM_HEIGHT] >>> 1);
    }
    

    void setScalableListener(BaseScalable@ scalableListener)
    {
        @this.scalableListener_DisplayInfoSingleton = scalableListener;
    }
    

    ScalableListener@ getScalableListener()
    {
        return this.scalableListener_DisplayInfoSingleton;
    }
    

    float getRatio()
    {
        return this.ratio_DisplayInfoSingleton;
    }
    

    float getDisplayRatio()
    {
        return this.displayRatio_DisplayInfoSingleton;
    }
    

    void setOffset(int left, int top)
    {
        this.left_DisplayInfoSingleton = left;
    }
    

    int getxOffset()
    {
        return this.xOffset_DisplayInfoSingleton;
    }
    

    int getyOffset()
    {
        return this.yOffset_DisplayInfoSingleton;
    }
}

namespace DisplayInfoSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = DisplayInfoSingleton().jinit_DisplayInfoSingleton();
    }

    DisplayInfoSingleton@ jcell_SINGLETON;
    DisplayInfoSingleton@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(DisplayInfoSingleton@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    DisplayInfoSingleton@ getInstance()
    {
        return DisplayInfoSingleton::SINGLETON;
    }
}

