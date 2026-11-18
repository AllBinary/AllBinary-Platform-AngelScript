// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon

class TempExplosionWeaponLayer : SimpleWeaponLayer
{
    WeaponProperties@ weaponProperties;
    TimeDelayHelper@ timeDelayHelper_TempExplosionWeaponLayer;

    // Java field initializers run after the super constructor
    void jfields_TempExplosionWeaponLayer()
    {
    @this.weaponProperties = WeaponProperties().jinit_WeaponProperties(-int64(1), -int64(1), 0, 1000, int16(0));
    @this.timeDelayHelper_TempExplosionWeaponLayer = TimeDelayHelper().jinit_TimeDelayHelper(0);
    }
    

    TempExplosionWeaponLayer@ jinit_TempExplosionWeaponLayer(string name, Movement@ movement, Animation@ animationInterface, Rectangle@ rectangle, ViewPositionBase@ viewPosition, int timeDelay)
    {
        this.jinit_SimpleWeaponLayer(name, RemoteInfo::REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer::createDestroyed(), rectangle, viewPosition);
        this.jfields_TempExplosionWeaponLayer();
        this.timeDelayHelper_TempExplosionWeaponLayer.delay = timeDelay;
        return this;
    }
    

    void processTick(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.timeDelayHelper_TempExplosionWeaponLayer.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            this.getCollidableInferface().collide(this, this);
            this.totalDamage = this.getInitDamage() + 1;
        }
        SimpleWeaponLayer::processTick(allBinaryLayerManager);
    }
}

