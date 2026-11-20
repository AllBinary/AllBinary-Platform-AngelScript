// Generated Code Do Not Modify
// package org.allbinary.layer

class ABLayerManager : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    ABSystemWrapper@ systemWrapper_LayerManager;
    TsUtil@ tsUtil_LayerManager;
    LayerManagerLoggingBase@ layerManagerLogging_LayerManager;
    BasicArrayList@ list_LayerManager;
    SynchObject@ anyType_LayerManager;

    // Java field initializers run after the super constructor
    void jfields_ABLayerManager()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.systemWrapper_LayerManager = ABSystemWrapper::getInstance();
    @this.tsUtil_LayerManager = TsUtil::getInstance();
    
    @this.list_LayerManager = BasicArrayListD().jinit_BasicArrayListD();
    @this.anyType_LayerManager = SynchObject().jinit_SynchObject();
    }
    

    ABLayerManager@ jinit_ABLayerManager(LayerManagerLoggingBase@ layerManagerLogging)
    {
        this.jfields_ABLayerManager();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.layerManagerLogging_LayerManager = layerManagerLogging;
        return this;
    }
    

    bool contains(AllBinaryLayer@ layerInterface)
    {
        return this.list_LayerManager.contains(layerInterface);
    }
    

    void update(AllBinaryLayer@ layerInterface)
    {
        bool had = this.list_LayerManager.remove(layerInterface);
        if (had) {
            AllBinaryLayer@ nextLayerInterface;
            int size = this.list_LayerManager.size();
            for (int index = 0; index < size; index++) {
                @nextLayerInterface = cast<AllBinaryLayer>(this.list_LayerManager.get(index));
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    this.list_LayerManager.addAt(index, layerInterface);
                    return;
                }
            }
            this.list_LayerManager.add(layerInterface);
        }
    }
    

    void insert(AllBinaryLayer@ layerInterface)
    {
        AllBinaryLayer@ nextLayerInterface;
        int size = this.list_LayerManager.size();
        for (int index = 0; index < size; index++) {
            @nextLayerInterface = cast<AllBinaryLayer>(this.list_LayerManager.get(index));
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                this.appendAt(layerInterface, index);
                return;
            }
        }
        this.append(layerInterface);
    }
    

    void append(AllBinaryLayer@ layerInterface)
    {
        this.layerManagerLogging_LayerManager.append(layerInterface);
        this.list_LayerManager.add(layerInterface);
    }
    

    void appendAt(AllBinaryLayer@ layerInterface, int index)
    {
        this.layerManagerLogging_LayerManager.appendAt(layerInterface, index);
        this.list_LayerManager.addAt(index, layerInterface);
    }
    

    void remove(AllBinaryLayer@ layerInterface)
    {
        {
            this.layerManagerLogging_LayerManager.remove(layerInterface);
            bool result = this.list_LayerManager.remove(layerInterface);
            this.layerManagerLogging_LayerManager.removeResult(this, layerInterface, result);
        }
    }
    

    ABLayer@ getLayerAt(int index)
    {
        return cast<ABLayer>(this.list_LayerManager.objectArray[index]);
    }
    

    int getSize()
    {
        return this.list_LayerManager.size();
    }
    

    void cleanup()
    {
        {
            this.list_LayerManager.clear();
            this.layerManagerLogging_LayerManager.clear();
            this.tsUtil_LayerManager.gc();
            this.tsUtil_LayerManager.gc();
        }
    }
    

    void paint(Graphics@ g, int x, int y)
    {
        {
            ABLayer@ comp;
            for (int index = this.list_LayerManager.size(); --index >= 0; ) {
                @comp = cast<ABLayer>(this.list_LayerManager.objectArray[index]);
                if (comp !is null && comp.isVisible()) {
                    comp.paint(g);
                }
            }
        }
    }
}

