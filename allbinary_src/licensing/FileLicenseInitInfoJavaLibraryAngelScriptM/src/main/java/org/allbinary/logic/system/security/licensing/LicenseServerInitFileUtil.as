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

class LicenseServerInitFileUtil : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_LicenseServerInitFileUtil;
    OutputStream@ NULL_OUTPUT_STREAM_LicenseServerInitFileUtil;

    // Java field initializers run after the super constructor
    void jfields_LicenseServerInitFileUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_LicenseServerInitFileUtil = CommonStrings::getInstance();
    @this.NULL_OUTPUT_STREAM_LicenseServerInitFileUtil = SimpleFileUtil::nullOutputStream();
    }

    LicenseServerInitFileUtil@ jinit_LicenseServerInitFileUtil()
    {
        this.jfields_LicenseServerInitFileUtil();
        return this;
    }
    

    void init()
    {
        try {
            string filePath = LicenseInitInfoUtil::getInstance().INITFILENAME;
            LicenseInitInfoUtil::getInstance().setFilePath(StringUtil::getInstance().EMPTY_STRING);
            if (FileFactory::getInstance_jstatic().isFile(filePath)) {
                this.logUtil.putF("Using Existing License File", this, this.commonStrings_LicenseServerInitFileUtil.INIT);
            } else {
                this.write();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings_LicenseServerInitFileUtil.EXCEPTION, this, this.commonStrings_LicenseServerInitFileUtil.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void write()
    {
        OutputStream@ fileOutputStream = this.NULL_OUTPUT_STREAM_LicenseServerInitFileUtil;
        {
            Throwable@ jfinally1;
            try {
                try {
            ResourceUtil@ resourceUtil = ResourceUtil::getInstance();
            string filePath = LicenseInitInfoUtil::getInstance().INITFILENAME;
            InputStream@ inputStream = resourceUtil.getResourceAsStream(filePath);
            this.logUtil.putF("Writing Default License File", this, this.commonStrings_LicenseServerInitFileUtil.INIT);
            FileStreamFactory@ fileStreamFactory = FileStreamFactory::getInstance();
            @fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil::getInstance().EMPTY_STRING, filePath);
            int b = 0;
            int index = 0;
            while (true) {
                b = inputStream.read();
                if (b == -1) {
                    break;
                }
                fileOutputStream.write(b);
                index++;
            }
            this.logUtil.putF("Wrote Bytes: " + jstr(index), this, this.commonStrings_LicenseServerInitFileUtil.INIT);
            fileOutputStream.flush();
                } catch {
                    Throwable@ jex1 = jcatch();
                    if (cast<Exception>(jex1) !is null) {
                        Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings_LicenseServerInitFileUtil.EXCEPTION, this, this.commonStrings_LicenseServerInitFileUtil.INIT, e);
                    }
                    else { jthrow(jex1); }
                }
            } catch {
                @jfinally1 = jcatch();
            }
            StreamUtil::getInstance().close(fileOutputStream);
            if (jfinally1 !is null) { jthrow(jfinally1); }
        }
    }
}

