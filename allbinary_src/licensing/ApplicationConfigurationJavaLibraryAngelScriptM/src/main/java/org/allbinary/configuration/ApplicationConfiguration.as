// Generated Code Do Not Modify
// package org.allbinary.configuration

class ApplicationConfiguration : JObjectBase
{
    LogUtil@ logUtil;
    bool fullscreen;
    bool showTitleBar;
    bool progressBarView;
    string FILE;

    // Java field initializers run after the super constructor
    void jfields_ApplicationConfiguration()
    {
    @this.logUtil = LogUtil::getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    this.FILE = "ReloadConfiguration.dat";
    }
    

    ApplicationConfiguration@ jinit_ApplicationConfiguration()
    {
        this.jfields_ApplicationConfiguration();
        try {
            if (FileFactory::getInstance_jstatic().isFile(this.FILE)) {
                this.read();
            } else {
                this.write();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void read()
    {
        FileStreamFactory@ fileInputStreamFactory = FileStreamFactory::getInstance();
        InputStream@ fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil::getInstance().EMPTY_STRING, this.FILE);
        AbDataInputStream@ dataInputStream = AbDataInputStream().jinit_AbDataInputStream(fileInputStream);
        int fullScreen = dataInputStream.readInt();
        if (fullScreen == 0) {
            this.setFullscreen(false);
        } else if (fullScreen == 1) {
            this.setFullscreen(true);
        } else {
            jthrow(Exception().jinit_Exception("Invalid FullScreen ActivityConfiguration"));
        }
        int progressBarView = dataInputStream.readInt();
        if (progressBarView == 0) {
            this.setProgressBarView(false);
        } else if (progressBarView == 1) {
            this.setProgressBarView(true);
        } else {
            jthrow(Exception().jinit_Exception("Invalid ProgressBarView ActivityConfiguration"));
        }
        int showTitleBar = dataInputStream.readInt();
        if (showTitleBar == 0) {
            this.setShowTitleBar(false);
        } else if (showTitleBar == 1) {
            this.setShowTitleBar(true);
        } else {
            jthrow(Exception().jinit_Exception("Invalid ShowTitleBar ActivityConfiguration"));
        }
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    void write()
    {
        Closeable@ closeable = NullCloseable::NULL_CLOSEABLE;
        {
            Throwable@ jfinally1;
            try {
                try {
            this.logUtil.putF("Write Configuration: " + this.toString(), this, "write");
            FileStreamFactory@ fileInputStreamFactory = FileStreamFactory::getInstance();
            OutputStream@ fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil::getInstance().EMPTY_STRING, this.FILE);
            AbDataOutputStream@ dataOutputStream = AbDataOutputStream().jinit_AbDataOutputStream(fileOutputStream);
            @closeable = dataOutputStream;
            if (this.isFullscreen()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isProgressBarView()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isShowTitleBar()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.flush();
                } catch {
                    Throwable@ jex1 = jcatch();
                    if (cast<Exception>(jex1) !is null) {
                        Exception@ e = cast<Exception>(jex1);
            jthrow(e);
                    }
                    else { jthrow(jex1); }
                }
            } catch {
                @jfinally1 = jcatch();
            }
            StreamUtil::getInstance().close(closeable);
            if (jfinally1 !is null) { jthrow(jfinally1); }
        }
    }
    

    void update(Feature@ gameFeature)
    {
        if (gameFeature is MainFeatureFactory::getInstance().FULL_SCREEN) {
            Features@ features = Features::getInstance();
            if (features.isFeature(gameFeature)) {
                if (!this.isFullscreen()) {
                    this.setFullscreen(true);
                    this.write();
                }
            } else {
                if (this.isFullscreen()) {
                    this.setFullscreen(false);
                    this.write();
                }
            }
        }
    }
    

    void setFullscreen(bool fullscreen)
    {
        this.fullscreen = fullscreen;
    }
    

    bool isFullscreen()
    {
        return this.fullscreen;
    }
    

    void setShowTitleBar(bool showTitleBar)
    {
        this.showTitleBar = showTitleBar;
    }
    

    bool isShowTitleBar()
    {
        return this.showTitleBar;
    }
    

    void setProgressBarView(bool progressBarView)
    {
        this.progressBarView = progressBarView;
    }
    

    bool isProgressBarView()
    {
        return this.progressBarView;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("isFullscreen: ");
        stringBuffer.appendboolean(this.isFullscreen());
        stringBuffer.append(" isProgressBarView: ");
        stringBuffer.appendboolean(this.isProgressBarView());
        stringBuffer.append(" isShowTitleBar: ");
        stringBuffer.appendboolean(this.isShowTitleBar());
        return stringBuffer.toString();
    }
}

namespace ApplicationConfiguration
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    ApplicationConfiguration@ getInstance()
    {
        if (ApplicationConfiguration::instance is NullUtil::getInstance().NULL_OBJECT) {
            @ApplicationConfiguration::instance = ApplicationConfiguration().jinit_ApplicationConfiguration();
        }
        return cast<ApplicationConfiguration>(ApplicationConfiguration::instance);
    }
}

