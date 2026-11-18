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
// package org.allbinary.image

class ImageCacheBase : JObjectBase
{
    LogUtil@ logUtil;
    ImageFactory@ imageFactory;
    ABHashtable@ hashtable;
    int SIZE;
    int[]@ widths;
    int[]@ heights;
    BasicArrayList@[]@ listOfList;
    BasicArrayList@[]@ availableListOfList;
    int volume;
    int nextIndex;

    // Java field initializers run after the super constructor
    void jfields_ImageCacheBase()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.imageFactory = ImageFactory::getInstance();
    @this.hashtable = StdUtil::getInstance().createHashtable();
    this.SIZE = 128;
    @this.widths = array<int>(this.SIZE);
    @this.heights = array<int>(this.SIZE);
    @this.listOfList = array<BasicArrayList@>(this.SIZE);
    @this.availableListOfList = array<BasicArrayList@>(this.SIZE);
    this.volume = 0;
    this.nextIndex = 0;
    }
    

    ImageCacheBase@ jinit_ImageCacheBase()
    {
        this.jfields_ImageCacheBase();
        for (int index = int(this.listOfList.length()) - 1; index >= 0; index--) {
            @this.listOfList[index] = BasicArrayListD().jinit_BasicArrayListD();
        }
        for (int index = int(this.availableListOfList.length()) - 1; index >= 0; index--) {
            @this.availableListOfList[index] = BasicArrayListD().jinit_BasicArrayListD();
        }
        return this;
    }
    

    Image@ getImage(JObject@ resourceId)
    {
        JObject@ imageCanBeNull = this.hashtable.get(resourceId);
        if (imageCanBeNull is null) {
            return NullImage::NULL_IMAGE;
        }
        return cast<Image>(imageCanBeNull);
    }
    

    void releaseAll()
    {
        for (int index = int(this.listOfList.length()) - 1; index >= 0; index--) {
            this.availableListOfList[index].clear();
            this.availableListOfList[index].addAllList(this.listOfList[index]);
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll");
    }
    

    int getIndexWH(int width, int height)
    {
        int foundIndex = -1;
        int size = int(this.widths.length());
        for (int index = 0; index < size; index++) {
            if (this.widths[index] == width && this.heights[index] == height) {
                foundIndex = index;
                return foundIndex;
            }
        }
        return foundIndex;
    }
    

    Image@ getFromAvailable(int foundIndex, int width, int height)
    {
        if (foundIndex != -1) {
            if (this.availableListOfList[foundIndex].size() > 0) {
                BasicArrayList@ list = this.availableListOfList[foundIndex];
                return cast<Image>(list.removeAt(list.size() - 1));
            }
        }
        return NullImage::NULL_IMAGE;
    }
    

    Image@ get(string caller, int width, int height)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    Image@ getWithKey(JObject@ key)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    Image@ createImage(string caller, int width, int height)
    {
        return this.imageFactory.createImage(caller, width, height);
    }
    

    Image@ createImageFromInputStream(JObject@ key, InputStream@ inputStream)
    {
        return this.imageFactory.createImageFromInputStream(key, inputStream);
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        for (int index = this.nextIndex - 1; index >= 0; index--) {
            int width = this.widths[index];
            int height = this.heights[index];
            int total = this.listOfList[index].size();
            int totalAvailable = this.availableListOfList[index].size();
            stringBuffer.append(" w: ");
            stringBuffer.appendint(width);
            stringBuffer.append(" h: ");
            stringBuffer.appendint(height);
            stringBuffer.append(CommonSeps::getInstance().SPACE);
            stringBuffer.append(CommonLabels::getInstance().TOTAL_LABEL);
            stringBuffer.appendint(total);
            stringBuffer.append(" available: ");
            stringBuffer.appendint(totalAvailable);
        }
        return stringBuffer.toString();
    }
    

    ABHashtable@ getHashtableP()
    {
        return this.hashtable;
    }
    

    void init(Image@ image)
    {
    }
    

    void initProgress()
    {
    }
}

