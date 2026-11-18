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
// package org.allbinary.game.physics.velocity

class VelocityProperties : BasicVelocityProperties, VelocityInterface
{
    int maxForwardVelocity_VelocityProperties;
    int maxReverseVelocity_VelocityProperties;
    

    VelocityProperties@ jinit_VelocityProperties(int maxForwardVelocity, int maxReverseVelocity)
    {
        this.jinit_BasicVelocityProperties();
        this.setMaxForwardVelocity(maxForwardVelocity);
        this.setMaxReverseVelocity(maxReverseVelocity);
        return this;
    }
    

    int getMaxForwardVelocity()
    {
        return this.maxForwardVelocity_VelocityProperties;
    }
    

    void setMaxForwardVelocity(int maxForwardVelocity)
    {
        this.maxForwardVelocity_VelocityProperties = maxForwardVelocity;
    }
    

    int getMaxReverseVelocity()
    {
        return this.maxReverseVelocity_VelocityProperties;
    }
    

    void setMaxReverseVelocity(int maxReverseVelocity)
    {
        this.maxReverseVelocity_VelocityProperties = maxReverseVelocity;
    }
    

    void limitMaxXYForwardVelocity()
    {
        this.limitMaxXYVelocity(this.getMaxForwardVelocity());
    }
    

    void limitMaxXYReverseVelocity()
    {
        this.limitMaxXYVelocity(this.getMaxReverseVelocity());
    }
    

    void limitMaxYForwardVelocity()
    {
        this.limitMaxYVelocity(this.getMaxForwardVelocity());
    }
    

    void limitMaxYReverseVelocity()
    {
        this.limitMaxYVelocity(this.getMaxReverseVelocity());
    }
    

    void limitMaxXForwardVelocity()
    {
        this.limitMaxXVelocity(this.getMaxForwardVelocity());
    }
    

    void limitMaxXReverseVelocity()
    {
        this.limitMaxXVelocity(this.getMaxReverseVelocity());
    }
    

    bool isOverXYMaxForwardVelocity()
    {
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity());
    }
    

    bool isOverXYMaxReverseVelocity()
    {
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity());
    }
    

    void limitXYToForwardAndReverseMaxVelocity()
    {
        this.limitMaxXYForwardVelocity();
        this.limitMaxXYReverseVelocity();
    }
    

    void limitMaxXYVelocity(int maxVelocity)
    {
        this.limitMaxXVelocity(maxVelocity);
        this.limitMaxYVelocity(maxVelocity);
    }
    

    void limitMaxPositiveYVelocity(int maxVelocity)
    {
        if (this.velocityYBasicDecimal.getUnscaled() > int64(maxVelocity)) {
            this.velocityYBasicDecimal.setint(maxVelocity);
        }
    }
    

    void limitMaxNegativeYVelocity(int maxVelocity)
    {
        if (this.velocityYBasicDecimal.getUnscaled() < int64(-maxVelocity)) {
            this.velocityYBasicDecimal.setint(-maxVelocity);
        }
    }
    

    void limitMaxYVelocity(int maxVelocity)
    {
        this.limitMaxPositiveYVelocity(maxVelocity);
        this.limitMaxNegativeYVelocity(maxVelocity);
    }
    

    void limitMaxXVelocity(int maxVelocity)
    {
        if (this.velocityXBasicDecimal.getUnscaled() > int64(maxVelocity)) {
            this.velocityXBasicDecimal.setint(maxVelocity);
        }
        if (this.velocityXBasicDecimal.getUnscaled() < int64(-maxVelocity)) {
            this.velocityXBasicDecimal.setint(-maxVelocity);
        }
    }
    

    bool isOverXYMaxVelocity(int maxVelocity)
    {
        if (this.velocityXBasicDecimal.getUnscaled() > int64(maxVelocity)) {
            return true;
        }
        if (this.velocityXBasicDecimal.getUnscaled() < int64(-maxVelocity)) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() > int64(maxVelocity)) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() < int64(-maxVelocity)) {
            return true;
        }
        return false;
    }
    

    void setVelocityi(int64 magnitude, int angle, int otherAngle)
    {
        BasicVelocityProperties::setVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
    

    void addVelocityi(int64 magnitude, int angle, int otherAngle)
    {
        BasicVelocityProperties::addVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
}

namespace VelocityProperties
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_VELOCITY_PROPERTIES = VelocityProperties().jinit_VelocityProperties(0, 0);
    }

    VelocityProperties@ jcell_NULL_VELOCITY_PROPERTIES;
    VelocityProperties@ get_NULL_VELOCITY_PROPERTIES() property { jclinit(); return jcell_NULL_VELOCITY_PROPERTIES; }
    void set_NULL_VELOCITY_PROPERTIES(VelocityProperties@ value) property { jclinit(); @jcell_NULL_VELOCITY_PROPERTIES = value; }
}

