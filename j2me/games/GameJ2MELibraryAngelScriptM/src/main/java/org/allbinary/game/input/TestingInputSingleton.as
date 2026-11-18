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
// package org.allbinary.game.input

class TestingInputSingleton : AllBinaryGameLayer, GameInputInterface
{
    GameInputProcessor@[]@ inputProcessorArray;
    PaintableInterface@ testInputPaintable_TestingInputSingleton;

    // Java field initializers run after the super constructor
    void jfields_TestingInputSingleton()
    {
    @this.inputProcessorArray = array<GameInputProcessor@>(InputFactory::getInstance().MAX);
    @this.testInputPaintable_TestingInputSingleton = NullPaintable::getInstance();
    }
    

    TestingInputSingleton@ jinit_TestingInputSingleton()
    {
        this.jinit_AllBinaryGameLayer(StringUtil::getInstance().EMPTY_STRING, RectangleFactory::SINGLETON, ViewPosition::getInstanceD());
        this.jfields_TestingInputSingleton();
        GameInputProcessorUtil::init(jbox(this.inputProcessorArray));
        return this;
    }
    

    void initInputProcessors()
    {
    }
    

    void initInputProcessorsForTestInput(TestInputInterface@ aTestInputInterface)
    {
        TestInputInterface@ testInputInterface = aTestInputInterface;
        @this.testInputPaintable_TestingInputSingleton = testInputInterface;
        @this.inputProcessorArray[Canvas::UP] = TestingInputSingleton_j1().jinit_TestingInputSingleton_j1(this);
        @this.inputProcessorArray[Canvas::DOWN] = TestingInputSingleton_j2().jinit_TestingInputSingleton_j2(this);
        @this.inputProcessorArray[Canvas::LEFT] = TestingInputSingleton_j3().jinit_TestingInputSingleton_j3(this);
        @this.inputProcessorArray[Canvas::RIGHT] = TestingInputSingleton_j4().jinit_TestingInputSingleton_j4(this);
        @this.inputProcessorArray[Canvas::KEY_NUM7] = TestingInputSingleton_j5().jinit_TestingInputSingleton_j5(this);
        @this.inputProcessorArray[Canvas::KEY_NUM9] = TestingInputSingleton_j6().jinit_TestingInputSingleton_j6(this);
        GameInputProcessorUtil::init(jbox(this.inputProcessorArray));
    }
    

    void processInputList(AllBinaryLayerManager@ allbinaryLayerManager, BasicArrayList@ list)
    {
        int key = 0;
        GameKeyEvent@ gameKeyEvent;
        int size = list.size();
        for (int index = 0; index < size; index++) {
            @gameKeyEvent = (cast<GameKeyEvent>(list.objectArray[index]));
            key = gameKeyEvent.getKey();
            this.inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent::NONE);
        }
    }
    

    void processInput(AllBinaryLayerManager@ allbinaryLayerManager)
    {
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList());
        this.getGameKeyEventList().clear();
    }
    

    void paint(Graphics@ graphics)
    {
        this.testInputPaintable_TestingInputSingleton.paint(graphics);
    }
    

    bool implmentsGameInputInterface()
    {
        return true;
    }
}

namespace TestingInputSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TestingInputSingleton().jinit_TestingInputSingleton();
    }

    TestingInputSingleton@ jcell_instance;
    TestingInputSingleton@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TestingInputSingleton@ value) property { jclinit(); @jcell_instance = value; }
    

    TestingInputSingleton@ getInstance()
    {
        return TestingInputSingleton::instance;
    }
}

class TestingInputSingleton_j1 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j1@ jinit_TestingInputSingleton_j1(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.up();
            }
}

class TestingInputSingleton_j2 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j2@ jinit_TestingInputSingleton_j2(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.down();
            }
}

class TestingInputSingleton_j3 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j3@ jinit_TestingInputSingleton_j3(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.left();
            }
}

class TestingInputSingleton_j4 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j4@ jinit_TestingInputSingleton_j4(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.right();
            }
}

class TestingInputSingleton_j5 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j5@ jinit_TestingInputSingleton_j5(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.strafeLeft();
            }
}

class TestingInputSingleton_j6 : GameInputProcessor
{
    TestingInputSingleton@ jouter;

    TestingInputSingleton_j6@ jinit_TestingInputSingleton_j6(TestingInputSingleton@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_GameInputProcessor();
        return this;
    }


            void processEvent(AllBinaryLayerManager@ allbinaryLayerManager, GameKeyEvent@ gameKeyEvent)
            {
                this.testInputInterface.strafeRight();
            }
}

