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
    J2SEMath@ j2seMath;
    GPoint@ origin;
    GPoint@ previous;
    GPoint@ intermediate;
    Line@ line;
    BasicMotionGesturesHandler@ motionGesturesHandler;
    BasicEventHandler@ movedMotionGesturesHandler;
    BasicEventHandler@ scrolledMotionGesturesHandler;
    MotionEventCircularPool@ motionEventCircularPool;

    // Java field initializers run after the super constructor
    void jfields_MotionGestureRecognizer()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.j2seMath = J2SEMath::getInstance();
    @this.origin = PointFactory::getInstance().ZERO_ZERO;
    @this.previous = this.origin;
    @this.intermediate = this.origin;
    @this.line = Line().jinit_Line(this.origin, this.origin);
    
    
    
    
    }
    

    MotionGestureRecognizer@ jinit_MotionGestureRecognizer(int id)
    {
        this.jfields_MotionGestureRecognizer();
        @this.motionEventCircularPool = MotionEventCircularPool::createPool(id);
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
        @this.motionGesturesHandler = cast<BasicMotionGesturesHandler>(motionGesturesHandler);
        @this.movedMotionGesturesHandler = movedMotionGesturesHandler;
        @this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
        return this;
    }
    

    bool processPressedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        @this.intermediate = this.origin;
        @this.previous = this.origin;
        MotionGestureEvent@ event = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory::getInstance().PRESSED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    bool processReleasedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        MotionGestureEvent@ event = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory::getInstance().RELEASED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    void processDraggedMotionEvent(GPoint@ current, int deviceId, int buttonMask)
    {
        if (this.previous is this.origin || this.intermediate is this.origin) {
            @this.previous = current;
            @this.intermediate = current;
            return;
        }
        this.line.setP1(this.previous);
        this.line.setP2(current);
        int minimumMotionGesture = MotionGestureConfigurationFactory::getInstance().getMinimumMotionGesture();
        if (this.j2seMath.abs(float(this.line.getDeltaX())) < float(minimumMotionGesture) && this.j2seMath.abs(float(this.line.getDeltaY())) < float(minimumMotionGesture)) {
            @this.intermediate = current;
            return;
        }
        double gradient = this.line.getGradient();
        double absGradient = double(this.j2seMath.abs(float(gradient)));
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
            if (this.line.getDeltaY() > 0.0) {
                @newMotionGesture = touchMotionGestureFactory.UP;
            } else {
                @newMotionGesture = touchMotionGestureFactory.DOWN;
            }
        } else {
            if (absGradient < Math::tan(Math::toRadians(diagonalToleranceLower))) {
                if (this.line.getDeltaX() > 0.0) {
                    @newMotionGesture = touchMotionGestureFactory.LEFT;
                } else {
                    @newMotionGesture = touchMotionGestureFactory.RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if (this.line.getDeltaX() > 0.0) {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    } else {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if (this.line.getDeltaX() > 0.0) {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    } else {
                        @newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        @this.previous = current;
        @this.intermediate = current;
        MotionGestureEvent@ event = this.motionEventCircularPool.getInstance(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return;
    }
    

    bool processMovedMotionEvent(GPoint@ current, int deviceId, int button)
    {
        MotionGestureEvent@ event = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory::getInstance().NO_MOTION);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.movedMotionGesturesHandler.fireEvent(event);
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
        MotionGestureEvent@ event = this.motionEventCircularPool.getInstance(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.scrolledMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    BasicMotionGesturesHandler@ getMotionGesturesHandler()
    {
        return this.motionGesturesHandler;
    }
}

