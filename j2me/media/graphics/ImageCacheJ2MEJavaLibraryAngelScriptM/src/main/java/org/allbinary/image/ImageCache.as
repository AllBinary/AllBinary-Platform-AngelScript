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

class ImageCache : ImageCacheBase
{
    CommonStrings@ commonStrings;
    TsUtil@ tsUtil_ImageCache;

    // Java field initializers run after the super constructor
    void jfields_ImageCache()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.tsUtil_ImageCache = TsUtil::getInstance();
    }
    

    ImageCache@ jinit_ImageCache()
    {
        this.jinit_ImageCacheBase();
        this.jfields_ImageCache();
        return this;
    }
    

    void addListener(JObject@ renderer)
    {
    }
    

    int getIndex(JObject@ key)
    {
        GDResources@ gdResources = GDResources::getInstance();
        string[]@ resourceStringArray = gdResources.resourceStringArray;
        int size = int(resourceStringArray.length());
        for (int index = 0; index < size; index++) {
            if (resourceStringArray[index] == key) {
                return index;
            }
        }
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("unable to find key: ").append(StringUtil::getInstance().toString(key)).toString(), this, this.commonStrings.RUN);
        jthrow(RuntimeException().jinit_RuntimeException());
        return 0;
    }
    

    Image@ get(string caller, int width, int height)
    {
        int foundIndex = this.getIndexWH(width, height);
        Image@ image = this.getFromAvailable(foundIndex, width, height);
        if (image is NullImage::NULL_IMAGE) {
            this.volume += width * height;
            if (this.volume > 32000) {
                this.tsUtil_ImageCache.gc();
                this.volume = 0;
            }
            @image = this.createImage(caller, width, height);
            int[]@ widths = this.widths;
            if (this.nextIndex > int(widths.length()) - 1) {
                if (foundIndex == -1) {
                    foundIndex = this.nextIndex;
                    widths[this.nextIndex] = width;
                    this.heights[this.nextIndex] = height;
                    this.nextIndex++;
                }
                this.listOfList[foundIndex].add(image);
            }
        }
        return image;
    }
    

    Image@ getWithKey(JObject@ key)
    {
        Image@ image = this.getImage(key);
        if (image is NullImage::NULL_IMAGE) {
            ResourceUtil@ resourceUtil = ResourceUtil::getInstance();
            InputStream@ resourceInputStream = resourceUtil.getResourceAsStream(jstringOf(key));
            if (resourceInputStream is null) {
                jthrow(RuntimeException().jinit_RuntimeException(StringMaker().jinit_StringMaker().append("Image resource is not available for key: ").append(StringUtil::getInstance().toString(key)).toString()));
            }
            try {
                @image = this.createImageFromInputStream(key, resourceInputStream);
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put("Exception: Trying Again After GC", this, this.commonStrings.GET, e);
                this.logUtil.putF(StringMaker().jinit_StringMaker().append("InputStream: ").append(StringUtil::getInstance().toString(resourceInputStream)).toString(), this, this.commonStrings.GET);
                this.tsUtil_ImageCache.gc();
                this.tsUtil_ImageCache.gc();
                this.logUtil.putF(Memory::getInfo(), this, this.commonStrings.GET);
                Thread::sleep(100);
                @image = this.createImageFromInputStream(key, resourceInputStream);
                }
                else { jthrow(jex0); }
            }
            if (J2MEUtil::isHTML()) {
            } else {
                resourceInputStream.close();
            }
            this.hashtable.put(key, image);
        }
        return image;
    }
    

    void loadImageForAnimation()
    {
    }
    

    void progressEnded()
    {
    }
    

    void runTask()
    {
    }
    

    bool isLazy()
    {
        return false;
    }
}

namespace ImageCache
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_IMAGE_CACHE = ImageCache().jinit_ImageCache();
    }

    ImageCache@ jcell_NULL_IMAGE_CACHE;
    ImageCache@ get_NULL_IMAGE_CACHE() property { jclinit(); return jcell_NULL_IMAGE_CACHE; }
    void set_NULL_IMAGE_CACHE(ImageCache@ value) property { jclinit(); @jcell_NULL_IMAGE_CACHE = value; }
}

