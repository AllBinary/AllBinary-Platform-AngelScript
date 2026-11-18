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
// package org.allbinary.input.motion.gesture.configuration

class MotionGestureConfiguration : JObjectBase
{
    bool diagonalMotionGestureAllowed;
    int diagonalTolerance;
    int minimumMotionGesture;
    string button;
    BasicColor@ color;
    bool executingActions;
    int mouseButtonMask;
    BasicArrayList@ activeCommands;

    // Java field initializers run after the super constructor
    void jfields_MotionGestureConfiguration()
    {
    this.diagonalMotionGestureAllowed = true;
    this.diagonalTolerance = 7;
    this.minimumMotionGesture = 9;
    this.button = StringUtil::getInstance().EMPTY_STRING;
    @this.color = BasicColorFactory::getInstance().BLUE;
    this.executingActions = true;
    this.mouseButtonMask = 0;
    @this.activeCommands = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    MotionGestureConfiguration@ jinit_MotionGestureConfiguration()
    {
        this.jfields_MotionGestureConfiguration();
        return this;
    }
    

    void addMotionGestureAction(BasicArrayList@ list, CompleteMotionGestureInputEvent@ commandAction)
    {
        this.activeCommands.add(MotionGestureToMotionGestureActionAssociation().jinit_MotionGestureToMotionGestureActionAssociation(list, commandAction));
    }
    

    void clearMotionGestureAction()
    {
        this.activeCommands.clear();
    }
    

    BasicArrayList@ getAssociateCommandActionsList()
    {
        return this.activeCommands;
    }
    

    bool isDiagonalMotionGestureAllowed()
    {
        return this.diagonalMotionGestureAllowed;
    }
    

    bool isExecutingActionsAllowed()
    {
        return this.executingActions;
    }
    

    void setExecutingActionsAllowed(bool executingActionAllowed)
    {
        this.executingActions = executingActionAllowed;
    }
    

    void setDiagonalMotionGestureAllowed(bool diagonalMotionGestureAllowed)
    {
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
    }
    

    int getDiagonalTolerance()
    {
        return this.diagonalTolerance;
    }
    

    void setDiagonalTolerance(int diagonalTolerance)
    {
        this.diagonalTolerance = diagonalTolerance;
    }
    

    int getMinimumMotionGesture()
    {
        return this.minimumMotionGesture;
    }
    

    void setMinimumMotionGesture(int minimumMotionGesture)
    {
        this.minimumMotionGesture = minimumMotionGesture;
    }
    

    string getButton()
    {
        return this.button;
    }
    

    void setButton(string button)
    {
        this.button = button;
    }
    

    BasicColor@ getColor()
    {
        return this.color;
    }
    

    void setColor(BasicColor@ color)
    {
        @this.color = color;
    }
    

    int getMouseButtonMask()
    {
        return this.mouseButtonMask;
    }
    

    void setMouseButtonMask(int mouseButtonMask)
    {
        this.mouseButtonMask = mouseButtonMask;
    }
}

