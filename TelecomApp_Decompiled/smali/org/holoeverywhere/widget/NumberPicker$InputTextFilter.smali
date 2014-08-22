.class Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 72
    iget-object v10, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v10}, Lorg/holoeverywhere/widget/NumberPicker;->access$400(Lorg/holoeverywhere/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 73
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 75
    .local v3, "filtered":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 76
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 78
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "result":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 106
    .end local v6    # "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 84
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v10, v6}, Lorg/holoeverywhere/widget/NumberPicker;->access$500(Lorg/holoeverywhere/widget/NumberPicker;Ljava/lang/String;)I

    move-result v8

    .line 85
    .local v8, "val":I
    iget-object v10, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I
    invoke-static {v10}, Lorg/holoeverywhere/widget/NumberPicker;->access$600(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v10

    if-le v8, v10, :cond_2

    .line 86
    const-string v6, ""

    goto :goto_0

    :cond_2
    move-object v6, v3

    .line 88
    goto :goto_0

    .line 91
    .end local v3    # "filtered":Ljava/lang/CharSequence;
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "val":I
    :cond_3
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .restart local v3    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 94
    const-string v6, ""

    goto :goto_0

    .line 96
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .restart local v6    # "result":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "str":Ljava/lang/String;
    iget-object v10, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v10}, Lorg/holoeverywhere/widget/NumberPicker;->access$400(Lorg/holoeverywhere/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v8, v2, v4

    .line 100
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 102
    iget-object v10, p0, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v10, v11, v12}, Lorg/holoeverywhere/widget/NumberPicker;->access$700(Lorg/holoeverywhere/widget/NumberPicker;II)V

    .line 103
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v0, p5

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0

    .line 99
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "valLowerCase":Ljava/lang/String;
    :cond_6
    const-string v6, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 112
    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->DIGIT_CHARACTERS:[C
    invoke-static {}, Lorg/holoeverywhere/widget/NumberPicker;->access$800()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
