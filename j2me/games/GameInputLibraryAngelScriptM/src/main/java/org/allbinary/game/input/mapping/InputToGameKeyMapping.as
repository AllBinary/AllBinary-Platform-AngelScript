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
// package org.allbinary.game.input.mapping

class InputToGameKeyMapping : InputMapping
{
    GameKeyFactory@ gameKeyFactory_InputToGameKeyMapping;
    GameKey@[]@ mappedGameKeys_InputToGameKeyMapping;
    GameKey@[]@ platformToGameKeyMapping_InputToGameKeyMapping;
    GameKey@[]@ negativePlatformToGameKeyMapping;

    // Java field initializers run after the super constructor
    void jfields_InputToGameKeyMapping()
    {
    @this.gameKeyFactory_InputToGameKeyMapping = GameKeyFactory::getInstance();
    @this.mappedGameKeys_InputToGameKeyMapping = array<GameKey@> = {this.gameKeyFactory_InputToGameKeyMapping.UP, this.gameKeyFactory_InputToGameKeyMapping.DOWN, this.gameKeyFactory_InputToGameKeyMapping.LEFT, this.gameKeyFactory_InputToGameKeyMapping.RIGHT};
    @this.platformToGameKeyMapping_InputToGameKeyMapping = array<GameKey@>(InputFactory::getInstance().MAX);
    @this.negativePlatformToGameKeyMapping = array<GameKey@>(0);
    }
    

    InputToGameKeyMapping@ jinit_InputToGameKeyMapping()
    {
        this.jinit_InputMapping();
        this.jfields_InputToGameKeyMapping();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.clear();
        return this;
    }
    

    void clear()
    {
        for (int index = int(this.platformToGameKeyMapping_InputToGameKeyMapping.length()) - 1; index >= 0; index--) {
            @this.platformToGameKeyMapping_InputToGameKeyMapping[index] = this.gameKeyFactory_InputToGameKeyMapping.NONE;
        }
    }
    

    void removeAll()
    {
        InputMapping::removeAll();
        this.clear();
    }
    

    void addMapping(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        for (int index = inputToGameKeyMapping.getMaxMappable() - 1; index >= 0; index--) {
            Input@ input = inputToGameKeyMapping.getInstance(index);
            if (input !is this.gameKeyFactory_InputToGameKeyMapping.NONE) {
                this.addAll(input, inputToGameKeyMapping.getMappedInput(input));
            }
        }
    }
    

    void addAll(Input@ input, BasicArrayList@ list)
    {
        for (int index = list.size() - 1; index >= 0; index--) {
            Input@ mappedToInput = cast<Input>(list.objectArray[index]);
            this.add(input, mappedToInput);
        }
    }
    

    void add(Input@ input, Input@ mappedToInput)
    {
        InputMapping::add(input, mappedToInput);
        this.set(input, mappedToInput);
    }
    

    void remove(Input@ input, Input@ mappedToInput)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(StringUtil::getInstance().toString(input)).append(" == ").append(StringUtil::getInstance().toString(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove");
        InputMapping::remove(input, mappedToInput);
        this.set(input, this.gameKeyFactory_InputToGameKeyMapping.NONE);
    }
    

    void set(Input@ input, Input@ mappedToInput)
    {
        int id = mappedToInput.getId();
        if (id >= 0 && id < int(this.platformToGameKeyMapping_InputToGameKeyMapping.length())) {
            @this.platformToGameKeyMapping_InputToGameKeyMapping[id] = cast<GameKey>(input);
        }
    }
    

    int getMaxMappable()
    {
        return int(this.platformToGameKeyMapping_InputToGameKeyMapping.length());
    }
    

    BasicArrayList@ getReverseInstance(int id)
    {
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        InputFactory@ inputFactory = InputFactory::getInstance();
        for (int index = 0; index < int(this.platformToGameKeyMapping_InputToGameKeyMapping.length()); index++) {
            if (this.platformToGameKeyMapping_InputToGameKeyMapping[index].getId() == id) {
                Input@ input = inputFactory.getInstanceById(index);
                if (input !is null) {
                    list.add(input);
                }
            }
        }
        return list;
    }
    

    void initGameKey(Canvas@ canvas, GameKey@ gameKey)
    {
        int key = canvas.getKeyCode(gameKey.getId());
        if (key < 0 && -key < int(this.negativePlatformToGameKeyMapping.length())) {
            @this.negativePlatformToGameKeyMapping[-key] = gameKey;
        } else if (key > 0) {
            if (this.platformToGameKeyMapping_InputToGameKeyMapping[key] is this.gameKeyFactory_InputToGameKeyMapping.NONE) {
                @this.platformToGameKeyMapping_InputToGameKeyMapping[key] = gameKey;
            }
        } else {
            PreLogUtil::putOE(StringMaker().jinit_StringMaker().append(gameKey.toString()).append(CommonSeps::getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, Exception().jinit_Exception());
        }
    }
    

    int getSmallestCanvasGameKeyCode(Canvas@ canvas)
    {
        int nextKey = 0;
        int smallestKey = 0;
        for (int index = int(this.mappedGameKeys_InputToGameKeyMapping.length()); --index >= 0; ) {
            nextKey = canvas.getKeyCode(this.mappedGameKeys_InputToGameKeyMapping[index].getId());
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
        }
        return smallestKey;
    }
    

    void init(Canvas@ canvas)
    {
        try {
            GameKey@[]@ negativePlatformToGameKeyMapping = array<GameKey@>(0);
            int smallestKey = this.getSmallestCanvasGameKeyCode(canvas);
            if (smallestKey < 0) {
                smallestKey--;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                @negativePlatformToGameKeyMapping = array<GameKey@>(-smallestKey);
                for (int index = int(negativePlatformToGameKeyMapping.length()); --index >= 0; ) {
                    @negativePlatformToGameKeyMapping[index] = this.gameKeyFactory_InputToGameKeyMapping.NONE;
                }
                @this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            for (int index = int(this.mappedGameKeys_InputToGameKeyMapping.length()); --index >= 0; ) {
                this.initGameKey(canvas, this.mappedGameKeys_InputToGameKeyMapping[index]);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Throwable>(jex0) !is null) {
                Throwable@ t = cast<Throwable>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t);
            }
            else { jthrow(jex0); }
        }
    }
    

    GameKey@ getInstanceForCanvas(Canvas@ canvas, int id)
    {
        if (id >= 0 && id < int(this.platformToGameKeyMapping_InputToGameKeyMapping.length())) {
            return this.platformToGameKeyMapping_InputToGameKeyMapping[id];
        } else if (id < 0 && -id < int(this.negativePlatformToGameKeyMapping.length())) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory_InputToGameKeyMapping.NONE;
        }
        return null;
    }
    

    GameKey@ getInstance(int id)
    {
        if (id >= 0 && id < int(this.platformToGameKeyMapping_InputToGameKeyMapping.length())) {
            return this.platformToGameKeyMapping_InputToGameKeyMapping[id];
        } else if (id < 0 && -id < int(this.negativePlatformToGameKeyMapping.length())) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory_InputToGameKeyMapping.NONE;
        }
        return null;
    }
}

namespace InputToGameKeyMapping
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    InputToGameKeyMapping@ getNullInstance()
    {
        if (InputToGameKeyMapping::instance is NullUtil::getInstance().NULL_OBJECT) {
            @InputToGameKeyMapping::instance = InputToGameKeyMapping().jinit_InputToGameKeyMapping();
        }
        return cast<InputToGameKeyMapping>(InputToGameKeyMapping::instance);
    }
}

