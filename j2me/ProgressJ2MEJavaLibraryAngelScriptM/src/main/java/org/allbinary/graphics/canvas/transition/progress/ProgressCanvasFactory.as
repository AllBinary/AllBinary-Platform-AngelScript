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
// package org.allbinary.graphics.canvas.transition.progress

class ProgressCanvasFactory : JObjectBase
{

    ProgressCanvasFactory@ jinit_ProgressCanvasFactory()
    {
        return this;
    }
}

namespace ProgressCanvasFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_PROGRESS_FORM_SCREEN = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_PROGRESS_FORM_SCREEN;
    JObject@ get_PROGRESS_FORM_SCREEN() property { jclinit(); return jcell_PROGRESS_FORM_SCREEN; }
    void set_PROGRESS_FORM_SCREEN(JObject@ value) property { jclinit(); @jcell_PROGRESS_FORM_SCREEN = value; }
    

    ProgressCanvas@ getInstance()
    {
        if (ProgressCanvasFactory::PROGRESS_FORM_SCREEN is NullUtil::getInstance().NULL_OBJECT) {
            @ProgressCanvasFactory::PROGRESS_FORM_SCREEN = ProgressCanvas().jinit_ProgressCanvas(StringUtil::getInstance().EMPTY_STRING, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<ProgressCanvas>(ProgressCanvasFactory::PROGRESS_FORM_SCREEN);
    }
    

    PaintableInterface@ getLazyInstance()
    {
        return NullPaintable::getInstance();
    }
}

