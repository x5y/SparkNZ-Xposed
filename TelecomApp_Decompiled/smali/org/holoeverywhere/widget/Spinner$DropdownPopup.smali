.class Lorg/holoeverywhere/widget/Spinner$DropdownPopup;
.super Lorg/holoeverywhere/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;
.implements Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mSelectionSetted:Z

.field final synthetic this$0:Lorg/holoeverywhere/widget/Spinner;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 212
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    .line 213
    sget v0, Lorg/holoeverywhere/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p2, p3, v0}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mSelectionSetted:Z

    .line 214
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 216
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 217
    new-instance v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;-><init>(Lorg/holoeverywhere/widget/Spinner$DropdownPopup;Lorg/holoeverywhere/widget/Spinner;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mSelectionSetted:Z

    .line 239
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 245
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 250
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 254
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 255
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 256
    .local v1, "bgOffset":I
    if-eqz v0, :cond_2

    .line 257
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 258
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v1, v7

    .line 262
    :goto_0
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getPaddingLeft()I

    move-result v4

    .line 263
    .local v4, "spinnerPaddingLeft":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget v7, v7, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 264
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getWidth()I

    move-result v6

    .line 265
    .local v6, "spinnerWidth":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 266
    .local v5, "spinnerPaddingRight":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/holoeverywhere/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 268
    .local v2, "contentWidth":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v3, v7, v8

    .line 272
    .local v3, "contentWidthLimit":I
    if-le v2, v3, :cond_0

    .line 273
    move v2, v3

    .line 275
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 285
    .end local v2    # "contentWidth":I
    .end local v3    # "contentWidthLimit":I
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :goto_1
    add-int v7, v1, v4

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 286
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 287
    invoke-super {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 288
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->getListView()Lorg/holoeverywhere/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/holoeverywhere/widget/ListView;->setChoiceMode(I)V

    .line 289
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mSelectionSetted:Z

    if-nez v7, :cond_1

    .line 290
    iput-boolean v10, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mSelectionSetted:Z

    .line 291
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 293
    :cond_1
    invoke-virtual {p0, p0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setOnDismissListener(Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;)V

    .line 294
    return-void

    .line 260
    .end local v4    # "spinnerPaddingLeft":I
    :cond_2
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    # getter for: Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lorg/holoeverywhere/widget/Spinner;->access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 277
    .restart local v4    # "spinnerPaddingLeft":I
    :cond_3
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget v7, v7, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 278
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getWidth()I

    move-result v6

    .line 279
    .restart local v6    # "spinnerWidth":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/Spinner;->getPaddingRight()I

    move-result v5

    .line 280
    .restart local v5    # "spinnerPaddingRight":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 283
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :cond_4
    iget-object v7, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget v7, v7, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1
.end method
