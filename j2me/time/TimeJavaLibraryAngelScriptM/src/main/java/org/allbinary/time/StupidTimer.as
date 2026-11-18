// Generated Code Do Not Modify
// package org.allbinary.time

class StupidTimer : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    NullUtil@ nullUtil;
    ThreadObjectUtil@ threadObjectUtil;

    // Java field initializers run after the super constructor
    void jfields_StupidTimer()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.nullUtil = NullUtil::getInstance();
    @this.threadObjectUtil = ThreadObjectUtil::getInstance();
    }

    StupidTimer@ jinit_StupidTimer()
    {
        this.jfields_StupidTimer();
        return this;
    }
    

    bool visitBool(Visitor@ visitorInterface)
    {
        JBoolean@ result = cast<JBoolean>(visitorInterface.visit(this.nullUtil.NULL_OBJECT));
        bool result2 = result.booleanValue();
        return result2;
    }
    

    void visit(Visitor@ visitorInterface, TimeDelayHelper@ timeDelayHelper)
    {
        bool tookTooLong = false;
        string WAITING_FOR = "Waiting for: ";
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(WAITING_FOR).append(StringUtil::getInstance().toString(visitorInterface)).toString(), this, this.commonStrings.VISIT);
        int index = 0;
        while (this.visitBool(visitorInterface)) {
            if (index % 10 == 0) {
                PreLogUtil::put(StringMaker().jinit_StringMaker().append(WAITING_FOR).appendint(index).toString(), this, this.commonStrings.VISIT);
            }
            index++;
            {
                this.threadObjectUtil.waitObjectFor(this, 1800);
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("Took Too Long: ").append(StringUtil::getInstance().toString(visitorInterface)).toString()));
        } else {
            PreLogUtil::put(timeDelayHelper.toString(), this, this.commonStrings.VISIT);
        }
    }
    

    void stopWaiting()
    {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
}

