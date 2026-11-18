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
// package org.allbinary.business.init

class LicenseInitInfoUtil : JObjectBase
{
    LogUtil@ logUtil;
    StringUtil@ stringUtil;
    string INITFILENAME;
    string ABOUT;
    string PRIVACY_POLICY;
    string filePath;

    // Java field initializers run after the super constructor
    void jfields_LicenseInitInfoUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.stringUtil = StringUtil::getInstance();
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.filePath = this.stringUtil.EMPTY_STRING;
    }

    LicenseInitInfoUtil@ jinit_LicenseInitInfoUtil()
    {
        this.jfields_LicenseInitInfoUtil();
        return this;
    }
    

    void setFilePath(string filePath)
    {
        this.filePath = filePath;
    }
    

    void write(LicenseInitInfo@ initData)
    {
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS::getMainPath() + PATH_GLOBALS::getInstance().INIT_PATH;
        }
        try {
            TsUtil@ tsUtil = TsUtil::getInstance();
            AbDataOutputStream@ dataOutputStream = DataOutputStreamFactory::getInstance_jstatic().getInstance(this.filePath, this.INITFILENAME);
            int8[]@ licenseIdCrypted = tsUtil.getByteArray(WeakCrypt().jinit_WeakCrypt(1).encrypt(initData.getLicenseId()));
            dataOutputStream.writeUTF(DatabaseEncoder::encode(licenseIdCrypted));
            int numberOfLicenseServers = initData.getNumberOfServers();
            dataOutputStream.writeInt(numberOfLicenseServers);
            int8[]@ licenseServerCrypted;
            for (int index = 0; index < numberOfLicenseServers; index++) {
                @licenseServerCrypted = tsUtil.getByteArray(WeakCrypt().jinit_WeakCrypt(3).encrypt(initData.getServer(index)));
                dataOutputStream.writeUTF(DatabaseEncoder::encode(licenseServerCrypted));
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put("Command Failed: " + this.INITFILENAME, this, "write", e);
            FileStreamFactory::getInstance().delete(this.filePath, this.INITFILENAME);
            jthrow(e);
            }
            else { jthrow(jex0); }
        }
    }
    

    LicenseInitInfo@ read()
    {
        return this.readAgain(0);
    }
    

    LicenseInitInfo@ readAgain(int initializeCounter)
    {
        string METHOD_NAME = "readAgain";
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS::getMainPath() + PATH_GLOBALS::getInstance().INIT_PATH;
        }
        try {
            this.logUtil.putF("LicenseInitInfo File: " + this.INITFILENAME, this, METHOD_NAME);
            FileStreamFactory@ fileStreamFactory = FileStreamFactory::getInstance();
            AbFileInputStream@ iFile = fileStreamFactory.getFileInputStreamInstance(this.filePath, this.INITFILENAME);
            if (iFile !is null) {
                AbDataInputStream@ iData = AbDataInputStream().jinit_AbDataInputStream(iFile);
                LicenseInitInfo@ initInfo = LicenseInitInfo().jinit_LicenseInitInfo();
                int8[]@ decodedByteArray = DatabaseEncoder::decode(iData.readUTF());
                string licenseIdDecoded = String::newString(decodedByteArray);
                initInfo.setLicenseId(WeakCrypt().jinit_WeakCrypt(1).decrypt(licenseIdDecoded));
                int numberOfLicenseServers = iData.readInt();
                string NEXT_FILE = StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().NEXT).append(" License Server From File: ").toString();
                string licenseServerDecoded = "";
                for (int index = 0; index < numberOfLicenseServers; index++) {
                    @decodedByteArray = DatabaseEncoder::decode(iData.readUTF());
                    licenseServerDecoded = String::newString(decodedByteArray);
                    initInfo.setServer(WeakCrypt().jinit_WeakCrypt(3).decrypt(licenseServerDecoded), index);
                    this.logUtil.putF(NEXT_FILE + initInfo.getServer(index), this, METHOD_NAME);
                }
                return initInfo;
            } else {
                jthrow(Exception().jinit_Exception("Could Not Load License InitInfo: " + this.INITFILENAME));
            }
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            try {
                this.logUtil.put("Command Failed: " + this.INITFILENAME, this, METHOD_NAME, e);
            } catch {
                Throwable@ jex2 = jcatch();
                if (cast<Exception>(jex2) !is null) {
                    Exception@ e2 = cast<Exception>(jex2);
                this.logUtil.put("LicenseInitInfo Read Retry: " + this.INITFILENAME, this, "readAgain()", e2);
                }
                else { jthrow(jex2); }
            }
            jthrow(Exception().jinit_Exception("LicenseInitInfo Read Error: " + this.INITFILENAME));
            }
            else { jthrow(jex1); }
        }
        return null;
    }
    

    string getFilePath()
    {
        return this.filePath;
    }
}

namespace LicenseInitInfoUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LicenseInitInfoUtil().jinit_LicenseInitInfoUtil();
    }

    LicenseInitInfoUtil@ jcell_instance;
    LicenseInitInfoUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LicenseInitInfoUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LicenseInitInfoUtil@ getInstance()
    {
        return LicenseInitInfoUtil::instance;
    }
}

