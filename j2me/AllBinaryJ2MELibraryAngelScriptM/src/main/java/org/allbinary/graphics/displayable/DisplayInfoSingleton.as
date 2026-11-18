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
    CommonLabels@ commonLabels;
    CommonSeps@ commonSeps;
    CommonStrings@ commonStrings;
    string ORIENTATION;
    string ADJUSTING_FOR_SCALING_IN_PORTRAIT;
    string ADJUSTING_FOR_SCALING_IN_LANDSCAPE;
    int[]@ last;
    int[]@ lastHalf;
    int[]@ full;
    int top;
    int left;
    int xOffset;
    int yOffset;
    float scaleLargestTo;
    int WIDTH;
    int HEIGHT;
    int CUSTOM_WIDTH;
    int CUSTOM_HEIGHT;
    BaseScalable@ scalableListener;
    float displayRatio;
    float ratio;
    string SET_LAST_SIZE_METHOD_NAME;
    string FULL_WIDTH;
    string FULL_HEIGHT;
    string LAST_WIDTH;
    string LAST_HEIGHT;
    string PORTRAIT;
    string LANDSCAPE;
    DisplayChangeEvent@ displayChangeEvent;
    string FIRE_METHOD_NAME;
    string REASON;
    string UPDATE_FROM_ORIENTATION_CHANGE;
    BasicArrayList@ list;
    string DISPLAY_INFO;
    string FULL;
    string LAST;
    string LAST_HALF;

    // Java field initializers run after the super constructor
    void jfields_DisplayInfoSingleton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonLabels = CommonLabels::getInstance();
    @this.commonSeps = CommonSeps::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    this.ORIENTATION = "ORIENTATION";
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    @this.last = array<int>(4);
    @this.lastHalf = array<int>(4);
    @this.full = array<int>(4);
    
    
    
    
    
    this.WIDTH = 0;
    this.HEIGHT = 1;
    this.CUSTOM_WIDTH = 2;
    this.CUSTOM_HEIGHT = 3;
    @this.scalableListener = BaseScalable().jinit_BaseScalable();
    
    this.ratio = 1.0f;
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize";
    this.FULL_WIDTH = " FullWidth: ";
    this.FULL_HEIGHT = " FullHeight: ";
    this.LAST_WIDTH = "LastWidth: ";
    this.LAST_HEIGHT = " LastHeight: ";
    this.PORTRAIT = "Portrait";
    this.LANDSCAPE = "Landscape";
    @this.displayChangeEvent = DisplayChangeEvent().jinit_DisplayChangeEvent(this);
    this.FIRE_METHOD_NAME = "fire";
    this.REASON = "reason: ";
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change ";
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    this.DISPLAY_INFO = "Display Info: ";
    this.FULL = "full";
    this.LAST = "last";
    this.LAST_HALF = "lastHalf";
    }
    

    DisplayInfoSingleton@ jinit_DisplayInfoSingleton()
    {
        this.jfields_DisplayInfoSingleton();
        int size = int(this.last.length());
        for (int index = 0; index < size; index++) {
            this.last[index] = 0;
            this.lastHalf[index] = 0;
            this.full[index] = 0;
        }
        if (AndroidUtil::isAndroid()) {
            this.scaleLargestTo = 640.0f;
        } else {
            this.scaleLargestTo = 1080.0f;
        }
        return this;
    }
    

    int[]@ getLastHalf()
    {
        return this.lastHalf;
    }
    

    int[]@ getLast()
    {
        return this.last;
    }
    

    int[]@ getFull()
    {
        return this.full;
    }
    

    float getScaleLargestTo()
    {
        return this.scaleLargestTo;
    }
    

    void setScaleLargestTo(int scaleLargestTo)
    {
        this.scaleLargestTo = float(scaleLargestTo);
    }
    

    void setLastSize(int aLastWidth, int aLastHeight, string reason)
    {
        if (this.full[this.WIDTH] != aLastWidth || this.full[this.HEIGHT] != aLastHeight) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason);
        }
    }
    

    void setLastSizeForce(int aLastWidth, int aLastHeight, string reason)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels::getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        int aFullWidth = aLastWidth;
        int aFullHeight = aLastHeight;
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH).appendint(aFullWidth).append(this.FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
            aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if (float(aLastHeight) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / float(aLastHeight);
                    this.ratio = float(aLastHeight) / this.scaleLargestTo;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio)));
                    aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio)));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0f;
                    this.scalableListener.scale(this.ratio);
                }
            } else {
                if (float(aLastWidth) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / float(aLastWidth);
                    this.ratio = float(aLastWidth) / this.scaleLargestTo;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio)));
                    aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio)));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0f;
                    this.scalableListener.scale(this.ratio);
                }
            }
        }
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        this.xOffset = aFullWidth - aLastWidth;
        this.yOffset = aFullHeight - aLastHeight;
        this.left = this.scalableListener.getLeft(this.xOffset);
        this.top = this.scalableListener.getTop(this.yOffset);
        this.full[this.WIDTH] = aFullWidth;
        this.full[this.HEIGHT] = aFullHeight;
        this.last[this.WIDTH] = aLastWidth;
        this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >>> 1);
        this.last[this.HEIGHT] = aLastHeight;
        this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >>> 1);
        SWTJOGLProcessor::getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
        this.add(this.SET_LAST_SIZE_METHOD_NAME);
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
        return this.isPortraitWH(this.last[this.WIDTH], this.last[this.HEIGHT]);
    }
    

    void add(string reason)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        this.logUtil.putF(stringMaker.append(this.REASON).append(reason).toString(), this, this.FIRE_METHOD_NAME);
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME);
        this.list.add(jbox(reason));
    }
    

    void process()
    {
        try {
            if (this.list.size() > 0) {
                this.processForced();
            }
            this.list.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
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
            PreLogUtil::putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
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
        this.logUtil.putF(stringMaker.append(CommonLabels::getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).append(this.commonSeps.SPACE).append(this.toString()).toString(), this, this.commonStrings.UPDATE);
        if (aLastWidth > 0 && aLastHeight > 0) {
            Features@ features = Features::getInstance();
            OpenGLFeatureFactory@ openGLFeatureFactory = OpenGLFeatureFactory::getInstance();
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || this.last[this.WIDTH] != aLastWidth || this.last[this.HEIGHT] != aLastHeight) {
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, this.commonStrings.UPDATE);
                GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100;
                    aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100;
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if (float(aLastHeight) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / float(aLastHeight);
                            this.ratio = float(aLastHeight) / this.scaleLargestTo;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio)));
                            aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio)));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0f;
                            this.scalableListener.scale(this.ratio);
                        }
                    } else {
                        if (float(aLastWidth) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / float(aLastWidth);
                            this.ratio = float(aLastWidth) / this.scaleLargestTo;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = int(jdoubleToInt((float(aLastWidth) * this.displayRatio)));
                            aLastHeight = int(jdoubleToInt((float(aLastHeight) * this.displayRatio)));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0f;
                            this.scalableListener.scale(this.ratio);
                        }
                    }
                }
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.commonStrings.UPDATE);
                this.xOffset = aFullWidth - aLastWidth;
                this.yOffset = aFullHeight - aLastHeight;
                this.left = this.scalableListener.getLeft(this.xOffset);
                this.top = this.scalableListener.getTop(this.yOffset);
                this.full[this.WIDTH] = aFullWidth;
                this.full[this.HEIGHT] = aFullHeight;
                this.last[this.WIDTH] = aLastWidth;
                this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >>> 1);
                this.last[this.HEIGHT] = aLastHeight;
                this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >>> 1);
                SWTJOGLProcessor::getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
                this.add(this.commonStrings.UPDATE);
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
        stringBuffer.append(this.DISPLAY_INFO);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.full[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.full[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.last[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.last[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.lastHalf[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.lastHalf[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append((this.isPortrait() ? this.PORTRAIT : this.LANDSCAPE));
        return stringBuffer.toString();
    }
    

    int getTop()
    {
        return this.top;
    }
    

    int getLeft()
    {
        return this.left;
    }
    

    int getLastWidth()
    {
        return this.last[this.WIDTH];
    }
    

    int getLastHeight()
    {
        return this.last[this.HEIGHT];
    }
    

    int getLastHalfWidth()
    {
        return this.lastHalf[this.WIDTH];
    }
    

    int getLastHalfHeight()
    {
        return this.lastHalf[this.HEIGHT];
    }
    

    int getCustomLastWidth()
    {
        return this.last[this.CUSTOM_WIDTH];
    }
    

    int getCustomLastHeight()
    {
        return this.last[this.CUSTOM_HEIGHT];
    }
    

    int getRawLastWidth()
    {
        return this.last[this.WIDTH];
    }
    

    int getRawLastHeight()
    {
        return this.last[this.HEIGHT];
    }
    

    void setCustom(int width, int height)
    {
        this.last[this.CUSTOM_WIDTH] = width;
        this.lastHalf[this.CUSTOM_WIDTH] = (this.last[this.CUSTOM_WIDTH] >>> 1);
        this.last[this.CUSTOM_HEIGHT] = height;
        this.lastHalf[this.CUSTOM_HEIGHT] = (this.last[this.CUSTOM_HEIGHT] >>> 1);
    }
    

    void setScalableListener(BaseScalable@ scalableListener)
    {
        @this.scalableListener = scalableListener;
    }
    

    ScalableListener@ getScalableListener()
    {
        return this.scalableListener;
    }
    

    float getRatio()
    {
        return this.ratio;
    }
    

    float getDisplayRatio()
    {
        return this.displayRatio;
    }
    

    void setOffset(int left, int top)
    {
        this.left = left;
    }
    

    int getxOffset()
    {
        return this.xOffset;
    }
    

    int getyOffset()
    {
        return this.yOffset;
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

