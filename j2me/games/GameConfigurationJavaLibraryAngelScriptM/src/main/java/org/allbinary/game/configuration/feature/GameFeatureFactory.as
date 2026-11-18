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
// package org.allbinary.game.configuration.feature

class GameFeatureFactory : JObjectBase
{
    GameFeature@ SOUND;
    GameFeature@ MUSIC;
    Feature@ SCREEN_SHAKE;
    Feature@ POST_IMAGE_LOADING_MODIFICATION;
    GameFeature@ HEALTH_BARS;
    GameFeature@ DAMAGE_FLOATERS;
    GameFeature@ GAME_INPUT_LAYER_PROCESSOR;
    GameFeature@ ARTIFICIAL_INTELLEGENCE_PROCESSOR;
    GameFeature@ COLLIDABLE_INTERFACE_LAYER_PROCESSOR;
    GameFeature@ TICKABLE_LAYER_PROCESSOR;
    GameFeature@ CHEATING;
    GameFeature@ DROPPED_ITEMS;
    GameFeature@ DROPPED_ITEMS_FROM_DEATH;
    GameFeature@ TEST_DESTROYED_LAYER_PROCESSOR;
    GameFeature@ COLLISIONS_WITH_SOURCE;
    GameFeature@ COLLISIONS_FORCED_TWO_DIMENSIONAL;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureFactory()
    {
    @this.SOUND = GameFeature().jinit_GameFeature("Sound");
    @this.MUSIC = GameFeature().jinit_GameFeature("Music");
    @this.SCREEN_SHAKE = Feature().jinit_Feature("Screen Shake");
    @this.POST_IMAGE_LOADING_MODIFICATION = Feature().jinit_Feature("Post Image Loading Modification (Scaling, Rotation, or Other)");
    @this.HEALTH_BARS = GameFeature().jinit_GameFeature("Health Bars");
    @this.DAMAGE_FLOATERS = GameFeature().jinit_GameFeature("Damage Floaters");
    @this.GAME_INPUT_LAYER_PROCESSOR = GameFeature().jinit_GameFeature("Game Input Layer Processor");
    @this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature().jinit_GameFeature("Artificial Intelligence Layer Processor");
    @this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature().jinit_GameFeature("Collidable Interface Layer Processor");
    @this.TICKABLE_LAYER_PROCESSOR = GameFeature().jinit_GameFeature("Tickable Layer Processor");
    @this.CHEATING = GameFeature().jinit_GameFeature("Cheating");
    @this.DROPPED_ITEMS = GameFeature().jinit_GameFeature("Drops");
    @this.DROPPED_ITEMS_FROM_DEATH = GameFeature().jinit_GameFeature("Drops from Dead");
    @this.TEST_DESTROYED_LAYER_PROCESSOR = GameFeature().jinit_GameFeature("Destroyed Layer Processor");
    @this.COLLISIONS_WITH_SOURCE = GameFeature().jinit_GameFeature("Allow Collisions With Source");
    @this.COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature().jinit_GameFeature("Collisions Forced Two Dimensional");
    }
    

    GameFeatureFactory@ jinit_GameFeatureFactory()
    {
        this.jfields_GameFeatureFactory();
        return this;
    }
}

namespace GameFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameFeatureFactory().jinit_GameFeatureFactory();
    }

    GameFeatureFactory@ jcell_instance;
    GameFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameFeatureFactory@ getInstance()
    {
        return GameFeatureFactory::instance;
    }
}

