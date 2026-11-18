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
// package org.allbinary.graphics.form

class CommandCurrentSelectionForm : ScrollCurrentSelectionForm, UpdateMyFontInterface
{
    Animation@[]@ selectedAnimationArray;
    Animation@[]@ unSelectedAnimationArray;

    // Java field initializers run after the super constructor
    void jfields_CommandCurrentSelectionForm()
    {
    @this.selectedAnimationArray = array<Animation@>(16);
    @this.unSelectedAnimationArray = array<Animation@>(16);
    }
    

    CommandCurrentSelectionForm@ jinit_CommandCurrentSelectionForm(string title, ABCustomItem@[]@ items, int border, bool moveForSmallScreen, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ScrollCurrentSelectionForm(title, items, ItemPaintableFactory::getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
        this.jfields_CommandCurrentSelectionForm();
        this.initAnimations();
        this.addAll(items);
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        this.updateAll(graphics, this.getAllitems());
        ScrollCurrentSelectionForm::updateMeasurement(graphics);
    }
    

    void initAnimations()
    {
        Animation@ nullAnimation = NullAnimationFactory::getFactoryInstance().getInstance(0);
        for (int index = int(this.selectedAnimationArray.length()); --index >= 0; ) {
            @this.selectedAnimationArray[index] = nullAnimation;
        }
        for (int index = int(this.unSelectedAnimationArray.length()); --index >= 0; ) {
            @this.unSelectedAnimationArray[index] = nullAnimation;
        }
    }
    

    void addAll(ABCustomItem@[]@ items)
    {
        for (int index = int(items.length()); --index >= 0; ) {
            this.addAt(index, items[index]);
        }
    }
    

    void addAt(int index, ABCustomItem@ item)
    {
        BasicColorFactory@ basicColorFactory = BasicColorFactory::getInstance();
        BasicColor@ buttonColor = basicColorFactory.TRANSPARENT_GREY;
        BasicColor@ selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        int width = item.getMinimumWidth();
        int height = item.getMinimumHeight();
        int adjustedBorder = 3;
        int offset = -(this.halfBorder + adjustedBorder);
        int rectWidth = width + this.border - adjustedBorder;
        int rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
            @this.selectedAnimationArray[index] = RectangleAdjustedAnimation().jinit_RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        } else {
            @this.selectedAnimationArray[index] = RectangleFilledAdjustedAnimation().jinit_RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
            @this.unSelectedAnimationArray[index] = RectangleAdjustedAnimation().jinit_RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        } else {
            @this.unSelectedAnimationArray[index] = RectangleFilledAdjustedAnimation().jinit_RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        }
    }
    

    void updateAll(Graphics@ graphics, ABCustomItem@[]@ items)
    {
        for (int index = int(items.length()); --index >= 0; ) {
            items[index].preMeasurement(graphics);
            this.updateAt(index, items[index]);
        }
    }
    

    void updateAt(int index, ABCustomItem@ item)
    {
        BasicColorFactory@ basicColorFactory = BasicColorFactory::getInstance();
        BasicColor@ buttonColor = basicColorFactory.TRANSPARENT_GREY;
        BasicColor@ selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        int width = item.getMinimumWidth();
        int height = item.getMinimumHeight();
        int adjustedBorder = 3;
        int offset = -(this.halfBorder + adjustedBorder);
        int rectWidth = width + this.border - adjustedBorder;
        int rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
            RectangleAdjustedAnimation@ rectangleAdjustedAnimation = cast<RectangleAdjustedAnimation>(this.selectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        } else {
            RectangleFilledAdjustedAnimation@ rectangleAdjustedAnimation = cast<RectangleFilledAdjustedAnimation>(this.selectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil::isJ2ME() || J2MEUtil::isHTML()) {
            RectangleAdjustedAnimation@ rectangleAdjustedAnimation = cast<RectangleAdjustedAnimation>(this.unSelectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        } else {
            RectangleFilledAdjustedAnimation@ rectangleAdjustedAnimation = cast<RectangleFilledAdjustedAnimation>(this.unSelectedAnimationArray[index]);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        }
    }
    

    Command@ getSelectedCommand()
    {
        int index = ScrollCurrentSelectionForm::getSelectedIndex();
        CommandTextItem@ commandTextItem = cast<CommandTextItem>(this.get(index));
        return commandTextItem.getCommand();
    }
    

    int append(ABCustomItem@ item)
    {
        int result = ScrollCurrentSelectionForm::append(item);
        this.addAt(result, item);
        return result;
    }
    

    void delete(int itemNum)
    {
        ScrollCurrentSelectionForm::delete(itemNum);
    }
    

    void deleteAll()
    {
        this.initAnimations();
        ScrollCurrentSelectionForm::deleteAll();
    }
    

    void insert(int itemNum, ABCustomItem@ item)
    {
        ScrollCurrentSelectionForm::insert(itemNum, item);
    }
    

    void set(int itemNum, ABCustomItem@ item)
    {
        ScrollCurrentSelectionForm::set(itemNum, item);
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        ScrollCurrentSelectionForm::paint(graphics);
    }
    

    int paintItem(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        this.selectedAnimationArray[index].paintXY(graphics, x, y);
        return ScrollCurrentSelectionForm::paintItem(graphics, index, item, x, y);
    }
    

    int paintUnselectedItem(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        this.unSelectedAnimationArray[index].paintXY(graphics, x, y);
        return ScrollCurrentSelectionForm::paintUnselectedItem(graphics, index, item, x, y);
    }
}

