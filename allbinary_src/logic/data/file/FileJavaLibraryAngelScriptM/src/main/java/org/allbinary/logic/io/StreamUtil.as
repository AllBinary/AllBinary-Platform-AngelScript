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
// package org.allbinary.logic.io

class StreamUtil : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_StreamUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    StreamUtil@ jinit_StreamUtil()
    {
        this.jfields_StreamUtil();
        return this;
    }
    

    OutputStream@ get(InputStream@ inputStream, OutputStream@ outputStream, int8[]@ buffer)
    {
        int len = 0;
        while (true) {
            len = inputStream.read(buffer, 0, int(buffer.length()));
            if (len != -1) {
            } else {
                break;
            }
            outputStream.write(buffer, 0, len);
        }
        return outputStream;
    }
    

    int8[]@ getByteArray(InputStream@ inputStream, ByteArrayOutputStream@ outputStream2, int8[]@ byteArray)
    {
        ByteArrayOutputStream@ outputStream = outputStream2;
        {
            Throwable@ jfinally0;
            try {
                try {
            this.get(inputStream, outputStream, byteArray);
            return outputStream.toByteArray();
                } catch {
                    Throwable@ jex0 = jcatch();
                    if (cast<Exception>(jex0) !is null) {
                        Exception@ e = cast<Exception>(jex0);
            jthrow(e);
                    }
                    else { jthrow(jex0); }
                }
            } catch {
                @jfinally0 = jcatch();
            }
            this.close(outputStream);
            if (jfinally0 !is null) { jthrow(jfinally0); }
        }
        return null;
    }
    

    bool close(Closeable@ closeable)
    {
        try {
            if (closeable !is null) {
                closeable.close();
            }
            return true;
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CLOSE, e);
            return false;
            }
            else { jthrow(jex1); }
        }
        return false;
    }
}

namespace StreamUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StreamUtil().jinit_StreamUtil();
    }

    StreamUtil@ jcell_instance;
    StreamUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StreamUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    StreamUtil@ getInstance()
    {
        return StreamUtil::instance;
    }
}

