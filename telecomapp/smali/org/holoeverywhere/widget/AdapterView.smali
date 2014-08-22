.class public abstract Lorg/holoeverywhere/widget/AdapterView;
.super Lorg/holoeverywhere/internal/_ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/AdapterView$1;,
        Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;,
        Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;,
        Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;,
        Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;,
        Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Lorg/holoeverywhere/internal/_ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1}, Lorg/holoeverywhere/internal/_ViewGroup;-><init>(Landroid/content/Context;)V

    .line 102
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 107
    iput v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    .line 109
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mInLayout:Z

    .line 113
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 114
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 116
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 118
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedPosition:I

    .line 119
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedRowId:J

    .line 123
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 125
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 137
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/internal/_ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 107
    iput v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    .line 109
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mInLayout:Z

    .line 113
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 114
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 116
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 118
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedPosition:I

    .line 119
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedRowId:J

    .line 123
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 125
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 137
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/internal/_ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 107
    iput v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    .line 109
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mInLayout:Z

    .line 113
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 114
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 116
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 118
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedPosition:I

    .line 119
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedRowId:J

    .line 123
    iput v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 125
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 137
    iput-wide v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AdapterView;

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AdapterView;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AdapterView;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 277
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 281
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 282
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lorg/holoeverywhere/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 286
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lorg/holoeverywhere/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 426
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 427
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 428
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 431
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 493
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isAccessibilityManagerEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 497
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 498
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 656
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const/4 p1, 0x0

    .line 659
    :cond_0
    if-eqz p1, :cond_3

    .line 660
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AdapterView;->setVisibility(I)V

    .line 666
    :goto_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/AdapterView;->onLayout(ZIIII)V

    .line 676
    :cond_1
    :goto_1
    return-void

    .line 664
    :cond_2
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 672
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_4
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 158
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 164
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 170
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 177
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-super {p0}, Lorg/holoeverywhere/internal/_ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 188
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 189
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 190
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Lorg/holoeverywhere/internal/_ViewGroup;->setFocusableInTouchMode(Z)V

    .line 192
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Lorg/holoeverywhere/internal/_ViewGroup;->setFocusable(Z)V

    .line 193
    iget-object v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 194
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lorg/holoeverywhere/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 196
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 188
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 189
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 190
    goto :goto_2

    :cond_8
    move v3, v5

    .line 192
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 199
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->selectionChanged()V

    .line 202
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedPosition:I

    .line 203
    iget-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOldSelectedRowId:J

    .line 205
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 209
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 222
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 227
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 230
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    .line 231
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 232
    const/4 v14, -0x1

    .line 273
    :cond_0
    :goto_0
    return v14

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 235
    .local v8, "idToMatch":J
    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/AdapterView;->mSyncPosition:I

    .line 236
    .local v14, "seed":I
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 237
    const/4 v14, -0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 240
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 244
    .local v3, "endTime":J
    move v5, v14

    .line 245
    .local v5, "first":I
    move v10, v14

    .line 246
    .local v10, "last":I
    const/4 v11, 0x0

    .line 249
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 250
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v1, :cond_5

    .line 251
    const/4 v14, -0x1

    goto :goto_0

    .line 263
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v12, "rowId":J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 264
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 265
    move v14, v10

    .line 266
    const/4 v11, 0x0

    .line 253
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 254
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 255
    .restart local v12    # "rowId":J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 258
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 259
    .restart local v7    # "hitLast":Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 260
    .restart local v6    # "hitFirst":Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 273
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 258
    .restart local v12    # "rowId":J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 259
    .restart local v7    # "hitLast":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 267
    .restart local v6    # "hitFirst":Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 268
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 269
    move v14, v5

    .line 270
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 306
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 307
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 312
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 313
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 318
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 322
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemLongClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 334
    move-object v3, p1

    .line 337
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 338
    move-object v3, v4

    goto :goto_0

    .line 340
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 349
    :cond_0
    :goto_1
    return v5

    .line 343
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 344
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 345
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    iget v5, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 344
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 353
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 354
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 355
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 356
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 358
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 375
    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    .line 376
    .local v0, "count":I
    const/4 v1, 0x0

    .line 377
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 379
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 380
    iput-boolean v6, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 381
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 382
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 383
    invoke-virtual {p0, v2, v7}, Lorg/holoeverywhere/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 384
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 385
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 386
    const/4 v1, 0x1

    .line 390
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 391
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 392
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 393
    add-int/lit8 v2, v0, -0x1

    .line 395
    :cond_1
    if-gez v2, :cond_2

    .line 396
    const/4 v2, 0x0

    .line 398
    :cond_2
    invoke-virtual {p0, v2, v7}, Lorg/holoeverywhere/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 399
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 400
    invoke-virtual {p0, v2, v6}, Lorg/holoeverywhere/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 402
    :cond_3
    if-ltz v3, :cond_4

    .line 403
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 404
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->checkSelectionChanged()V

    .line 405
    const/4 v1, 0x1

    .line 409
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 410
    iput v5, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 411
    iput-wide v8, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 412
    iput v5, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 413
    iput-wide v8, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 414
    iput-boolean v6, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 415
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->checkSelectionChanged()V

    .line 417
    :cond_5
    const-string v4, "notifyAccessibilityStateChanged"

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5, v6}, Lorg/holoeverywhere/util/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 421
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 435
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 440
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-super {p0}, Lorg/holoeverywhere/internal/_ViewGroup;->onDetachedFromWindow()V

    .line 441
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectionNotifier:Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Lorg/holoeverywhere/internal/_ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 448
    const-class v1, Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 449
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 450
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 451
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 454
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 455
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 456
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 457
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 458
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Lorg/holoeverywhere/internal/_ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 464
    const-class v1, Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 465
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 466
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 475
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mLayoutHeight:I

    .line 476
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/internal/_ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 484
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 486
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 487
    const/4 v1, 0x1

    .line 489
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->playSoundEffect(I)V

    .line 505
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;->onItemClick(Lorg/holoeverywhere/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 512
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 516
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 517
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 518
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncHeight:J

    .line 519
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 520
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 522
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncPosition:I

    .line 523
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSpecificTop:I

    .line 526
    :cond_0
    iput v4, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncMode:I

    .line 542
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 529
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 530
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 531
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 535
    :goto_1
    iget v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncPosition:I

    .line 536
    if-eqz v1, :cond_3

    .line 537
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSpecificTop:I

    .line 539
    :cond_3
    iput v5, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 533
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 546
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 552
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 558
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 563
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isAccessibilityManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 565
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectionNotifier:Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 566
    new-instance v0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;-><init>(Lorg/holoeverywhere/widget/AdapterView;Lorg/holoeverywhere/widget/AdapterView$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectionNotifier:Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;

    .line 568
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectionNotifier:Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 574
    :cond_3
    :goto_0
    return-void

    .line 570
    :cond_4
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->fireOnSelected()V

    .line 571
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    .line 580
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 581
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 584
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 587
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 588
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    .local v1, "empty":Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 590
    return-void

    .line 588
    .end local v1    # "empty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 595
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 596
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableState:Z

    .line 597
    if-nez p1, :cond_1

    .line 598
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 600
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Lorg/holoeverywhere/internal/_ViewGroup;->setFocusable(Z)V

    .line 601
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 595
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 600
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 605
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 606
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 608
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 609
    if-eqz p1, :cond_1

    .line 610
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/AdapterView;->mDesiredFocusableState:Z

    .line 613
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Lorg/holoeverywhere/internal/_ViewGroup;->setFocusableInTouchMode(Z)V

    .line 614
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 606
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 613
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 617
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iput p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 618
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 619
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 621
    iput p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncPosition:I

    .line 622
    iget-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSyncRowId:J

    .line 624
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 628
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 634
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    .line 635
    return-void
.end method

.method public setOnItemLongClickListener(Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 638
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AdapterView;->setLongClickable(Z)V

    .line 641
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemLongClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemLongClickListener;

    .line 642
    return-void
.end method

.method public setOnItemSelectedListener(Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 645
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mOnItemSelectedListener:Lorg/holoeverywhere/widget/AdapterView$OnItemSelectedListener;

    .line 646
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 649
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView;, "Lorg/holoeverywhere/widget/AdapterView<TT;>;"
    iput p1, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 650
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 651
    return-void
.end method

.method public abstract setSelection(I)V
.end method
