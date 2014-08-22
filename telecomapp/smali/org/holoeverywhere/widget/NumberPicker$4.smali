.class Lorg/holoeverywhere/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 420
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$4;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 423
    if-eqz p2, :cond_0

    .line 424
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$4;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->selectAll()V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$4;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setSelection(II)V

    .line 427
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$4;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$4;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v1

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->validateInputTextView(Lorg/holoeverywhere/internal/NumberPickerEditText;)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$1600(Lorg/holoeverywhere/widget/NumberPicker;Lorg/holoeverywhere/internal/NumberPickerEditText;)V

    goto :goto_0
.end method
