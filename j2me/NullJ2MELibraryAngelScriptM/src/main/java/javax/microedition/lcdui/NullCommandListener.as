// Generated Code Do Not Modify
// package javax.microedition.lcdui

class NullCommandListener : JObjectBase, CommandListener
{

    NullCommandListener@ jinit_NullCommandListener()
    {
        return this;
    }
    

    void commandAction(Command@ c, Displayable@ d)
    {
    }
}

namespace NullCommandListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COMMAND_LISTENER = NullCommandListener().jinit_NullCommandListener();
    }

    NullCommandListener@ jcell_NULL_COMMAND_LISTENER;
    NullCommandListener@ get_NULL_COMMAND_LISTENER() property { jclinit(); return jcell_NULL_COMMAND_LISTENER; }
    void set_NULL_COMMAND_LISTENER(NullCommandListener@ value) property { jclinit(); @jcell_NULL_COMMAND_LISTENER = value; }
}

