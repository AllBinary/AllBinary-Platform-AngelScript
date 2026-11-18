// Generated Code Do Not Modify
// package org.apache.xmlrpc

class XmlRpcClient : JObjectBase, XmlRpcHandler
{
    URL@ url;
    

    XmlRpcClient@ jinit_XmlRpcClient(string url)
    {
        this.url = URL().jinit_URL(url);
        return this;
    }
    

    URL@ getURL()
    {
        return this.url;
    }
    

    void setBasicAuthentication(string user, string password)
    {
    }
    

    JObject@ execute(string method, BasicArrayList@ params)
    {
        return NullUtil::getInstance().NULL_OBJECT;
    }
    

    JObject@ executeWithCrypt(string method, BasicArrayList@ params, CryptInterface@ cryptInterface)
    {
        return NullUtil::getInstance().NULL_OBJECT;
    }
}

