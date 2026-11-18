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

class PartnerIdentifierFileUtil : JObjectBase
{
    LogUtil@ logUtil;
    string FILE_NAME;

    // Java field initializers run after the super constructor
    void jfields_PartnerIdentifierFileUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    this.FILE_NAME = "partner.txt";
    }

    PartnerIdentifierFileUtil@ jinit_PartnerIdentifierFileUtil()
    {
        this.jfields_PartnerIdentifierFileUtil();
        return this;
    }
    

    string get()
    {
        try {
            ResourceUtil@ resourceUtil = ResourceUtil::getInstance();
            InputStream@ inputStream = resourceUtil.getResourceAsStream(this.FILE_NAME);
            InputStreamReader@ inputStreamReader = InputStreamReader().jinit_InputStreamReader(inputStream);
            uint16[]@ chars = array<uint16>(30);
            int size = inputStreamReader.read(chars);
            string partnerString = StringUtil::getInstance().EMPTY_STRING;
            if (size > 0) {
                partnerString = String::newString(chars, 0, size);
            }
            inputStreamReader.close();
            return partnerString;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET, e);
            return StringUtil::getInstance().NULL_STRING;
            }
            else { jthrow(jex0); }
        }
        return "";
    }
}

namespace PartnerIdentifierFileUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PartnerIdentifierFileUtil().jinit_PartnerIdentifierFileUtil();
    }

    PartnerIdentifierFileUtil@ jcell_instance;
    PartnerIdentifierFileUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PartnerIdentifierFileUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PartnerIdentifierFileUtil@ getInstance()
    {
        return PartnerIdentifierFileUtil::instance;
    }
}

