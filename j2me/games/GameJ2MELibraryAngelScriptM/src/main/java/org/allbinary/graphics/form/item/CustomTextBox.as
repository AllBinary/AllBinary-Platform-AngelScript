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
// package org.allbinary.graphics.form.item

class CustomTextBox : GameCommandCanvas, RawKeyEventListener
{
    ABTextFieldItem@ textFieldItem_CustomTextBox;
    InputFactory@ inputFactory_CustomTextBox;

    // Java field initializers run after the super constructor
    void jfields_CustomTextBox()
    {
    
    @this.inputFactory_CustomTextBox = InputFactory::getInstance();
    }
    

    CustomTextBox@ jinit_CustomTextBox(CommandListener@ cmdListener, string label, string text, int maxSize, int constraints, Font@ font, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_GameCommandCanvas(cmdListener, label, backgroundBasicColor, foregroundBasicColor);
        this.jfields_CustomTextBox();
        StringUtil@ stringUtil = StringUtil::getInstance();
        ABTextFieldItem@ textFieldItem = ABTextFieldItem().jinit_ABTextFieldItem(this, TextItemVisitor().jinit_TextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString(text);
        @this.textFieldItem_CustomTextBox = textFieldItem;
        this.setTitle(label);
        return this;
    }
    

    void submit()
    {
    }
    

    void onEventRaw(int keyCode, int deviceId, bool repeated)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent");
        this.keyPressedByDevice(keyCode, deviceId);
    }
    

    void keyPressed(int keyCode)
    {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    void keyReleased(int keyCode)
    {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    void keyRepeated(int keyCode)
    {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    void keyPressedByDevice(int keyCode, int deviceId)
    {
        try {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonSeps::getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
            PlatformKeyFactory@ platformKeyFactory = PlatformKeyFactory::getInstance();
            Input@ input = this.inputFactory_CustomTextBox.getInstanceById(keyCode);
            if (platformKeyFactory.isSubmission(input)) {
                this.submit();
            } else {
                this.textFieldItem_CustomTextBox.keyPressed(keyCode);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId)
    {
    }
    

    void paint(Graphics@ graphics)
    {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        graphics.setColor(this.foregroundColor);
        if (!J2MEUtil::isJ2ME()) {
            graphics.drawString(this.getTitle(), 8, 1, 0);
        }
        this.paintXY(graphics, 8, graphics.getFont().getHeight() + 2);
        GameCommandCanvas::paint(graphics);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.textFieldItem_CustomTextBox.paintXY(graphics, x, y);
    }
    

    ABTextFieldItem@ getTextFieldItem()
    {
        return this.textFieldItem_CustomTextBox;
    }
}

