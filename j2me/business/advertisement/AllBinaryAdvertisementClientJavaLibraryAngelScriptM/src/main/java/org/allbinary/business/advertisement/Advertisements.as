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
    BasicArrayList@ bannerList_Advertisements;
    BasicArrayList@ pageList_Advertisements;
    MyRandomFactory@ myRandomFactory_Advertisements;

    // Java field initializers run after the super constructor
    void jfields_Advertisements()
    {
    @this.bannerList_Advertisements = BasicArrayListD().jinit_BasicArrayListD();
    @this.pageList_Advertisements = BasicArrayListD().jinit_BasicArrayListD();
    @this.myRandomFactory_Advertisements = MyRandomFactory::getInstance();
    }

    Advertisements@ jinit_Advertisements()
    {
        this.jfields_Advertisements();
        return this;
    }
    

    void addPage(AdvertisementProcessorInterface@ advertisementProcessorInterface)
    {
        if (!this.pageList_Advertisements.contains(advertisementProcessorInterface)) {
            this.pageList_Advertisements.add(advertisementProcessorInterface);
        }
    }
    

    void startRandomPage()
    {
        int size = this.pageList_Advertisements.size();
        if (size > 0) {
            int random = this.myRandomFactory_Advertisements.getAbsoluteNextInt(size);
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList_Advertisements.objectArray[random]);
            advertisementProcessorInterface.start();
        }
    }
    

    void processRandomPage()
    {
        if (LockedUtil::getInstance().isLocked()) {
            int size = this.pageList_Advertisements.size();
            if (size > 0) {
                int random = this.myRandomFactory_Advertisements.getAbsoluteNextInt(size);
                AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList_Advertisements.objectArray[random]);
                advertisementProcessorInterface.process();
            }
        }
    }
    

    void stopAllPage()
    {
        for (int index = this.pageList_Advertisements.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.pageList_Advertisements.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    void addBanner(AdvertisementProcessorInterface@ advertisementProcessorInterface)
    {
        if (!this.bannerList_Advertisements.contains(advertisementProcessorInterface)) {
            this.bannerList_Advertisements.add(advertisementProcessorInterface);
        }
    }
    

    void startAll()
    {
        for (int index = this.bannerList_Advertisements.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList_Advertisements.objectArray[index]);
            advertisementProcessorInterface.start();
        }
    }
    

    void stopAllBanner()
    {
        for (int index = this.bannerList_Advertisements.size(); --index >= 0; ) {
            AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList_Advertisements.objectArray[index]);
            advertisementProcessorInterface.stop();
        }
    }
    

    AdvertisementProcessorInterface@ getBanner(int index)
    {
        AdvertisementProcessorInterface@ advertisementProcessorInterface = cast<AdvertisementProcessorInterface>(this.bannerList_Advertisements.objectArray[index]);
        return advertisementProcessorInterface;
    }
    

    void stopAll()
    {
        this.stopAllBanner();
        this.stopAllPage();
    }
}

