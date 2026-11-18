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
// package org.allbinary.game.layer.identification

class GroupLayerManagerListener : LayerManagerEventListener
{
    LogUtil@ logUtil;
    BasicArrayList@ list_GroupLayerManagerListener;

    // Java field initializers run after the super constructor
    void jfields_GroupLayerManagerListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list_GroupLayerManagerListener = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    GroupLayerManagerListener@ jinit_GroupLayerManagerListener()
    {
        this.jinit_LayerManagerEventListener();
        this.jfields_GroupLayerManagerListener();
        LayerManagerEventHandler::getInstance().addListener(this);
        return this;
    }
    

    void clear()
    {
        BasicArrayList@ groupList;
        int size = this.list_GroupLayerManagerListener.size();
        for (int index = size - 1; index >= 0; index--) {
            @groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[index]);
            groupList.clear();
        }
    }
    

    int getGroupSizeFromInterface(GroupInterfaceCompositeInterface@ groupInterfaceCompositeInterface)
    {
        Group@[]@ groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface();
        return this.getGroupSize(groupInterfaceArray[0]);
    }
    

    int getGroupSize(Group@ groupInterface)
    {
        int id = int(groupInterface.getGroupId());
        return this.getGroupSizeById(id);
    }
    

    BasicArrayList@ getList(Group@ groupInterface)
    {
        int id = int(groupInterface.getGroupId());
        return this.getListById(id);
    }
    

    BasicArrayList@ getListById(int groupId)
    {
        BasicArrayList@ groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[groupId]);
        return groupList;
    }
    

    int getGroupSizeById(int groupId)
    {
        BasicArrayList@ groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[groupId]);
        int size = groupList.size();
        return size;
    }
    

    bool areAllOtherGroupsEmpty(Group@ groupInterface)
    {
        int id = int(groupInterface.getGroupId());
        int size = this.list_GroupLayerManagerListener.size();
        for (int index = size - 1; index >= 0; index--) {
            if (id != index) {
                int groupSize = this.getGroupSizeById(index);
                if (groupSize != 0) {
                    this.logUtil.putF(StringMaker().jinit_StringMaker().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty");
                    return false;
                }
            }
        }
        return true;
    }
    

    bool isIdInList(int id, BasicArrayList@ excludeGroupList)
    {
        int size = excludeGroupList.size();
        Group@[]@ groupInterfaceArray;
        Group@ groupInterface;
        int groupId = 0;
        for (int index = size - 1; index >= 0; index--) {
            @groupInterfaceArray = jarrayOf_Group(excludeGroupList.objectArray[index]);
            int size2 = int(groupInterfaceArray.length());
            for (int index2 = 0; index2 < size2; index2++) {
                @groupInterface = groupInterfaceArray[index2];
                groupId = int(groupInterface.getGroupId());
                if (groupId == id) {
                    return true;
                }
            }
        }
        return false;
    }
    

    bool areAllOtherGroupsLessThan(BasicArrayList@ excludeGroupList, int maxSize)
    {
        int size = this.list_GroupLayerManagerListener.size();
        for (int index = size - 1; index >= 0; index--) {
            if (!this.isIdInList(index, excludeGroupList)) {
                int groupSize = this.getGroupSizeById(index);
                if (groupSize >= maxSize) {
                    return false;
                }
            }
        }
        return true;
    }
    

    void init(int total)
    {
        while (this.list_GroupLayerManagerListener.size() <= total + 1) {
            this.list_GroupLayerManagerListener.add(BasicArrayListD().jinit_BasicArrayListD());
        }
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onCreateLayerManagerEvent(LayerManagerEvent@ layerManagerEvent)
    {
        AllBinaryLayer@ layerInterface = layerManagerEvent.getLayerInterface();
        Group@[]@ groupInterfaceArray = layerInterface.getGroupInterface();
        int size = int(groupInterfaceArray.length());
        int id = 0;
        BasicArrayList@ groupList;
        for (int index = 0; index < size; index++) {
            id = int(groupInterfaceArray[index].getGroupId());
            @groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[id]);
            if (groupList is null) {
                this.logUtil.putF(StringMaker().jinit_StringMaker().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent");
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface);
            } else {
            }
        }
    }
    

    void onDeleteLayerManagerEvent(LayerManagerEvent@ layerManagerEvent)
    {
        AllBinaryLayer@ layerInterface = layerManagerEvent.getLayerInterface();
        Group@[]@ groupInterfaceArray = layerInterface.getGroupInterface();
        int size = int(groupInterfaceArray.length());
        int id = 0;
        BasicArrayList@ groupList;
        for (int index = 0; index < size; index++) {
            id = int(groupInterfaceArray[index].getGroupId());
            @groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[id]);
            groupList.remove(layerInterface);
        }
    }
    

    void log()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string GROUP = "Group: ";
        string SPACE = CommonSeps::getInstance().SPACE;
        string TOTAL_LABEL = CommonLabels::getInstance().TOTAL_LABEL;
        int size = this.list_GroupLayerManagerListener.size();
        for (int index = size - 1; index >= 0; index--) {
            BasicArrayList@ groupList = cast<BasicArrayList>(this.list_GroupLayerManagerListener.objectArray[index]);
            stringBuffer.append(GROUP);
            stringBuffer.appendint(index);
            stringBuffer.append(SPACE);
            stringBuffer.append(TOTAL_LABEL);
            stringBuffer.appendint(groupList.size());
            stringBuffer.append(SPACE);
        }
        this.logUtil.putF(stringBuffer.toString(), this, "log");
    }
}

namespace GroupLayerManagerListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = GroupLayerManagerListener().jinit_GroupLayerManagerListener();
    }

    GroupLayerManagerListener@ jcell_SINGLETON;
    GroupLayerManagerListener@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(GroupLayerManagerListener@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    GroupLayerManagerListener@ getInstance()
    {
        return GroupLayerManagerListener::SINGLETON;
    }
}

