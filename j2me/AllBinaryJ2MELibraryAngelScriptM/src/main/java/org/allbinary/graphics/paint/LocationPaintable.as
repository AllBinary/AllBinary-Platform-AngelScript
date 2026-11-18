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
// package org.allbinary.graphics.paint

class LocationPaintable : JObjectBase, LocationPaintableInterface
{

    LocationPaintable@ jinit_LocationPaintable()
    {
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
    }
}

namespace LocationPaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LocationPaintable().jinit_LocationPaintable();
    }

    LocationPaintable@ jcell_instance;
    LocationPaintable@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LocationPaintable@ value) property { jclinit(); @jcell_instance = value; }
    

    LocationPaintable@ getInstance()
    {
        return LocationPaintable::instance;
    }
}

