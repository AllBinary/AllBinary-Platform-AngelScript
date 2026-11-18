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

class FormTypeFactory : JObjectBase
{
    string UNK;
    FormType@ NULL_FORM_TYPE;
    FormType@ TEMP_HORIZONTAL_FORM;
    FormType@ HORIZONTAL_FORM;
    FormType@ VERTICAL_CENTER_FORM;

    // Java field initializers run after the super constructor
    void jfields_FormTypeFactory()
    {
    this.UNK = "Unknown FormType";
    @this.NULL_FORM_TYPE = FormType().jinit_FormType(StringUtil::getInstance().NULL_STRING);
    @this.TEMP_HORIZONTAL_FORM = FormType().jinit_FormType("TempHorizontal");
    @this.HORIZONTAL_FORM = FormType().jinit_FormType("Horizontal");
    @this.VERTICAL_CENTER_FORM = FormType().jinit_FormType("Vertical");
    }

    FormTypeFactory@ jinit_FormTypeFactory()
    {
        this.jfields_FormTypeFactory();
        return this;
    }
    

    FormType@ getFormType()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        FormType@ formType;
        if (displayInfo.isPortrait()) {
            @formType = this.VERTICAL_CENTER_FORM;
        } else {
            @formType = this.HORIZONTAL_FORM;
        }
        return formType;
    }
}

namespace FormTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FormTypeFactory().jinit_FormTypeFactory();
    }

    FormTypeFactory@ jcell_instance;
    FormTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FormTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    FormTypeFactory@ getInstance()
    {
        return FormTypeFactory::instance;
    }
}

