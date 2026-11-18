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
// package org.allbinary.game.combat.destroy.event

class DestroyedEventHandler : BasicEventHandler
{
    BasicArrayList@ list_DestroyedEventHandler;

    // Java field initializers run after the super constructor
    void jfields_DestroyedEventHandler()
    {
    @this.list_DestroyedEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    DestroyedEventHandler@ jinit_DestroyedEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_DestroyedEventHandler();
        return this;
    }
    

    void addListener(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer)
    {
        if (!this.list_DestroyedEventHandler.contains(collidableDestroyableDamageableLayer)) {
            this.list_DestroyedEventHandler.add(collidableDestroyableDamageableLayer);
        }
    }
    

    void removeAllListeners()
    {
        this.list_DestroyedEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_DestroyedEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_DestroyedEventHandler.size(); --index >= 0; ) {
            try {
                CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(this.list_DestroyedEventHandler.objectArray[index]);
                collidableDestroyableDamageableLayer.onDestroyed(cast<DestroyedEvent>(eventObject));
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
        }
        BasicEventHandler::fireEvent(eventObject);
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        DestroyedEventListenerInterface@ destroyedEventListenerInterface = cast<DestroyedEventListenerInterface>(eventListenerInterface);
        destroyedEventListenerInterface.onDestroyed(cast<DestroyedEvent>(eventObject));
    }
}

namespace DestroyedEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DestroyedEventHandler().jinit_DestroyedEventHandler();
    }

    DestroyedEventHandler@ jcell_instance;
    DestroyedEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DestroyedEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    DestroyedEventHandler@ getInstance()
    {
        return DestroyedEventHandler::instance;
    }
}

