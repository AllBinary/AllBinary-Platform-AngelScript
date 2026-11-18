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
// package org.allbinary.game.layer.special

class AnalogInputBuilder : JObjectBase
{

    AnalogInputBuilder@ jinit_AnalogInputBuilder()
    {
        return this;
    }
    

    void disable(GameInputProcessor@[]@ inputProcessorArray, CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer)
    {
        @inputProcessorArray[Canvas::UP] = SpecialUpGameInputProcessor().jinit_SpecialUpGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::DOWN] = SpecialDownGameInputProcessor().jinit_SpecialDownGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::RIGHT] = SpecialRightGameInputProcessor().jinit_SpecialRightGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::LEFT] = SpecialLeftGameInputProcessor().jinit_SpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::KEY_NUM0] = Special1GameInputProcessor().jinit_Special1GameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::KEY_NUM5] = Special3GameInputProcessor().jinit_Special3GameInputProcessor(collidableDestroyableDamageableLayer);
    }
    

    void enable(GameInputProcessor@[]@ inputProcessorArray, CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer)
    {
        @inputProcessorArray[Canvas::UP] = SpecialAnalogUpGameInputProcessor().jinit_SpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::DOWN] = SpecialAnalogDownGameInputProcessor().jinit_SpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::RIGHT] = SpecialAnalogRightGameInputProcessor().jinit_SpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::LEFT] = SpecialAnalogLeftGameInputProcessor().jinit_SpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor().jinit_SpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer);
        @inputProcessorArray[Canvas::KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor().jinit_SpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer);
    }
}

namespace AnalogInputBuilder
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnalogInputBuilder().jinit_AnalogInputBuilder();
    }

    AnalogInputBuilder@ jcell_instance;
    AnalogInputBuilder@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnalogInputBuilder@ value) property { jclinit(); @jcell_instance = value; }
    

    AnalogInputBuilder@ getInstance()
    {
        return AnalogInputBuilder::instance;
    }
}

