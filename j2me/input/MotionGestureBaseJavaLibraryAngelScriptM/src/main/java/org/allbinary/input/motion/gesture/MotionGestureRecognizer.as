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
// package org.allbinary.input.motion.gesture

class MotionGestureRecognizer : JObjectBase
{
    LogUtil@ logUtil;
    J2SEMath@ j2seMath_MotionGestureRecognizer;
    GPoint@ origin_MotionGestureRecognizer;
    GPoint@ previous_MotionGestureRecognizer;
    GPoint@ intermediate_MotionGestureRecognizer;
    Line@ line_MotionGestureRecognizer;
    BasicMotionGesturesHandler@ motionGesturesHandler_MotionGestureRecognizer;
    BasicEventHandler@ movedMotionGesturesHandler_MotionGestureRecognizer;
    BasicEventHandler@ scrolledMotionGesturesHandler_MotionGestureRecognizer;
    MotionEventCircularPool@ motionEventCircularPool_MotionGestureRecognizer;

    // Java field initializers run after the super constructor
    void jfields_MotionGestureRecognizer()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.j2seMath_MotionGestureRecognizer = J2SEMath::getInstance();
    @this.origin_MotionGestureRecognizer = PointFactory::getInstance().ZERO_ZERO;
    @this.previous_MotionGestureRecognizer = this.origin_MotionGestureRecognizer;
    @this.intermediate_MotionGestureRecognizer = this.origin_MotionGestureRecognizer;
    @this.line_MotionGestureRecognizer = Line().jinit_Line(this.origin_MotionGestureRecognizer, this.origin_MotionGestureRecognizer);
    
    
    
    
    }
    

    MotionGestureRecognizer@ jinit_MotionGestureRecognizer(int id)
    {
        this.jfields_MotionGestureRecognizer();
        @this.motionEventCircularPool_MotionGestureRecognizer = MotionEventCircularPool::createPool(id);
        BasicEventHandler@ motionGesturesHandler = BasicEventHandler().jinit_BasicEventHandler();
        BasicEventHandler@ movedMotionGesturesHandler = motionGesturesHandler;
        BasicEventHandler@ scrolledMotionGesturesHandler = motionGesturesHandler;
        try {
            @motionGesturesHandler = BasicMotionGesturesHandler::getInstance();
            @movedMotionGesturesHandler = MovedMotionGesturesHandler::getInstance();
            @scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler::getInstance();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        @this.motionGesturesHandler_MotionGestureRecognizer = cast<BasicMotionGesturesHandler>(motionGesturesHandler);
        @this.movedMotionGesturesHandler_MotionGestureRecognizer = movedMotionGesturesHandler;
        @this.scrolledMotionGesturesHandler_MotionGestureRecognizer = scrolledMotionGesturesHandler;
        return this;
    }
    

    bool processPressedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        @this.intermediate_MotionGestureRecognizer = this.origin_MotionGestureRecognizer;
        @this.previous_MotionGestureRecognizer = this.origin_MotionGestureRecognizer;
        MotionGestureEvent@ event = this.motionEventCircularPool_MotionGestureRecognizer.getInstance(TouchMotionGestureFactory::getInstance().PRESSED);
        event.setPreviousPoint(this.previous_MotionGestureRecognizer);
        event.setCurrentPoint(current);
        this.motionGesturesHandler_MotionGestureRecognizer.fireEvent(event);
        return true;
    }
    

    bool processReleasedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        MotionGestureEvent@ event = this.motionEventCircularPool_MotionGestureRecognizer.getInstance(TouchMotionGestureFactory::getInstance().RELEASED);
        event.setPreviousPoint(this.previous_MotionGestureRecognizer);
        event.setCurrentPoint(current);
        this.motionGesturesHandler_MotionGestureRecognizer.fireEvent(event);
        return true;
    }
    

    void processDraggedMotionEvent(GPoint@ current, int deviceId, int buttonMask)
    {
        if (this.previous_MotionGestureRecognizer is this.origin_MotionGestureRecognizer || this.intermediate_MotionGestureRecognizer is this.origin_MotionGestureRecognizer) {
            @this.previous_MotionGestureRecognizer = current;
            @this.intermediate_MotionGestureRecognizer = current;
            return;
        }
        this.line_MotionGestureRecognizer.setP1(this.previous_MotionGestureRecognizer);
        this.line_MotionGestureRecognizer.setP2(current);
        int minimumMotionGesture = MotionGestureConfigurationFactory::getInstance().getMinimumMotionGesture();
        if (this.j2seMath_MotionGestureRecognizer.abs(float(this.line_MotionGestureRecognizer.getDeltaX())) < float(minimumMotionGesture) && this.j2seMath_MotionGestureRecognizer.abs(float(this.line_MotionGestureRecognizer.getDeltaY())) < float(minimumMotionGesture)) {
            @this.intermediate_MotionGestureRecognizer = current;
            return;
        }
        double gradient = this.line_MotionGestureRecognizer.getGradient();
        double absGradient = double(this.j2seMath_MotionGestureRecognizer.abs(float(gradient)));
        MotionGestureConfiguration@ conf = MotionGestureConfigurationFactory::getInstance();
        TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
        MotionGestureInput@ newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        double diagonalToleranceHigher = 12.0;
        double diagonalToleranceLower = 12.0;
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = double((90 - conf.getDiagonalTolerance()));
            diagonalToleranceLower = double(conf.getDiagonalTolerance());
        }
        if (absGradient > Math::tan(Math::toRadians(diagonalToleranceHigher))) {
            if (this.line_MotionGestureRecognizer.getDeltaY() > 0.0) {
                @newMotionGesture = touchMotionGestureFactory.UP;
            } else {
                @newMotionGesture = touchMotionGestureFactory.DOWN;
            }
        } else {
            if (absGradient < Math::tan(Math::toRadians(diagonalToleranceLower))) {
                if (this.line_MotionGestureRecognizer.getDeltaX() > 0.0) {
                    @newMotionGesture = touchMotionGestureFactory.LEFT;
                } else {
                    @newMotionGesture = touchMotionGestureFactory.RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if (this.line_MotionGestureRecognizer.getDeltaX() > 0.0) {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    } else {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if (this.line_MotionGestureRecognizer.getDeltaX() > 0.0) {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    } else {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        @this.previous_MotionGestureRecognizer = current;
        @this.intermediate_MotionGestureRecognizer = current;
        MotionGestureEvent@ event = this.motionEventCircularPool_MotionGestureRecognizer.getInstance(newMotionGesture);
        event.setPreviousPoint(this.previous_MotionGestureRecognizer);
        event.setCurrentPoint(current);
        this.motionGesturesHandler_MotionGestureRecognizer.fireEvent(event);
        return;
    }
    

    bool processMovedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        MotionGestureEvent@ event = this.motionEventCircularPool_MotionGestureRecognizer.getInstance(TouchMotionGestureFactory::getInstance().NO_MOTION);
        event.setPreviousPoint(this.previous_MotionGestureRecognizer);
        event.setCurrentPoint(current);
        this.movedMotionGesturesHandler_MotionGestureRecognizer.fireEvent(event);
        return true;
    }
    

    bool processScrolledMotionEvent(GPoint@ current, int deviceId, int button)
    {
        TouchMotionGestureFactory@ touchMotionGestureFactory = TouchMotionGestureFactory::getInstance();
        MotionGestureInput@ newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        if (button > 0) {
            @newMotionGesture = touchMotionGestureFactory.SCROLL_UP;
        } else if (button < 0) {
            @newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN;
        }
        MotionGestureEvent@ event = this.motionEventCircularPool_MotionGestureRecognizer.getInstance(newMotionGesture);
        event.setPreviousPoint(this.previous_MotionGestureRecognizer);
        event.setCurrentPoint(current);
        this.scrolledMotionGesturesHandler_MotionGestureRecognizer.fireEvent(event);
        return true;
    }
    

    BasicMotionGesturesHandler@ getMotionGesturesHandler()
    {
        return this.motionGesturesHandler_MotionGestureRecognizer;
    }
}

