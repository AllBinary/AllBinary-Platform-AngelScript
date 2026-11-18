/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
// package org.allbinary.graphics.displayable.screen

class AboutPaintableFactory : JObjectBase
{
    Paintable@[]@ paintableArray;

    // Java field initializers run after the super constructor
    void jfields_AboutPaintableFactory()
    {
    @this.paintableArray = array<Paintable@> = {NullPaintable::getInstance()};
    }
    

    AboutPaintableFactory@ jinit_AboutPaintableFactory()
    {
        this.jfields_AboutPaintableFactory();
        string[]@ INFO = array<string> = {"Built with the", "AllBinary Platform", StringUtil::getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"};
        string[]@ DEVELOPERS = array<string> = {"Developed By:", "Travis Berthelot"};
        @this.paintableArray = AboutPaintable::getInstance(INFO, DEVELOPERS).getPaintableArrayInstance();
        return this;
    }
}

namespace AboutPaintableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AboutPaintableFactory().jinit_AboutPaintableFactory();
    }

    AboutPaintableFactory@ jcell_instance;
    AboutPaintableFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AboutPaintableFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AboutPaintableFactory@ getInstance()
    {
        return AboutPaintableFactory::instance;
    }
}

