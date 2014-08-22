.class public Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;
.super Landroid/widget/ListView;
.source "CompatibleStickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

.field private mAdapterHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

.field private mAreHeadersSticky:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Ljava/lang/Boolean;

.field private mCurrentHeaderId:Ljava/lang/Long;

.field private mDataSetChangedObserver:Landroid/database/DataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDrawingListUnderStickyHeader:Z

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private mHeaderBeingPressed:Z

.field private mHeaderBottomPosition:I

.field private mHeaderChildBeingPressed:Z

.field private mHeaderDownY:F

.field private mHeaderPosition:I

.field private mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    .line 37
    iput-object v5, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 39
    const/high16 v2, -0x40800000

    iput v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderDownY:F

    .line 40
    iput-boolean v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 41
    iput-boolean v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderChildBeingPressed:Z

    .line 46
    iput-boolean v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 47
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 50
    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;-><init>(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapterHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    .line 60
    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;-><init>(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    .line 72
    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;-><init>(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 103
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 106
    invoke-super {p0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-super {p0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 108
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 109
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 110
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 112
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 114
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorRect"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 115
    .local v1, "selectorRectField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 118
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorPosition"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 119
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    .end local v1    # "selectorRectField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .prologue
    .line 23
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->scrollChanged(I)V

    return-void
.end method

.method private drawStickyHeader(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 303
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 304
    .local v0, "headerHeight":I
    iget v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    sub-int v1, v2, v0

    .line 306
    .local v1, "top":I
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 307
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 308
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v1, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 309
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v2

    :goto_0
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 313
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    return-void

    .line 309
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fixedFirstVisibleItem(I)I
    .locals 4
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 444
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    move v0, p1

    .line 464
    .end local p1    # "firstVisibleItem":I
    .local v0, "firstVisibleItem":I
    :goto_0
    return v0

    .line 448
    .end local v0    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 449
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_3

    .line 450
    add-int/2addr p1, v1

    .line 457
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_2

    .line 458
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_2

    .line 459
    if-lez p1, :cond_2

    .line 460
    add-int/lit8 p1, p1, -0x1

    :cond_2
    move v0, p1

    .line 464
    .end local p1    # "firstVisibleItem":I
    .restart local v0    # "firstVisibleItem":I
    goto :goto_0

    .line 448
    .end local v0    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectorPosition()I
    .locals 4

    .prologue
    .line 281
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 282
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 285
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_0

    .line 286
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 299
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 284
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    const/4 v2, -0x1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v4, 0x40000000

    const/4 v7, 0x0

    .line 319
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 320
    .local v2, "widthMeasureSpec":I
    const/4 v0, 0x0

    .line 322
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 323
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_0

    .line 324
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 328
    :goto_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 329
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 330
    return-void

    .line 326
    :cond_0
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private positionSelectorRect()V
    .locals 7

    .prologue
    .line 267
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getSelectorPosition()I

    move-result v1

    .line 269
    .local v1, "selectorPosition":I
    if-ltz v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-direct {p0, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v0

    .line 271
    .local v0, "firstVisibleItem":I
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 272
    .local v2, "v":Landroid/view/View;
    instance-of v4, v2, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 273
    check-cast v3, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .line 274
    .local v3, "wrapper":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->getTop()I

    move-result v5

    iget v6, v3, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItemTop:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 278
    .end local v0    # "firstVisibleItem":I
    .end local v1    # "selectorPosition":I
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "wrapper":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 141
    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    .line 143
    return-void
.end method

.method private scrollChanged(I)V
    .locals 20
    .param p1, "reportedFirstVisibleItem"    # I

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    const/4 v2, 0x0

    .line 345
    .local v2, "adapterCount":I
    :goto_0
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 404
    :cond_0
    :goto_1
    return-void

    .line 344
    .end local v2    # "adapterCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->getCount()I

    move-result v2

    goto :goto_0

    .line 349
    .restart local v2    # "adapterCount":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderViewsCount()I

    move-result v10

    .line 350
    .local v10, "listViewHeaderCount":I
    invoke-direct/range {p0 .. p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v17

    sub-int v7, v17, v10

    .line 352
    .local v7, "firstVisibleItem":I
    if-ltz v7, :cond_3

    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-le v7, v0, :cond_4

    .line 353
    :cond_3
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V

    .line 354
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->updateHeaderVisibilities()V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate()V

    goto :goto_1

    .line 359
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v11

    .line 360
    .local v11, "newHeaderId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-eqz v17, :cond_6

    .line 361
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderPosition:I

    .line 362
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v20}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 364
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->measureHeader()V

    .line 367
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildCount()I

    move-result v4

    .line 368
    .local v4, "childCount":I
    if-eqz v4, :cond_10

    .line 369
    const/4 v14, 0x0

    .line 370
    .local v14, "viewToWatch":Landroid/view/View;
    const v16, 0x7fffffff

    .line 371
    .local v16, "watchingChildDistance":I
    const/4 v15, 0x0

    .line 373
    .local v15, "viewToWatchIsFooter":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_e

    .line 374
    move-object/from16 v0, p0

    invoke-super {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 375
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v6, 0x1

    .line 377
    .local v6, "childIsFooter":Z
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v17

    :goto_4
    sub-int v5, v18, v17

    .line 378
    .local v5, "childDistance":I
    if-gez v5, :cond_a

    .line 373
    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 375
    .end local v5    # "childDistance":I
    .end local v6    # "childIsFooter":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 377
    .restart local v6    # "childIsFooter":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    .line 382
    .restart local v5    # "childDistance":I
    :cond_a
    if-eqz v14, :cond_d

    if-nez v15, :cond_b

    move-object/from16 v17, v14

    check-cast v17, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    invoke-virtual/range {v17 .. v17}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->hasHeader()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_b
    if-nez v6, :cond_c

    move-object/from16 v17, v3

    check-cast v17, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    invoke-virtual/range {v17 .. v17}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->hasHeader()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_c
    move/from16 v0, v16

    if-ge v5, v0, :cond_7

    .line 383
    :cond_d
    move-object v14, v3

    .line 384
    move v15, v6

    .line 385
    move/from16 v16, v5

    goto :goto_5

    .line 389
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childDistance":I
    .end local v6    # "childIsFooter":Z
    :cond_e
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderHeight()I

    move-result v8

    .line 390
    .local v8, "headerHeight":I
    if-eqz v14, :cond_14

    if-nez v15, :cond_f

    move-object/from16 v17, v14

    check-cast v17, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    invoke-virtual/range {v17 .. v17}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->hasHeader()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 391
    :cond_f
    if-ne v7, v10, :cond_11

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-super {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    if-lez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    .line 392
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    .line 402
    .end local v8    # "headerHeight":I
    .end local v9    # "i":I
    .end local v14    # "viewToWatch":Landroid/view/View;
    .end local v15    # "viewToWatchIsFooter":Z
    .end local v16    # "watchingChildDistance":I
    :cond_10
    :goto_6
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->updateHeaderVisibilities()V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate()V

    goto/16 :goto_1

    .line 394
    .restart local v8    # "headerHeight":I
    .restart local v9    # "i":I
    .restart local v14    # "viewToWatch":Landroid/view/View;
    .restart local v15    # "viewToWatchIsFooter":Z
    .restart local v16    # "watchingChildDistance":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v13

    .line 395
    .local v13, "paddingTop":I
    :goto_7
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    add-int v18, v8, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v13, :cond_13

    add-int v17, v8, v13

    :goto_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 394
    .end local v13    # "paddingTop":I
    :cond_12
    const/4 v13, 0x0

    goto :goto_7

    .line 396
    .restart local v13    # "paddingTop":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    move/from16 v17, v0

    goto :goto_8

    .line 399
    .end local v13    # "paddingTop":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v17

    :goto_9
    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_6

    :cond_15
    const/16 v17, 0x0

    goto :goto_9
.end method

.method private updateHeaderVisibilities()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 425
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getPaddingTop()I

    move-result v4

    .line 426
    .local v4, "top":I
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildCount()I

    move-result v1

    .line 427
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 428
    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    if-eqz v7, :cond_0

    move-object v5, v0

    .line 430
    check-cast v5, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .line 431
    .local v5, "wrapperViewChild":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->hasHeader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 432
    iget-object v2, v5, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 433
    .local v2, "childHeader":Landroid/view/View;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_2

    .line 434
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 427
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "top":I
    :cond_1
    move v4, v6

    .line 425
    goto :goto_0

    .line 436
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "childHeader":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "top":I
    .restart local v5    # "wrapperViewChild":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 441
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_3
    return-void
.end method

.method private wrapAdapter(Landroid/widget/ListAdapter;)Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 217
    instance-of v1, p1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, v1, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;)V

    .line 222
    .local v0, "wrapper":Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->setDividerHeight(I)V

    .line 224
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 225
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapterHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->setOnHeaderClickListener(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 226
    return-object v0

    .line 220
    .end local v0    # "wrapper":Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, v1, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;)V

    .restart local v0    # "wrapper":Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    .line 412
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->scrollChanged(I)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->positionSelectorRect()V

    .line 246
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_2

    .line 247
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 264
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 257
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 259
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_4

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    :cond_4
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->drawStickyHeader(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public getWrappedAdapter()Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getWrappedView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v0, v0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    .line 237
    :cond_0
    return-object v0
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V

    .line 135
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->scrollChanged(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/high16 v3, -0x40800000

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 516
    .local v7, "action":I
    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 518
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderDownY:F

    .line 520
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 521
    iput-boolean v6, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 525
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 526
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate(IIII)V

    .line 560
    :cond_0
    :goto_1
    return v6

    .line 523
    :cond_1
    iput-boolean v6, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderChildBeingPressed:Z

    goto :goto_0

    .line 530
    :cond_2
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBeingPressed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderChildBeingPressed:Z

    if-eqz v0, :cond_9

    .line 531
    :cond_3
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderChildBeingPressed:Z

    if-eqz v0, :cond_6

    .line 532
    if-eq v7, v6, :cond_4

    if-ne v7, v4, :cond_5

    .line 533
    :cond_4
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderChildBeingPressed:Z

    .line 535
    :cond_5
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    :goto_2
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 557
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate(IIII)V

    goto :goto_1

    .line 537
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 539
    if-eq v7, v6, :cond_7

    if-ne v7, v4, :cond_0

    .line 541
    :cond_7
    iput v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderDownY:F

    .line 542
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 543
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 544
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    iget v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderPosition:I

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;Landroid/view/View;IJZ)V

    goto :goto_1

    .line 551
    :cond_8
    iput v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderDownY:F

    .line 552
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 553
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 560
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 147
    instance-of v0, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .end local p1    # "view":Landroid/view/View;
    iget-object p1, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    .line 150
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 23
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .line 203
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V

    .line 204
    invoke-super {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 207
    :cond_1
    instance-of v0, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    if-nez v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->wrapAdapter(Landroid/widget/ListAdapter;)Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .line 211
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V

    .line 212
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "areHeadersSticky"    # Z

    .prologue
    .line 185
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    if-eq v0, p1, :cond_0

    .line 186
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    .line 187
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->requestLayout()V

    .line 189
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 339
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 340
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 158
    .local v0, "dividerDrawableHeight":I
    if-ltz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setDividerHeight(I)V

    .line 162
    .end local v0    # "dividerDrawableHeight":I
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    invoke-virtual {v1, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->requestLayout()V

    .line 165
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate()V

    .line 167
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 171
    iput p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDividerHeight:I

    .line 172
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAdapter:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->setDividerHeight(I)V

    .line 174
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->requestLayout()V

    .line 175
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->invalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0
    .param p1, "drawingListUnderStickyHeader"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 507
    return-void
.end method

.method public setOnHeaderClickListener(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "onHeaderClickListener"    # Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    .prologue
    .line 502
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    .line 503
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 181
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 182
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 469
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 472
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 473
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 479
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 482
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 492
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 495
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
