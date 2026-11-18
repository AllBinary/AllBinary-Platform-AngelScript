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
// package org.allbinary.business.advertisement

class Advertisements : JObjectBase
{
    BasicArrayList@ bannerList;
    BasicArrayList@ pageList;
    MyRandomFactory@ myRandomFactory;

    // Java field initializers run after the super constructor
    void jfields_Advertisements()
    {
    @this.bannerList = BasicArrayListD().jinit_BasicArrayListD();
    @this.pageList = BasicArrayListD().jinit_BasicArrayListD();
    @this.myRandomFactory = MyRandomFactory::getInstance();
    }

    Advertisements@ jinit_Advertisements()
    {
        this.jfields_Advertisements();
        return this;
    }
    

    void addPage(AdvertisementProcessorInterface@ advertisementProcessorInterface)
    {
        if (!this.pageList.contains(advertisementProcessorInterface)) {
            this.pageList.add(advertisementProcessorInterface);
        }
    }
    

    void startRandomPage()
    {
        int size = this.pageList.size();
        if (size > 0) {
            int random = this.myRandomFactory.getAbsoluteNextInt(size);
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList.objectArray[random]);
            advertisementProcessorInterface.start();
        }
    }
    

    void processRandomPage()
    {
        if (LockedUtil::getInstance().isLocked()) {
            int size = this.pageList.size();
            if (size > 0) {
                int random = this.myRandomFactory.getAbsoluteNextInt(size);
                AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList.objectArray[random]);
                advertisementProcessorInterface.process();
            }
        }
    }
    

    void stopAllPage()
    {
        for (int index = this.pageList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    void addBanner(AdvertisementProcessorInterface@ advertisementProcessorInterface)
    {
        if (!this.bannerList.contains(advertisementProcessorInterface)) {
            this.bannerList.add(advertisementProcessorInterface);
        }
    }
    

    void startAll()
    {
        for (int index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList.objectArray[index]);
            advertisementProcessorInterface.start();
        }
    }
    

    void stopAllBanner()
    {
        for (int index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    AdvertisementProcessorInterface@ getBanner(int index)
    {
        AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList.objectArray[index]);
        return advertisementProcessorInterface;
    }
    

    void stopAll()
    {
        this.stopAllBanner();
        this.stopAllPage();
    }
}

