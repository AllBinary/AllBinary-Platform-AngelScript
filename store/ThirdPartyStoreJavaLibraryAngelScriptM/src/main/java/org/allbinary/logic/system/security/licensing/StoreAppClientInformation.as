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
// package org.allbinary.logic.system.security.licensing

class StoreAppClientInformation : AbeClientInformation, LongArrayIdentifierInterface
{
    int64[]@ longArrayIdentifier_StoreAppClientInformation;
    

    StoreAppClientInformation@ jinit_StoreAppClientInformation(string name, string version, string specialName, string shortName, int64[]@ longArrayIdentifier)
    {
        this.jinit_AbeClientInformation(name, version, specialName, shortName);
        @this.longArrayIdentifier_StoreAppClientInformation = longArrayIdentifier;
        return this;
    }
    

    int64[]@ getLongArrayIdentifier()
    {
        return this.longArrayIdentifier_StoreAppClientInformation;
    }
}

