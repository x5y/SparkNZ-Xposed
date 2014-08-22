.class Lorg/holoeverywhere/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$2;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$2;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1400(Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 380
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$2;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$2;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x1

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$200(Lorg/holoeverywhere/widget/NumberPicker;Z)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$2;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x0

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$200(Lorg/holoeverywhere/widget/NumberPicker;Z)V

    goto :goto_0
.end method
