// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations

class ObjectPermutationVisitor : Visitor
{
    JObject@[]@ data;
    StringMaker@ stringBuilder_ObjectPermutationVisitor;

    // Java field initializers run after the super constructor
    void jfields_ObjectPermutationVisitor()
    {
    
    @this.stringBuilder_ObjectPermutationVisitor = StringMaker().jinit_StringMaker();
    }
    

    ObjectPermutationVisitor@ jinit_ObjectPermutationVisitor(JObject@[]@ data)
    {
        this.jinit_Visitor();
        this.jfields_ObjectPermutationVisitor();
        @this.data = data;
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        this.stringBuilder_ObjectPermutationVisitor.delete(0, this.stringBuilder_ObjectPermutationVisitor.length());
        this.print(this.data, this.stringBuilder_ObjectPermutationVisitor);
        return NullUtil::getInstance().NULL_OBJECT;
    }
    

    void print(JObject@[]@ data)
    {
        StringMaker@ stringBuilder = StringMaker().jinit_StringMaker();
        this.print(data, stringBuilder);
    }
    

    void print(JObject@[]@ data, StringMaker@ stringBuilder)
    {
        TsUtil@ tsUtil = TsUtil::getInstance();
        int size = int(data.length());
        for (int i = 0; i < size; i++) {
            stringBuilder.appendint(tsUtil.hashCode(data[i]));
            stringBuilder.append(CommonSeps::getInstance().SPACE);
        }
        System::out_println(stringBuilder.toString());
    }
}

