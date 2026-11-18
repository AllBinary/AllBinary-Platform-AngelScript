// Generated Code Do Not Modify
// package org.allbinary.graph

class E : JObjectBase
{

    E@ jinit_E()
    {
        return this;
    }
    

    E@ newInstance()
    {
        return E::e;
    }
}

namespace E
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_e = E().jinit_E();
    }

    E@ jcell_e;
    E@ get_e() property { jclinit(); return jcell_e; }
    void set_e(E@ value) property { jclinit(); @jcell_e = value; }
}

