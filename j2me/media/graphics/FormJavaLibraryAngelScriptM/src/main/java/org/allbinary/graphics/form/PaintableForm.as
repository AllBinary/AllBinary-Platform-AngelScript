// Generated Code Do Not Modify
// package org.allbinary.graphics.form

class PaintableForm : ABCustomForm
{
    CanvasStrings@ canvasStrings;
    Rectangle@ rectangle;
    int x;
    int y;
    FormType@ formType;

    // Java field initializers run after the super constructor
    void jfields_PaintableForm()
    {
    @this.canvasStrings = CanvasStrings::getInstance();
    @this.rectangle = RectangleFactory::SINGLETON;
    
    
    @this.formType = FormTypeFactory::getInstance().NULL_FORM_TYPE;
    }
    

    PaintableForm@ jinit_PaintableForm(string title, ABCustomItem@[]@ items, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ABCustomForm(title, items, backgroundBasicColor, foregroundBasicColor);
        this.jfields_PaintableForm();
        this.setSelectedIndex(0);
        return this;
    }
    

    void init(Rectangle@ rectangle, FormType@ formType)
    {
        @this.rectangle = rectangle;
        GPoint@ point = this.rectangle.getPoint();
        this.x = point.getX();
        this.y = point.getY();
        @this.formType = formType;
    }
    

    int getWidth()
    {
        return this.rectangle.getWidth();
    }
}

namespace PaintableForm
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PAINTABLE_FORM = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_PAINTABLE_FORM;
    JObject@ get_NULL_PAINTABLE_FORM() property { jclinit(); return jcell_NULL_PAINTABLE_FORM; }
    void set_NULL_PAINTABLE_FORM(JObject@ value) property { jclinit(); @jcell_NULL_PAINTABLE_FORM = value; }
    

    PaintableForm@ getNullPaintableForm()
    {
        if (PaintableForm::NULL_PAINTABLE_FORM is NullUtil::getInstance().NULL_OBJECT) {
            @PaintableForm::NULL_PAINTABLE_FORM = PaintableForm().jinit_PaintableForm(StringUtil::getInstance().EMPTY_STRING, array<ABCustomItem@>(0), BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<PaintableForm>(PaintableForm::NULL_PAINTABLE_FORM);
    }
}

