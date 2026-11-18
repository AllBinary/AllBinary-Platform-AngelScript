/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.displayable.canvas

class NullAllBinaryGameCanvas : JObjectBase, AllBinaryGameCanvasInterface
{

    NullAllBinaryGameCanvas@ jinit_NullAllBinaryGameCanvas()
    {
        return this;
    }
    

    AllBinaryGameLayerManager@ getLayerManager()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    void addCommand(Command@ cmd)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    int getHeight()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    int getWidth()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    void removeCommand(Command@ cmd)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    void setCommandListener(CommandListener@ l)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
}

namespace NullAllBinaryGameCanvas
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ALLBINARY_GAME_CANVAS = NullAllBinaryGameCanvas().jinit_NullAllBinaryGameCanvas();
    }

    NullAllBinaryGameCanvas@ jcell_NULL_ALLBINARY_GAME_CANVAS;
    NullAllBinaryGameCanvas@ get_NULL_ALLBINARY_GAME_CANVAS() property { jclinit(); return jcell_NULL_ALLBINARY_GAME_CANVAS; }
    void set_NULL_ALLBINARY_GAME_CANVAS(NullAllBinaryGameCanvas@ value) property { jclinit(); @jcell_NULL_ALLBINARY_GAME_CANVAS = value; }
}

