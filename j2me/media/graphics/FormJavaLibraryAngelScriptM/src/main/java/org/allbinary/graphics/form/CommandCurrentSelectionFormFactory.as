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

class CommandCurrentSelectionFormFactory : JObjectBase
{

    CommandCurrentSelectionFormFactory@ jinit_CommandCurrentSelectionFormFactory()
    {
        return this;
    }
}

namespace CommandCurrentSelectionFormFactory
{
    

    ScrollSelectionForm@ getInstance(string title, ABCustomItem@[]@ items, Rectangle@ rectangle, FormType@ formType, int border, bool moveForSmallScreen, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        if (Features::getInstance().isFeature(TouchFeatureFactory::getInstance().TOUCH_ENABLED)) {
            ScrollSelectionForm@ scrollSelectionForm = CommandCurrentSelectionForm().jinit_CommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
            scrollSelectionForm.init(rectangle, formType);
            return scrollSelectionForm;
        } else {
            return ScrollSelectionFormNoneFactory::getInstance();
        }
        return null;
    }
}

