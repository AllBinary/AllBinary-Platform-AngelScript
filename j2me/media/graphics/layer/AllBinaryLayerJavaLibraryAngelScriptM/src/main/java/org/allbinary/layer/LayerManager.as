// Generated Code Do Not Modify
// package org.allbinary.layer

class ABLayerManager : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    ABSystemWrapper@ systemWrapper;
    TsUtil@ tsUtil;
    LayerManagerLoggingBase@ layerManagerLogging;
    BasicArrayList@ list;
    SynchObject@ anyType;

    // Java field initializers run after the super constructor
    void jfields_ABLayerManager()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.systemWrapper = ABSystemWrapper::getInstance();
    @this.tsUtil = TsUtil::getInstance();
    
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    @this.anyType = SynchObject().jinit_SynchObject();
    }
    

    ABLayerManager@ jinit_ABLayerManager(LayerManagerLoggingBase@ layerManagerLogging)
    {
        this.jfields_ABLayerManager();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        @this.layerManagerLogging = layerManagerLogging;
        return this;
    }
    

    bool contains(AllBinaryLayer@ layerInterface)
    {
        return this.list.contains(layerInterface);
    }
    

    void update(AllBinaryLayer@ layerInterface)
    {
        bool had = this.list.remove(layerInterface);
        if (had) {
            AllBinaryLayer@ nextLayerInterface;
            int size = this.list.size();
            for (int index = 0; index < size; index++) {
                @nextLayerInterface = cast<AllBinaryLayer>(this.list.get(index));
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    this.list.addAt(index, layerInterface);
                    return;
                }
            }
            this.list.add(layerInterface);
        }
    }
    

    void insert(AllBinaryLayer@ layerInterface)
    {
        AllBinaryLayer@ nextLayerInterface;
        int size = this.list.size();
        for (int index = 0; index < size; index++) {
            @nextLayerInterface = cast<AllBinaryLayer>(this.list.get(index));
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                this.appendAt(layerInterface, index);
                return;
            }
        }
        this.append(layerInterface);
    }
    

    void append(AllBinaryLayer@ layerInterface)
    {
        this.layerManagerLogging.append(layerInterface);
        this.list.add(layerInterface);
    }
    

    void appendAt(AllBinaryLayer@ layerInterface, int index)
    {
        this.layerManagerLogging.appendAt(layerInterface, index);
        this.list.addAt(index, layerInterface);
    }
    

    void remove(AllBinaryLayer@ layerInterface)
    {
        {
            this.layerManagerLogging.remove(layerInterface);
            bool result = this.list.remove(layerInterface);
            this.layerManagerLogging.removeResult(this, layerInterface, result);
        }
    }
    

    ABLayer@ getLayerAt(int index)
    {
        return cast<ABLayer>(this.list.objectArray[index]);
    }
    

    int getSize()
    {
        return this.list.size();
    }
    

    void cleanup()
    {
        {
            this.list.clear();
            this.layerManagerLogging.clear();
            this.tsUtil.gc();
            this.tsUtil.gc();
        }
    }
    

    void paint(Graphics@ g, int x, int y)
    {
        {
            ABLayer@ comp;
            for (int index = this.list.size(); --index >= 0; ) {
                @comp = cast<ABLayer>(this.list.objectArray[index]);
                if (comp !is null && comp.isVisible()) {
                    comp.paint(g);
                }
            }
        }
    }
}

