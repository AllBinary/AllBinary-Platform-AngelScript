// Generated Code Do Not Modify
// package org.allbinary.graphics.form

class MultipleScrollSelectionHorizontalForm : ScrollSelectionForm, UpdateMyFontInterface
{
    Paintable@ rectPaintable_MultipleScrollSelectionHorizontalForm;
    ItemIndexPaintable@ multipleScrollSelectionHorizontalFormTypeItemIndexPaintable_MultipleScrollSelectionHorizontalForm;
    int backgroundColor_MultipleScrollSelectionHorizontalForm;
    MyFontProcessor@ myFontProcessor_MultipleScrollSelectionHorizontalForm;
    bool logged_MultipleScrollSelectionHorizontalForm;
    int fontHeight_MultipleScrollSelectionHorizontalForm;

    // Java field initializers run after the super constructor
    void jfields_MultipleScrollSelectionHorizontalForm()
    {
    @this.rectPaintable_MultipleScrollSelectionHorizontalForm = NullPaintable::getInstance();
    @this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable_MultipleScrollSelectionHorizontalForm = ItemIndexPaintable::getInstance();
    this.backgroundColor_MultipleScrollSelectionHorizontalForm = BasicColorFactory::getInstance().TRANSPARENT_GREY.intValue();
    @this.myFontProcessor_MultipleScrollSelectionHorizontalForm = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    this.logged_MultipleScrollSelectionHorizontalForm = false;
    this.fontHeight_MultipleScrollSelectionHorizontalForm = 0;
    }
    

    MultipleScrollSelectionHorizontalForm@ jinit_MultipleScrollSelectionHorizontalForm(string title, ABCustomItem@[]@ items, ItemPaintableFactory@ formPaintableFactory, int border, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor);
        this.jfields_MultipleScrollSelectionHorizontalForm();
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
        } else {
            @this.rectPaintable_MultipleScrollSelectionHorizontalForm = MultipleScrollSelectionFormRectPaintable().jinit_MultipleScrollSelectionFormRectPaintable(this);
        }
        return this;
    }
    

    void fillRect(Graphics@ graphics)
    {
        graphics.setColor(this.backgroundColor_MultipleScrollSelectionHorizontalForm);
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight());
    }
    

    void init(Rectangle@ rectangle, FormType@ formType)
    {
        ScrollSelectionForm::init(rectangle, formType);
        FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
        if (formType is formTypeFactory.HORIZONTAL_FORM) {
            @this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable_MultipleScrollSelectionHorizontalForm = MultipleScrollSelectionFormHorizontalPaintable().jinit_MultipleScrollSelectionFormHorizontalPaintable(this);
        } else if (formType is formTypeFactory.VERTICAL_CENTER_FORM) {
            @this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable_MultipleScrollSelectionHorizontalForm = MultipleScrollSelectionFormVerticalPaintable().jinit_MultipleScrollSelectionFormVerticalPaintable(this);
        } else if (formType is formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jthrow(Exception().jinit_Exception(formTypeFactory.UNK));
        }
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.fontHeight_MultipleScrollSelectionHorizontalForm = font.getHeight();
        @this.myFontProcessor_MultipleScrollSelectionHorizontalForm = MyFontProcessor::getInstance();
    }
    

    int paintHorizontal(Graphics@ graphics, int index, ABCustomItem@ item, int dx, int dy)
    {
        int dx2 = this.paintItem(graphics, index, item, dx, dy) + this.border;
        this.paintable.paint(graphics, index, dx, dy);
        dx = dx2;
        return dx;
    }
    

    int paintVertical(Graphics@ graphics, int index, ABCustomItem@ item, int dx, int dy)
    {
        this.paintItem(graphics, index, item, dx, dy);
        this.paintable.paint(graphics, index, dx, dy);
        return dx;
    }
    

    int getStartIndex()
    {
        return this.getSelectedIndex();
    }
    

    void paint(Graphics@ graphics)
    {
        try {
            this.myFontProcessor_MultipleScrollSelectionHorizontalForm.process(graphics);
            int start = this.getStartIndex();
            int size = this.size();
            int dx = this.x;
            int dy = this.y;
            this.rectPaintable_MultipleScrollSelectionHorizontalForm.paint(graphics);
            graphics.drawString(this.getTitle(), this.x, this.y - this.fontHeight_MultipleScrollSelectionHorizontalForm, 0);
            ABCustomItem@ item;
            for (int index = start; index < size; index++) {
                @item = this.get(index);
                if (dx >= this.rectangle.getMaxX()) {
                    if (this.logged_MultipleScrollSelectionHorizontalForm) {
                    } else {
                        this.logged_MultipleScrollSelectionHorizontalForm = true;
                        PreLogUtil::put(StringMaker().jinit_StringMaker().append("painting beyond maxx: ").appendint(this.rectangle.getMaxX()).toString(), this, this.canvasStrings.PAINT);
                    }
                }
                dx = this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable_MultipleScrollSelectionHorizontalForm.paint(graphics, index, item, dx, dy);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace MultipleScrollSelectionHorizontalForm
{
    

    ScrollSelectionForm@ createForm(string title, ABCustomItem@[]@ items, Rectangle@ rectangle, FormType@ formType, int border, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        ScrollSelectionForm@ scrollSelectionForm = MultipleScrollSelectionHorizontalForm().jinit_MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory::getInstance(), border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm.init(rectangle, formType);
        return scrollSelectionForm;
    }
}

