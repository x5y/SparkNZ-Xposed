.class public Lorg/holoeverywhere/internal/NumberPickerEditText;
.super Lorg/holoeverywhere/widget/EditText;
.source "NumberPickerEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 17
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/EditText;->onEditorAction(I)V

    .line 18
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 21
    :cond_0
    return-void
.end method
