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
// package org.apache.xmlrpc

class NullXmlRpcHandler : JObjectBase, XmlRpcHandler
{

    NullXmlRpcHandler@ jinit_NullXmlRpcHandler()
    {
        return this;
    }
    

    JObject@ execute(string method, BasicArrayList@ params)
    {
        return NullUtil::getInstance().NULL_OBJECT;
    }
}

namespace NullXmlRpcHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_XML_RPC_HANDLER = NullXmlRpcHandler().jinit_NullXmlRpcHandler();
    }

    NullXmlRpcHandler@ jcell_NULL_XML_RPC_HANDLER;
    NullXmlRpcHandler@ get_NULL_XML_RPC_HANDLER() property { jclinit(); return jcell_NULL_XML_RPC_HANDLER; }
    void set_NULL_XML_RPC_HANDLER(NullXmlRpcHandler@ value) property { jclinit(); @jcell_NULL_XML_RPC_HANDLER = value; }
}

