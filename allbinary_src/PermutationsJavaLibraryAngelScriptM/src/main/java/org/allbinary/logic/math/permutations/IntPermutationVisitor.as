// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations

class IntPermutationVisitor : Visitor
{
    int[]@ data;
    StringMaker@ stringBuilder_IntPermutationVisitor;

    // Java field initializers run after the super constructor
    void jfields_IntPermutationVisitor()
    {
    
    @this.stringBuilder_IntPermutationVisitor = StringMaker().jinit_StringMaker();
    }
    

    IntPermutationVisitor@ jinit_IntPermutationVisitor(int[]@ data)
    {
        this.jinit_Visitor();
        this.jfields_IntPermutationVisitor();
        @this.data = data;
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        this.stringBuilder_IntPermutationVisitor.delete(0, this.stringBuilder_IntPermutationVisitor.length());
        this.print(this.data, this.stringBuilder_IntPermutationVisitor);
        return NullUtil::getInstance().NULL_OBJECT;
    }
    

    void print(int[]@ data)
    {
        StringMaker@ stringBuilder = StringMaker().jinit_StringMaker();
        this.print(data, stringBuilder);
    }
    

    void print(int[]@ data, StringMaker@ stringBuilder)
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        int size = int(data.length());
        for (int i = 0; i < size; i++) {
            stringBuilder.appendint(data[i]);
            stringBuilder.append(commonSeps.SPACE);
        }
        System::out_println(stringBuilder.toString());
    }
}

