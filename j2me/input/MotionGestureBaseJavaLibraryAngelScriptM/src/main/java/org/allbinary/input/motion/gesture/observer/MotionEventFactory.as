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
// package org.allbinary.input.motion.gesture.observer

class MotionEventFactory : JObjectBase, AllBinaryEventObjectFactoryInterface
{
    JObject@ source_MotionEventFactory;
    int id_MotionEventFactory;
    

    MotionEventFactory@ jinit_MotionEventFactory(JObject@ source, int id)
    {
        @this.source_MotionEventFactory = source;
        this.id_MotionEventFactory = id;
        MotionEventFactory::index = TouchMotionGestureFactory::getInstance().LAST_MOTION.getId();
        return this;
    }
    

    AllBinaryEventObject@ getInstance()
    {
        InputFactory@ inputFactory = InputFactory::getInstance();
        Input@ input = inputFactory.getInstanceById(MotionEventFactory::jpostAdd_index(1));
        if (input is inputFactory.NO_INPUT) {
            return MotionGestureEvent().jinit_MotionGestureEvent(this.source_MotionEventFactory, this.id_MotionEventFactory, cast<MotionGestureInput>(TouchMotionGestureFactory::getInstance().NO_MOTION));
        } else {
            return MotionGestureEvent().jinit_MotionGestureEvent(this.source_MotionEventFactory, this.id_MotionEventFactory, cast<MotionGestureInput>(input));
        }
        return null;
    }
}

namespace MotionEventFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_index = 0;
    }

    int jcell_index;
    int get_index() property { jclinit(); return jcell_index; }
    void set_index(int value) property { jclinit(); jcell_index = value; }
    int jpostAdd_index(int delta) { jclinit(); int old = jcell_index; jcell_index = int(old + delta); return old; }
}

