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
// package org.allbinary.direction

class DirectionFactory : JObjectBase
{
    string NAME;
    Direction@ LEFT;
    Direction@ RIGHT;
    Direction@ DOWN;
    Direction@ UP;
    Direction@ UP_LEFT;
    Direction@ UP_RIGHT;
    Direction@ DOWN_LEFT;
    Direction@ DOWN_RIGHT;
    Direction@ NOT_BORDERED_WITH;
    Direction@ NO_DIRECTION;
    Direction@ TOP;
    Direction@ BOTTOM;
    Direction@ ALL_DIRECTION;

    // Java field initializers run after the super constructor
    void jfields_DirectionFactory()
    {
    this.NAME = "DIRECTION";
    @this.LEFT = Direction().jinit_Direction(CommonPhoneStrings::getInstance().LEFT, "WEST", 0, 1);
    @this.RIGHT = Direction().jinit_Direction(CommonPhoneStrings::getInstance().RIGHT, "EAST", 1, 0);
    @this.DOWN = Direction().jinit_Direction(CommonPhoneStrings::getInstance().DOWN, "SOUTH", 2, 0);
    @this.UP = Direction().jinit_Direction(CommonPhoneStrings::getInstance().UP, "NORTH", 3, 0);
    
    
    
    
    @this.NOT_BORDERED_WITH = Direction().jinit_Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0);
    @this.NO_DIRECTION = Direction().jinit_Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0);
    @this.TOP = Direction().jinit_Direction("TOP", "TOP", 10, 0);
    @this.BOTTOM = Direction().jinit_Direction("BOTTOM", "BOTTOM", 11, 0);
    @this.ALL_DIRECTION = Direction().jinit_Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0);
    }
    

    DirectionFactory@ jinit_DirectionFactory()
    {
        this.jfields_DirectionFactory();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        @this.UP_LEFT = Direction().jinit_Direction("UP LEFT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 4, 0);
        stringBuffer.delete(0, stringBuffer.length());
        @this.UP_RIGHT = Direction().jinit_Direction("UP RIGHT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 5, 0);
        stringBuffer.delete(0, stringBuffer.length());
        @this.DOWN_LEFT = Direction().jinit_Direction("DOWN LEFT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 6, 0);
        stringBuffer.delete(0, stringBuffer.length());
        @this.DOWN_RIGHT = Direction().jinit_Direction("DOWN RIGHT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 7, 0);
        return this;
    }
}

namespace DirectionFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DirectionFactory().jinit_DirectionFactory();
    }

    DirectionFactory@ jcell_instance;
    DirectionFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DirectionFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    DirectionFactory@ getInstance()
    {
        return DirectionFactory::instance;
    }
}

