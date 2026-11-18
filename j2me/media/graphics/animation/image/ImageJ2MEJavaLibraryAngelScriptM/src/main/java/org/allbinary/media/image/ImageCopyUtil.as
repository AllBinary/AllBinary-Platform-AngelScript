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
// package org.allbinary.media.image

class ImageCopyUtil : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    ImageCreationUtil@ imageCreationUtil;
    int anchor;
    GameFeatureFactory@ gameFeatureFactory;
    Features@ features;
    string NO_COPY;

    // Java field initializers run after the super constructor
    void jfields_ImageCopyUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.imageCreationUtil = ImageCreationUtil::getInstance();
    this.anchor = Anchor::TOP_LEFT;
    @this.gameFeatureFactory = GameFeatureFactory::getInstance();
    @this.features = Features::getInstance();
    this.NO_COPY = "J2ME does not need to copy images after initial loading";
    }
    

    ImageCopyUtil@ jinit_ImageCopyUtil()
    {
        this.jfields_ImageCopyUtil();
        return this;
    }
    

    Image@ createImageForRotation(Image@ originalImage)
    {
        return this.createImage(originalImage);
    }
    

    Image@ createImage(Image@ originalImage)
    {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, Exception().jinit_Exception());
            return originalImage;
        }
        Image@ image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor);
            return image;
        } else {
            jthrow(Exception().jinit_Exception("Not Mutable"));
        }
        return null;
    }
    

    Image@ createImageScale(Image@ originalImage, float canvasScale, bool resize)
    {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, Exception().jinit_Exception());
            return originalImage;
        }
        int newWidth = int((originalImage.getWidth() * canvasScale));
        int newHeight = int((originalImage.getHeight() * canvasScale));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        Image@ image = this.imageCreationUtil.createImageWH(newWidth, newHeight);
        if (image.isMutable()) {
            int halfWidthDelta = (newWidth - originalImage.getWidth()) / 2;
            int halfHeightDelta = (newHeight - originalImage.getHeight()) / 2;
            Graphics@ graphics = image.getGraphics();
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor);
            return image;
        } else {
            jthrow(Exception().jinit_Exception("Not Mutable"));
        }
        return null;
    }
}

namespace ImageCopyUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ImageCopyUtil().jinit_ImageCopyUtil();
    }

    ImageCopyUtil@ jcell_instance;
    ImageCopyUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ImageCopyUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ImageCopyUtil@ getInstance()
    {
        return ImageCopyUtil::instance;
    }
}

