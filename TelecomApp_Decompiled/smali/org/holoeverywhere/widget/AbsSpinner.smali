.class public abstract Lorg/holoeverywhere/widget/AbsSpinner;
.super Lorg/holoeverywhere/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/AbsSpinner$1;,
        Lorg/holoeverywhere/widget/AbsSpinner$SavedState;,
        Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;-><init>(Lorg/holoeverywhere/widget/AbsSpinner;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    .line 97
    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 98
    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 99
    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 100
    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 109
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->initAbsSpinner()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v3, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;-><init>(Lorg/holoeverywhere/widget/AbsSpinner;)V

    iput-object v3, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    .line 97
    iput v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 98
    iput v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 99
    iput v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 100
    iput v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 118
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->initAbsSpinner()V

    .line 119
    sget-object v3, Lorg/holoeverywhere/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 123
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Lorg/holoeverywhere/widget/ArrayAdapter;

    sget v3, Lorg/holoeverywhere/R$layout;->simple_spinner_item:I

    invoke-direct {v1, p1, v3, v2}, Lorg/holoeverywhere/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 126
    .local v1, "adapter":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v3, Lorg/holoeverywhere/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 127
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    .end local v1    # "adapter":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setFocusable(Z)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 168
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 159
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZ)V
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 175
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 176
    const-class v0, Lorg/holoeverywhere/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 183
    const-class v0, Lorg/holoeverywhere/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 189
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 192
    .local v6, "widthMode":I
    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    iget v10, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 194
    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    iget v10, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 196
    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    iget v10, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 198
    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    iget v10, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 200
    iget-boolean v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->handleDataChanged()V

    .line 203
    :cond_0
    const/4 v2, 0x0

    .line 204
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 205
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 206
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 207
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 209
    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 210
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 211
    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 212
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 214
    invoke-virtual {v5, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 217
    :cond_1
    if-eqz v5, :cond_2

    .line 218
    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 220
    :cond_2
    if-eqz v5, :cond_4

    .line 221
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 222
    iput-boolean v12, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 223
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iput-boolean v11, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 226
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lorg/holoeverywhere/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 227
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 229
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 231
    const/4 v1, 0x0

    .line 234
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 235
    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 236
    if-nez v6, :cond_5

    .line 237
    iget-object v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 240
    :cond_5
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 243
    invoke-static {v2, p2, v11}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v0

    .line 246
    .local v0, "heightSize":I
    invoke-static {v3, p1, v11}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v7

    .line 248
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 249
    iput p2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 250
    iput p1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 251
    return-void

    .line 192
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_6
    iget v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 194
    :cond_7
    iget v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 196
    :cond_8
    iget v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 198
    :cond_9
    iget v8, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    .line 255
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;

    .line 257
    .local v0, "ss":Lorg/holoeverywhere/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 259
    iget-wide v1, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 260
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataChanged:Z

    .line 261
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mNeedSync:Z

    .line 262
    iget-wide v1, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSyncRowId:J

    .line 263
    iget v1, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSyncPosition:I

    .line 264
    const/4 v1, 0x0

    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSyncMode:I

    .line 265
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->requestLayout()V

    .line 267
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 271
    invoke-super {p0}, Lorg/holoeverywhere/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 272
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 273
    .local v0, "ss":Lorg/holoeverywhere/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->selectedId:J

    .line 274
    iget-wide v2, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->position:I

    .line 279
    :goto_0
    return-object v0

    .line 277
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lorg/holoeverywhere/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 283
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 284
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 285
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 286
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 289
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 290
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 292
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 293
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    iget v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 298
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 289
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 298
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 303
    .local v0, "childCount":I
    iget-object v4, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    .line 304
    .local v4, "recycleBin":Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mFirstPosition:I

    .line 305
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 306
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 307
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 308
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 315
    invoke-super {p0}, Lorg/holoeverywhere/widget/AdapterView;->requestLayout()V

    .line 317
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 320
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataChanged:Z

    .line 321
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mNeedSync:Z

    .line 322
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 323
    iput v2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 324
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 325
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 326
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 327
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->invalidate()V

    .line 328
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 22
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, -0x1

    .line 332
    iget-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 334
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->resetList()V

    .line 336
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 337
    iput v0, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 338
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 339
    iget-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 340
    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldItemCount:I

    .line 341
    iget-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    .line 342
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->checkFocus()V

    .line 343
    new-instance v1, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;-><init>(Lorg/holoeverywhere/widget/AdapterView;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 344
    iget-object v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 345
    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 346
    .local v0, "position":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 347
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 348
    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 349
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->checkSelectionChanged()V

    .line 356
    .end local v0    # "position":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->requestLayout()V

    .line 357
    return-void

    .line 352
    :cond_3
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->checkFocus()V

    .line 353
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->resetList()V

    .line 354
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 362
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->requestLayout()V

    .line 363
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->invalidate()V

    .line 364
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 367
    if-eqz p2, :cond_0

    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 369
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 370
    return-void

    .line 367
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 373
    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 375
    iget v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 376
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 377
    invoke-virtual {p0, v0, p2}, Lorg/holoeverywhere/widget/AbsSpinner;->layout(IZ)V

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 380
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
