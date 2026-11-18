// Generated Code Do Not Modify
// package org.allbinary.graphics.form

class ABCustomForm : CustomScreen
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_ABCustomForm()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    }
    

    ABCustomForm@ jinit_ABCustomForm(string title, ABCustomItem@[]@ items, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CustomScreen();
        this.jfields_ABCustomForm();
        return this;
    }
    

    ABCustomItem@[]@ getAllitems()
    {
        return array<ABCustomItem@>(0);
    }
    

    int size()
    {
        return 0;
    }
    

    void setSelectedIndex(int index)
    {
    }
    

    int getSelectedIndex()
    {
        return 0;
    }
    

    void deleteAll()
    {
    }
    

    void delete(int itemNum)
    {
    }
    

    int append(ABCustomItem@ item)
    {
        return -1;
    }
    

    void insert(int itemNum, ABCustomItem@ item)
    {
    }
    

    void set(int itemNum, ABCustomItem@ item)
    {
    }
    

    ABCustomItem@ get(int itemNum)
    {
        return ABCustomItem::getNullInstance();
    }
    

    int getWidth()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    string getTitle()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
}

