.class Lorg/holoeverywhere/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 388
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$3;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$3;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1400(Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 392
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$3;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$3;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->access$1500(Lorg/holoeverywhere/widget/NumberPicker;ZJ)V

    .line 398
    :goto_0
    return v2

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$3;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x0

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->access$1500(Lorg/holoeverywhere/widget/NumberPicker;ZJ)V

    goto :goto_0
.end method
