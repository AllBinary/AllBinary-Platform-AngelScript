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
// package org.allbinary.game.paint

class GameScrollMenuPaintable : BasicGameDemoPaintable, ColorChangeListener
{
    

    GameScrollMenuPaintable@ jinit_GameScrollMenuPaintable(Paintable@ mainDemoStatePaintable, Paintable@ ownershipPaintable, Paintable@ helpPaintableInterface, BasicColor@ basicColor)
    {
        this.jinit_BasicGameDemoPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
        this.setColor(basicColor);
        ColorChangeEventHandler::getInstance().addListenerInterface(this);
        return this;
    }
    

    void setState(int state)
    {
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
    }
    

    void setColor(BasicColor@ basicColor)
    {
        MainGameDemoStatePaintable@ mainGameDemoStatePaintable = cast<MainGameDemoStatePaintable>(this.getMainDemoStatePaintable());
        FormPaintable@ formPaintable = cast<FormPaintable>(mainGameDemoStatePaintable.getMenuPaintableInterface());
        ScrollSelectionForm@ scrollSelectionForm = cast<ScrollSelectionForm>(formPaintable.getForm());
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor);
        scrollSelectionForm.setButtonBasicColor(basicColor);
        ABTextItem@ item;
        ABStringComponent@ stringComponent;
        for (int index = scrollSelectionForm.size() - 1; index >= 0; index--) {
            @item = cast<ABTextItem>(scrollSelectionForm.get(index));
            @stringComponent = item.getLabelStringComponent();
            if (stringComponent !is null) {
                stringComponent.setForegroundBasicColor(basicColor);
            }
        }
    }
}

