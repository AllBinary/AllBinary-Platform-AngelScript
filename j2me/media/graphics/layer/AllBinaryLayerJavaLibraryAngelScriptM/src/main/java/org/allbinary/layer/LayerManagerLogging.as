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
// package org.allbinary.layer

class LayerManagerLogging : LayerManagerLoggingBase
{
    LogUtil@ logUtil;
    StringMaker@ stringBuilder_LayerManagerLogging;
    string APPEND_LayerManagerLogging;
    string APPEND__LayerManagerLogging;
    string _AT__LayerManagerLogging;
    string ATTEMPT_REMOVE__LayerManagerLogging;
    string REMOVE__LayerManagerLogging;
    string REMOVE_LayerManagerLogging;
    string DID_NOT_REMOVE_LayerManagerLogging;
    string CLEAR_LayerManagerLogging;

    // Java field initializers run after the super constructor
    void jfields_LayerManagerLogging()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.stringBuilder_LayerManagerLogging = StringMaker().jinit_StringMaker();
    this.APPEND_LayerManagerLogging = "append";
    this.APPEND__LayerManagerLogging = " append: ";
    this._AT__LayerManagerLogging = " at: ";
    this.ATTEMPT_REMOVE__LayerManagerLogging = " Remove Attempt: ";
    this.REMOVE__LayerManagerLogging = " Remove: ";
    this.REMOVE_LayerManagerLogging = "remove";
    this.DID_NOT_REMOVE_LayerManagerLogging = " Did not remove: ";
    this.CLEAR_LayerManagerLogging = " Clear List";
    }

    LayerManagerLogging@ jinit_LayerManagerLogging()
    {
        this.jinit_LayerManagerLoggingBase();
        this.jfields_LayerManagerLogging();
        return this;
    }
    

    void append(AllBinaryLayer@ layerInterface)
    {
        this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
        this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.APPEND__LayerManagerLogging).append(layerInterface.getName()).toString(), this, this.APPEND_LayerManagerLogging);
    }
    

    void appendAt(AllBinaryLayer@ layerInterface, int index)
    {
        this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
        this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.APPEND__LayerManagerLogging).append(layerInterface.getName()).append(this._AT__LayerManagerLogging).appendint(index).toString(), this, this.APPEND_LayerManagerLogging);
    }
    

    void remove(AllBinaryLayer@ layerInterface)
    {
        if (layerInterface is null) {
            this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
            this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE__LayerManagerLogging).append(StringUtil::getInstance().toString(layerInterface)).toString(), this, this.REMOVE_LayerManagerLogging);
        } else {
            this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
            this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE__LayerManagerLogging).append(layerInterface.getName()).toString(), this, this.REMOVE_LayerManagerLogging);
        }
    }
    

    void removeResult(ABLayerManager@ layerManager, AllBinaryLayer@ layerInterface, bool result)
    {
        if (layerInterface is null) {
            this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
            this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.REMOVE__LayerManagerLogging).append(StringUtil::getInstance().toString(layerInterface)).toString(), this, this.REMOVE_LayerManagerLogging);
        } else if (result) {
            if (LayerManagerLogging::removeFailed) {
                this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
                this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.REMOVE__LayerManagerLogging).append(layerInterface.getName()).toString(), this, this.REMOVE_LayerManagerLogging);
            }
        } else {
            this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
            this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.DID_NOT_REMOVE_LayerManagerLogging).append(layerInterface.getName()).toString(), this, this.REMOVE_LayerManagerLogging);
            LayerManagerLogging::removeFailed = true;
        }
    }
    

    void log(ABLayerManager@ layerManager)
    {
        this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
        int size = layerManager.getSize();
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        this.stringBuilder_LayerManagerLogging.append(Integer::toHexString(TsUtil::getInstance().hashCode(layerManager))).append(commonSeps.COLON_SEP);
        this.stringBuilder_LayerManagerLogging.appendint(size).append(commonSeps.COLON_SEP);
        AllBinaryLayer@ allBinaryLayer;
        for (int index = 0; index < size; index++) {
            @allBinaryLayer = (cast<AllBinaryLayer>(layerManager.getLayerAt(index)));
            this.stringBuilder_LayerManagerLogging.append(allBinaryLayer.getName()).append(commonSeps.COMMA);
        }
        this.logUtil.putF(this.stringBuilder_LayerManagerLogging.toString(), this, this.REMOVE_LayerManagerLogging);
    }
    

    void clear()
    {
        this.stringBuilder_LayerManagerLogging.delete(0, this.stringBuilder_LayerManagerLogging.length());
        this.logUtil.putF(this.stringBuilder_LayerManagerLogging.appendint(TsUtil::getInstance().hashCode(this)).append(this.CLEAR_LayerManagerLogging).toString(), this, this.CLEAR_LayerManagerLogging);
    }
}

namespace LayerManagerLogging
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerManagerLogging().jinit_LayerManagerLogging();
        jcell_removeFailed = false;
    }

    LayerManagerLogging@ jcell_instance;
    LayerManagerLogging@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerManagerLogging@ value) property { jclinit(); @jcell_instance = value; }

    bool jcell_removeFailed;
    bool get_removeFailed() property { jclinit(); return jcell_removeFailed; }
    void set_removeFailed(bool value) property { jclinit(); jcell_removeFailed = value; }
    

    LayerManagerLogging@ getInstance()
    {
        return LayerManagerLogging::instance;
    }
}

