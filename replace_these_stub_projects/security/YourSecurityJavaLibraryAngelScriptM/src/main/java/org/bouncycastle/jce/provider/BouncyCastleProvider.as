// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider

class BouncyCastleProvider : Provider
{
    

    BouncyCastleProvider@ jinit_BouncyCastleProvider()
    {
        this.jinit_Provider(BouncyCastleProvider::PROVIDER_NAME, 1.41, BouncyCastleProvider::info);
        return this;
    }
    

    void setParameter(string parameterName, JObject@ parameter)
    {
    }
}

namespace BouncyCastleProvider
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_info = "BouncyCastle Security Provider v1.41";
        jcell_PROVIDER_NAME = "BC";
    }

    string jcell_info;
    string get_info() property { jclinit(); return jcell_info; }
    void set_info(string value) property { jclinit(); jcell_info = value; }

    string jcell_PROVIDER_NAME;
    string get_PROVIDER_NAME() property { jclinit(); return jcell_PROVIDER_NAME; }
    void set_PROVIDER_NAME(string value) property { jclinit(); jcell_PROVIDER_NAME = value; }
}

