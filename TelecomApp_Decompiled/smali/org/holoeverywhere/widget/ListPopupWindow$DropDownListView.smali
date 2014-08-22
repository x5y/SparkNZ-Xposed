.class Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
.super Lorg/holoeverywhere/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    sget v1, Lorg/holoeverywhere/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean p2, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 36
    return-void
.end method

.method static synthetic access$802(Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/holoeverywhere/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/holoeverywhere/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/holoeverywhere/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/holoeverywhere/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareView(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 61
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/ListView;->onPrepareView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
