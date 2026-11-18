// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABCustomItem : JObjectBase
{
    

    ABCustomItem@ jinit_ABCustomItem(string label, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        return this;
    }
    

    void setOwner(Screen@ owner)
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
    }
    

    void paintUnselected(Graphics@ graphics, int x, int y)
    {
    }
    

    bool isFocusable()
    {
        return false;
    }
    

    string getLabel()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    void setLabel(string label)
    {
    }
    

    int getHeight()
    {
        return 0;
    }
    

    void setHeight(int height)
    {
    }
    

    float getValue()
    {
        return 0.0f;
    }
    

    void setValue(float value)
    {
    }
    

    int getMinimumWidth()
    {
        return 0;
    }
    

    int getMinimumHeight()
    {
        return 0;
    }
    

    void preMeasurement(Graphics@ graphics)
    {
    }
}

namespace ABCustomItem
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CUSTOM_ITEM = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_CUSTOM_ITEM;
    JObject@ get_NULL_CUSTOM_ITEM() property { jclinit(); return jcell_NULL_CUSTOM_ITEM; }
    void set_NULL_CUSTOM_ITEM(JObject@ value) property { jclinit(); @jcell_NULL_CUSTOM_ITEM = value; }
    

    ABCustomItem@ getNullInstance()
    {
        if (ABCustomItem::NULL_CUSTOM_ITEM is NullUtil::getInstance().NULL_OBJECT) {
            @ABCustomItem::NULL_CUSTOM_ITEM = ABCustomItem().jinit_ABCustomItem(StringUtil::getInstance().EMPTY_STRING, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<ABCustomItem>(ABCustomItem::NULL_CUSTOM_ITEM);
    }
}

