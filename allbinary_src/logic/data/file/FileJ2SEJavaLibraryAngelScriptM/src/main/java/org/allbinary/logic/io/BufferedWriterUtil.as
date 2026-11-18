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

class BufferedWriterUtil : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    CommonLabels@ commonLabels;
    string REMOVING_OLD;

    // Java field initializers run after the super constructor
    void jfields_BufferedWriterUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.commonLabels = CommonLabels::getInstance();
    this.REMOVING_OLD = "Remove old for overwriting: ";
    }

    BufferedWriterUtil@ jinit_BufferedWriterUtil()
    {
        this.jfields_BufferedWriterUtil();
        return this;
    }
    

    void overwrite(string path, string data)
    {
        AbFile@ abFile = AbFile::createAbFile(path);
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + path, this, this.commonStrings.CREATE);
            abFile.delete();
        } else {
            string name = AbPathData::getInstance().removeNameFromPath(path);
            AbFile@ abFileDirectory = AbFile::createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                StringMaker@ stringBuilder = StringMaker().jinit_StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    void overwrite(AbFile@ abFile, string data)
    {
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + abFile.getPath(), this, this.commonStrings.CREATE);
            abFile.delete();
        } else {
            string name = AbPathData::getInstance().removeNameFromPath(abFile.getAbsolutePath());
            AbFile@ abFileDirectory = AbFile::createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                StringMaker@ stringBuilder = StringMaker().jinit_StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    void write(AbFile@ abFile, string data)
    {
        BufferedWriter@ fileOut = BufferedWriter().jinit_BufferedWriter(FileWriter().jinit_FileWriter(AbFileNativeUtil::get(abFile)));
        fileOut.write(data, 0, int(data.length()));
        fileOut.newLine();
        fileOut.flush();
    }
}

namespace BufferedWriterUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BufferedWriterUtil().jinit_BufferedWriterUtil();
    }

    BufferedWriterUtil@ jcell_instance;
    BufferedWriterUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BufferedWriterUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    BufferedWriterUtil@ getInstance()
    {
        return BufferedWriterUtil::instance;
    }
}

