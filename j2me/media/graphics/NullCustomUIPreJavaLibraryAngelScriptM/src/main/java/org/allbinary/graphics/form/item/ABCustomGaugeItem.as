// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABCustomGaugeItem : ABCustomItem
{
    

    ABCustomGaugeItem@ jinit_ABCustomGaugeItem(string label, int maxValue, int initialValue, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABCustomItem(label, backgroundBasicColor, foregroundBasicColor);
        return this;
    }
}

namespace ABCustomGaugeItem
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GAUGE_ITEM = ABCustomGaugeItem().jinit_ABCustomGaugeItem(StringUtil::getInstance().EMPTY_STRING, 1, 0, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
    }

    ABCustomGaugeItem@ jcell_NULL_GAUGE_ITEM;
    ABCustomGaugeItem@ get_NULL_GAUGE_ITEM() property { jclinit(); return jcell_NULL_GAUGE_ITEM; }
    void set_NULL_GAUGE_ITEM(ABCustomGaugeItem@ value) property { jclinit(); @jcell_NULL_GAUGE_ITEM = value; }
}

