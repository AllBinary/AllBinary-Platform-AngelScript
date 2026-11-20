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
    CommonStrings@ commonStrings_ImageCopyUtil;
    ImageCreationUtil@ imageCreationUtil_ImageCopyUtil;
    int anchor_ImageCopyUtil;
    GameFeatureFactory@ gameFeatureFactory_ImageCopyUtil;
    Features@ features_ImageCopyUtil;
    string NO_COPY_ImageCopyUtil;

    // Java field initializers run after the super constructor
    void jfields_ImageCopyUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_ImageCopyUtil = CommonStrings::getInstance();
    @this.imageCreationUtil_ImageCopyUtil = ImageCreationUtil::getInstance();
    this.anchor_ImageCopyUtil = Anchor::TOP_LEFT;
    @this.gameFeatureFactory_ImageCopyUtil = GameFeatureFactory::getInstance();
    @this.features_ImageCopyUtil = Features::getInstance();
    this.NO_COPY_ImageCopyUtil = "J2ME does not need to copy images after initial loading";
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
        if (!this.features_ImageCopyUtil.isFeature(this.gameFeatureFactory_ImageCopyUtil.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY_ImageCopyUtil, this, this.commonStrings_ImageCopyUtil.CONSTRUCTOR, Exception().jinit_Exception());
            return originalImage;
        }
        Image@ image = this.imageCreationUtil_ImageCopyUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor_ImageCopyUtil);
            return image;
        } else {
            jthrow(Exception().jinit_Exception("Not Mutable"));
        }
        return null;
    }
    

    Image@ createImageScale(Image@ originalImage, float canvasScale, bool resize)
    {
        if (!this.features_ImageCopyUtil.isFeature(this.gameFeatureFactory_ImageCopyUtil.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY_ImageCopyUtil, this, this.commonStrings_ImageCopyUtil.CONSTRUCTOR, Exception().jinit_Exception());
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
        Image@ image = this.imageCreationUtil_ImageCopyUtil.createImageWH(newWidth, newHeight);
        if (image.isMutable()) {
            int halfWidthDelta = (newWidth - originalImage.getWidth()) / 2;
            int halfHeightDelta = (newHeight - originalImage.getHeight()) / 2;
            Graphics@ graphics = image.getGraphics();
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor_ImageCopyUtil);
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

