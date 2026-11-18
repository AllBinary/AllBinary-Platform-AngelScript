/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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
// package org.allbinary.media.image

class ImageJ2MEScaleUtil : JObjectBase
{
    

    ImageJ2MEScaleUtil@ jinit_ImageJ2MEScaleUtil()
    {
        return this;
    }
    

    Image@[]@ scaleArray(Image@[]@ images, int width, int height)
    {
        Image@[]@ scaledImages = array<Image@>(int(images.length()));
        for (int index = int(images.length()); --index >= 0; ) {
            @scaledImages[index] = this.scale(images[index], width, height);
        }
        return scaledImages;
    }
    

    Image@ scale(Image@ image, int width, int height)
    {
        int sourceWidth = image.getWidth();
        int sourceHeight = image.getHeight();
        int[]@ originalData = array<int>(image.getWidth() * image.getHeight());
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight());
        int[]@ scaledData = array<int>(width * height);
        int heightRatioFactor = (8 * sourceHeight) / height;
        int widthRatioFactor = (8 * sourceWidth) / width;
        int scaledIndex = int(scaledData.length()) - 1;
        int dx = 0;
        int dy = 0;
        for (int index = height; --index >= 0; ) {
            dy = (index * heightRatioFactor) >>> 3;
            for (int index2 = width; --index2 >= 0; ) {
                dx = (index2 * widthRatioFactor) >>> 3;
                scaledData[scaledIndex--] = originalData[(sourceWidth * dy) + dx];
            }
        }
        Image@ scaledImage = Image::createRGBImage(scaledData, width, height, true);
        return scaledImage;
    }
}

namespace ImageJ2MEScaleUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageJ2MEScaleUtil().jinit_ImageJ2MEScaleUtil();
    }

    ImageJ2MEScaleUtil@ jcell_instance;
    ImageJ2MEScaleUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageJ2MEScaleUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageJ2MEScaleUtil@ getInstance()
    {
        return ImageJ2MEScaleUtil::instance;
    }
}

