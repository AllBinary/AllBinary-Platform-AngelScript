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
    bool diagonalMotionGestureAllowed_MotionGestureConfiguration;
    int diagonalTolerance_MotionGestureConfiguration;
    int minimumMotionGesture_MotionGestureConfiguration;
    string button_MotionGestureConfiguration;
    BasicColor@ color_MotionGestureConfiguration;
    bool executingActions_MotionGestureConfiguration;
    int mouseButtonMask_MotionGestureConfiguration;
    BasicArrayList@ activeCommands_MotionGestureConfiguration;

    // Java field initializers run after the super constructor
    void jfields_MotionGestureConfiguration()
    {
    this.diagonalMotionGestureAllowed_MotionGestureConfiguration = true;
    this.diagonalTolerance_MotionGestureConfiguration = 7;
    this.minimumMotionGesture_MotionGestureConfiguration = 9;
    this.button_MotionGestureConfiguration = StringUtil::getInstance().EMPTY_STRING;
    @this.color_MotionGestureConfiguration = BasicColorFactory::getInstance().BLUE;
    this.executingActions_MotionGestureConfiguration = true;
    this.mouseButtonMask_MotionGestureConfiguration = 0;
    @this.activeCommands_MotionGestureConfiguration = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    MotionGestureConfiguration@ jinit_MotionGestureConfiguration()
    {
        this.jfields_MotionGestureConfiguration();
        return this;
    }
    

    void addMotionGestureAction(BasicArrayList@ list, CompleteMotionGestureInputEvent@ commandAction)
    {
        this.activeCommands_MotionGestureConfiguration.add(MotionGestureToMotionGestureActionAssociation().jinit_MotionGestureToMotionGestureActionAssociation(list, commandAction));
    }
    

    void clearMotionGestureAction()
    {
        this.activeCommands_MotionGestureConfiguration.clear();
    }
    

    BasicArrayList@ getAssociateCommandActionsList()
    {
        return this.activeCommands_MotionGestureConfiguration;
    }
    

    bool isDiagonalMotionGestureAllowed()
    {
        return this.diagonalMotionGestureAllowed_MotionGestureConfiguration;
    }
    

    bool isExecutingActionsAllowed()
    {
        return this.executingActions_MotionGestureConfiguration;
    }
    

    void setExecutingActionsAllowed(bool executingActionAllowed)
    {
        this.executingActions_MotionGestureConfiguration = executingActionAllowed;
    }
    

    void setDiagonalMotionGestureAllowed(bool diagonalMotionGestureAllowed)
    {
        this.diagonalMotionGestureAllowed_MotionGestureConfiguration = diagonalMotionGestureAllowed;
    }
    

    int getDiagonalTolerance()
    {
        return this.diagonalTolerance_MotionGestureConfiguration;
    }
    

    void setDiagonalTolerance(int diagonalTolerance)
    {
        this.diagonalTolerance_MotionGestureConfiguration = diagonalTolerance;
    }
    

    int getMinimumMotionGesture()
    {
        return this.minimumMotionGesture_MotionGestureConfiguration;
    }
    

    void setMinimumMotionGesture(int minimumMotionGesture)
    {
        this.minimumMotionGesture_MotionGestureConfiguration = minimumMotionGesture;
    }
    

    string getButton()
    {
        return this.button_MotionGestureConfiguration;
    }
    

    void setButton(string button)
    {
        this.button_MotionGestureConfiguration = button;
    }
    

    BasicColor@ getColor()
    {
        return this.color_MotionGestureConfiguration;
    }
    

    void setColor(BasicColor@ color)
    {
        @this.color_MotionGestureConfiguration = color;
    }
    

    int getMouseButtonMask()
    {
        return this.mouseButtonMask_MotionGestureConfiguration;
    }
    

    void setMouseButtonMask(int mouseButtonMask)
    {
        this.mouseButtonMask_MotionGestureConfiguration = mouseButtonMask;
    }
}

