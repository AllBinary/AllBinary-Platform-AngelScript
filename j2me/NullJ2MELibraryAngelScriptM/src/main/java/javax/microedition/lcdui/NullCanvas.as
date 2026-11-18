// Generated Code Do Not Modify
// package javax.microedition.lcdui

class NullCanvas : Canvas
{
    

    NullCanvas@ jinit_NullCanvas()
    {
        this.jinit_Canvas();
        return this;
    }
    

    void setFullScreenMode(bool mode)
    {
    }
    

    void sizeChanged(int w, int h)
    {
    }
    

    Stack@ getCommandStack()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    bool isCommand(Command@ command)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return false;
    }
    

    void addCommand(Command@ command)
    {
    }
    

    void removeCommand(Command@ command)
    {
    }
    

    void removeAllCommands()
    {
    }
    

    void setCommandListener(CommandListener@ l)
    {
    }
    

    CommandListener@ getCustomCommandListener()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    bool isPaused()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return false;
    }
    

    void removePauseCommand()
    {
    }
    

    void pause()
    {
    }
    

    void unPause()
    {
    }
    

    void process()
    {
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void destroy()
    {
    }
    

    void setPaused(bool isPaused)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    void pointerDragged(int x, int y)
    {
    }
    

    void pointerPressed(int x, int y)
    {
    }
    

    void pointerReleased(int x, int y)
    {
    }
}

namespace NullCanvas
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CANVAS = NullCanvas().jinit_NullCanvas();
    }

    NullCanvas@ jcell_NULL_CANVAS;
    NullCanvas@ get_NULL_CANVAS() property { jclinit(); return jcell_NULL_CANVAS; }
    void set_NULL_CANVAS(NullCanvas@ value) property { jclinit(); @jcell_NULL_CANVAS = value; }
}

