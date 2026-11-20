// Generated Code Do Not Modify
// package org.allbinary.configuration

class ApplicationConfiguration : JObjectBase
{
    LogUtil@ logUtil;
    bool fullscreen_ApplicationConfiguration;
    bool showTitleBar_ApplicationConfiguration;
    bool progressBarView_ApplicationConfiguration;

    // Java field initializers run after the super constructor
    void jfields_ApplicationConfiguration()
    {
    @this.logUtil = LogUtil::getInstance();
    this.fullscreen_ApplicationConfiguration = true;
    this.showTitleBar_ApplicationConfiguration = false;
    this.progressBarView_ApplicationConfiguration = false;
    }
    

    ApplicationConfiguration@ jinit_ApplicationConfiguration()
    {
        this.jfields_ApplicationConfiguration();
        try {
            this.read();
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
        this.setFullscreen(true);
        this.setProgressBarView(false);
        this.setShowTitleBar(false);
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    void write()
    {
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
        this.fullscreen_ApplicationConfiguration = fullscreen;
    }
    

    bool isFullscreen()
    {
        return this.fullscreen_ApplicationConfiguration;
    }
    

    void setShowTitleBar(bool showTitleBar)
    {
        this.showTitleBar_ApplicationConfiguration = showTitleBar;
    }
    

    bool isShowTitleBar()
    {
        return this.showTitleBar_ApplicationConfiguration;
    }
    

    void setProgressBarView(bool progressBarView)
    {
        this.progressBarView_ApplicationConfiguration = progressBarView;
    }
    

    bool isProgressBarView()
    {
        return this.progressBarView_ApplicationConfiguration;
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

