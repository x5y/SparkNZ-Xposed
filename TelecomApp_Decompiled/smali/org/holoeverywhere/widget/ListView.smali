.class public Lorg/holoeverywhere/widget/ListView;
.super Landroid/widget/ListView;
.source "ListView.java"

# interfaces
.implements Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;
.implements Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ListView$SavedState;,
        Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;,
        Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;,
        Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final USE_ACTIVATED:Z


# instance fields
.field private mActivity:Lorg/holoeverywhere/app/Activity;

.field private mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

.field private mAdapterHasStableIds:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mFastScrollEnabled:Z

.field private mFastScroller:Lorg/holoeverywhere/widget/FastScroller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/widget/FastScroller",
            "<",
            "Lorg/holoeverywhere/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private final mFooterViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceFastScrollAlwaysVisibleDisable:Z

.field private mForceHeaderListAdapter:Z

.field private final mHeaderViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAttached:Z

.field private mLastScrollState:I

.field private final mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

.field private mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

.field private final mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPaddingFromScroller:Z

.field private mVerticalScrollbarPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/holoeverywhere/widget/ListView;->USE_ACTIVATED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    .line 188
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/ListView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 189
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/ListView;->mForceHeaderListAdapter:Z

    .line 191
    iput v3, p0, Lorg/holoeverywhere/widget/ListView;->mLastScrollState:I

    .line 192
    new-instance v1, Lorg/holoeverywhere/widget/ListView$1;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/ListView$1;-><init>(Lorg/holoeverywhere/widget/ListView;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    .line 215
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/ListView;->mPaddingFromScroller:Z

    .line 216
    iput v3, p0, Lorg/holoeverywhere/widget/ListView;->mVerticalScrollbarPosition:I

    .line 229
    instance-of v1, p1, Lorg/holoeverywhere/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 230
    check-cast v1, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ListView;->setActivity(Lorg/holoeverywhere/app/Activity;)V

    .line 232
    :cond_0
    sget-boolean v1, Lorg/holoeverywhere/HoloEverywhere;->DISABLE_OVERSCROLL_EFFECT:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 233
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/ListView;->setOverScrollMode(I)V

    .line 236
    :cond_1
    new-instance v1, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;-><init>(Lorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/widget/ListView$1;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    .line 237
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 238
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/ListView;->setLongClickable(Z)V

    .line 240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 241
    invoke-super {p0, v3}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 243
    :cond_2
    invoke-super {p0, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 244
    invoke-super {p0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 245
    sget-object v1, Lorg/holoeverywhere/R$styleable;->AbsListView:[I

    sget v2, Lorg/holoeverywhere/R$style;->Holo_ListView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ListView;->setFastScrollEnabled(Z)V

    .line 248
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 250
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ListView;->setChoiceMode(I)V

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return-void
.end method

.method static synthetic access$002(Lorg/holoeverywhere/widget/ListView;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListView;
    .param p1, "x1"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListView;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListView;->updateOnScreenCheckedViews()V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListView;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    return-object v0
.end method

.method private removeViewInfo(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p2, "where":Ljava/util/List;, "Ljava/util/List<Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 759
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 760
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    .line 761
    .local v1, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iget-object v3, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 762
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 766
    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_0
    return-void

    .line 759
    .restart local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .prologue
    .line 1004
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_1

    .line 1015
    :cond_0
    return-void

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1008
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getChildCount()I

    move-result v1

    .line 1009
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1010
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1011
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1012
    .local v4, "position":I
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 1013
    .local v5, "value":Z
    invoke-virtual {p0, v0, v5}, Lorg/holoeverywhere/widget/ListView;->setStateOnView(Landroid/view/View;Z)V

    .line 1009
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 257
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 261
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    instance-of v1, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add footer view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;-><init>()V

    .line 266
    .local v0, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iput-object p1, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    .line 267
    iput-object p2, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    .line 268
    iput-boolean p3, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    .line 269
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->invalidateViews()V

    .line 273
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 278
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 282
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    instance-of v1, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;-><init>()V

    .line 287
    .local v0, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iput-object p1, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    .line 288
    iput-object p2, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    .line 289
    iput-boolean p3, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    .line 290
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->invalidateViews()V

    .line 294
    :cond_1
    return-void
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 304
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    .line 305
    return-void
.end method

.method protected createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 309
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 315
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getScrollY()I

    move-result v1

    .line 317
    .local v1, "scrollY":I
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 319
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 320
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 327
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v1    # "scrollY":I
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    return-void
.end method

.method public getActivity()Lorg/holoeverywhere/app/Activity;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    return-object v0
.end method

.method public getAdapterSource()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckItemIds()[J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 351
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 356
    iget v4, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-nez v4, :cond_2

    .line 357
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 365
    :cond_1
    return-object v3

    .line 359
    :cond_2
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 360
    .local v2, "idStates":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 361
    .local v0, "count":I
    new-array v3, v0, [J

    .line 362
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 370
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ListView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 418
    invoke-super {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v0

    .line 419
    .local v0, "superWidth":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ListView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 420
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isFastScrollAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 423
    .end local v0    # "superWidth":I
    :cond_0
    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 428
    .local v0, "mFirstPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getCount()I

    move-result v1

    .line 429
    .local v1, "mItemCount":I
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, p0, v0, v3, v1}, Lorg/holoeverywhere/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 432
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getChildCount()I

    move-result v3

    invoke-interface {v2, p0, v0, v3, v1}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 435
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lorg/holoeverywhere/widget/ListView;->onScrollChanged(IIII)V

    .line 436
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    return v0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/ListView;->mForceFastScrollAlwaysVisibleDisable:Z

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 454
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScrollEnabled:Z

    return v0
.end method

.method public isForceHeaderListAdapter()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mForceHeaderListAdapter:Z

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 465
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 466
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 472
    :goto_1
    return v1

    .line 470
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 477
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaddingFromScroller()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mPaddingFromScroller:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    .line 495
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    .line 501
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 505
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListView;->updateOnScreenCheckedViews()V

    .line 511
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 526
    sparse-switch p1, :sswitch_data_0

    .line 546
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 529
    :sswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 535
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 537
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/holoeverywhere/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 539
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 541
    :cond_2
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/ListView;->setPressed(Z)V

    goto :goto_0

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getCount()I

    move-result v1

    .line 552
    .local v1, "mOldItemCount":I
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 553
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getCount()I

    move-result v0

    .line 554
    .local v0, "mItemCount":I
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 555
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, v1, v0}, Lorg/holoeverywhere/widget/FastScroller;->onItemCountChanged(II)V

    .line 557
    :cond_0
    return-void
.end method

.method public onPrepareView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 560
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/ListView;->setStateOnView(Landroid/view/View;Z)V

    .line 567
    :cond_0
    :goto_0
    return-object p1

    .line 564
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/ListView;->setStateOnView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 572
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/ListView$SavedState;

    .line 573
    .local v0, "ss":Lorg/holoeverywhere/widget/ListView$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 574
    iget-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 577
    :cond_0
    iget-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 580
    :cond_1
    iget v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    .line 581
    iget-boolean v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    .line 583
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ListView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 585
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->requestLayout()V

    .line 586
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 590
    new-instance v0, Lorg/holoeverywhere/widget/ListView$SavedState;

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/ListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 591
    .local v0, "ss":Lorg/holoeverywhere/widget/ListView$SavedState;
    iget v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->inActionMode:Z

    .line 592
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iput-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 593
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iput-object v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 594
    iget v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    iput v1, v0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkedItemCount:I

    .line 595
    return-object v0

    .line 591
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 601
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/FastScroller;->onSizeChanged(IIII)V

    .line 604
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 609
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 617
    :cond_1
    :goto_0
    return v0

    .line 611
    :cond_2
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/ListView;->mIsAttached:Z

    if-eqz v2, :cond_1

    .line 614
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 615
    goto :goto_0

    .line 617
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 622
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 623
    if-eqz p1, :cond_0

    .line 624
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListView;->updateOnScreenCheckedViews()V

    .line 626
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 630
    const/4 v8, 0x0

    .line 631
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 632
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v2, :cond_4

    .line 633
    const/4 v8, 0x1

    .line 634
    const/4 v6, 0x0

    .line 635
    .local v6, "checkedStateChanged":Z
    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v2, :cond_9

    .line 637
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_6

    move v5, v0

    .line 638
    .local v5, "newValue":Z
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 639
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    if-eqz v5, :cond_7

    .line 641
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 646
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    .line 647
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    .line 651
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V

    .line 654
    const/4 v7, 0x0

    .line 656
    :cond_2
    const/4 v6, 0x1

    .line 672
    .end local v5    # "newValue":Z
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 673
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListView;->updateOnScreenCheckedViews()V

    .line 676
    .end local v6    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 679
    :cond_5
    return v8

    .restart local v6    # "checkedStateChanged":Z
    :cond_6
    move v5, v1

    .line 637
    goto :goto_0

    .line 643
    .restart local v5    # "newValue":Z
    :cond_7
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 649
    :cond_8
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    goto :goto_2

    .line 657
    .end local v5    # "newValue":Z
    :cond_9
    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-ne v2, v0, :cond_3

    .line 658
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_c

    move v5, v0

    .line 659
    .restart local v5    # "newValue":Z
    :goto_4
    if-eqz v5, :cond_d

    .line 660
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 661
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 662
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 663
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 664
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 666
    :cond_a
    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    .line 670
    :cond_b
    :goto_5
    const/4 v6, 0x1

    goto :goto_3

    .end local v5    # "newValue":Z
    :cond_c
    move v5, v1

    .line 658
    goto :goto_4

    .line 667
    .restart local v5    # "newValue":Z
    :cond_d
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 668
    :cond_e
    iput v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method public performItemLongClick(Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 684
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 685
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ListView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0, p2, v6}, Lorg/holoeverywhere/widget/ListView;->setItemChecked(IZ)V

    .line 688
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/ListView;->performHapticFeedback(I)Z

    .line 704
    :cond_0
    :goto_0
    return v6

    .line 692
    :cond_1
    const/4 v6, 0x0

    .line 693
    .local v6, "handled":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 697
    :cond_2
    if-nez v6, :cond_3

    .line 698
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/ListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 699
    invoke-super {p0, p0}, Landroid/widget/ListView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 701
    :cond_3
    if-eqz v6, :cond_0

    .line 702
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/ListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method protected recomputePaddingFromScroller()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 708
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getPaddingLeft()I

    move-result v1

    .line 709
    .local v1, "left":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getPaddingTop()I

    move-result v4

    .line 710
    .local v4, "top":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getPaddingRight()I

    move-result v2

    .line 711
    .local v2, "right":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getPaddingBottom()I

    move-result v0

    .line 712
    .local v0, "bottom":I
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/ListView;->mPaddingFromScroller:Z

    if-eqz v5, :cond_0

    .line 713
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    .line 714
    .local v3, "scrollbarWidth":I
    iget v5, p0, Lorg/holoeverywhere/widget/ListView;->mVerticalScrollbarPosition:I

    packed-switch v5, :pswitch_data_0

    .line 721
    invoke-virtual {p0, v1, v4, v3, v0}, Lorg/holoeverywhere/widget/ListView;->setPadding(IIII)V

    .line 727
    .end local v3    # "scrollbarWidth":I
    :goto_0
    return-void

    .line 716
    .restart local v3    # "scrollbarWidth":I
    :pswitch_0
    invoke-virtual {p0, v3, v4, v2, v0}, Lorg/holoeverywhere/widget/ListView;->setPadding(IIII)V

    goto :goto_0

    .line 725
    .end local v3    # "scrollbarWidth":I
    :cond_0
    invoke-virtual {p0, v6, v4, v6, v0}, Lorg/holoeverywhere/widget/ListView;->setPadding(IIII)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 731
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "result":Z
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->invalidateViews()V

    .line 735
    const/4 v0, 0x1

    .line 737
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/holoeverywhere/widget/ListView;->removeViewInfo(Landroid/view/View;Ljava/util/List;)V

    .line 740
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 745
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "result":Z
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->invalidateViews()V

    .line 749
    const/4 v0, 0x1

    .line 751
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/holoeverywhere/widget/ListView;->removeViewInfo(Landroid/view/View;Ljava/util/List;)V

    .line 754
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 770
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 771
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 772
    iput p1, p0, Lorg/holoeverywhere/widget/ListView;->mLastScrollState:I

    .line 773
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 776
    :cond_0
    return-void
.end method

.method public final setActivity(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    .line 780
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/app/Activity;->addOnWindowFocusChangeListener(Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;)V

    .line 783
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 48
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 787
    if-nez p1, :cond_3

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    .line 796
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapterHasStableIds:Z

    .line 798
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 803
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 806
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 809
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 810
    return-void

    .line 789
    :cond_3
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListView;->mForceHeaderListAdapter:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 791
    :cond_4
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mFooterViewInfos:Ljava/util/List;

    iget-object v3, p0, Lorg/holoeverywhere/widget/ListView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    goto :goto_0

    .line 794
    :cond_5
    new-instance v0, Lorg/holoeverywhere/widget/ListAdapterWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    invoke-direct {v0, p1, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 814
    iput p1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    .line 815
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 819
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 821
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 823
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 826
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 827
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->clearChoices()V

    .line 828
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setLongClickable(Z)V

    .line 831
    :cond_3
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 5
    .param p1, "alwaysShow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 835
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScrollEnabled:Z

    if-nez v1, :cond_0

    .line 836
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/ListView;->setFastScrollEnabled(Z)V

    .line 838
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/FastScroller;->setAlwaysShow(Z)V

    .line 842
    :cond_1
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeOpaqueFlags"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 843
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 844
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-class v1, Landroid/view/View;

    const-string v2, "recomputePadding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 846
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 847
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p1, :cond_2

    .line 851
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/ListView;->setPaddingFromScroller(Z)V

    .line 853
    :cond_2
    return-void

    .line 848
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 857
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListView;->mFastScrollEnabled:Z

    .line 858
    if-eqz p1, :cond_1

    .line 859
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/holoeverywhere/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/FastScroller;->stop()V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    goto :goto_0
.end method

.method public setForceHeaderListAdapter(Z)V
    .locals 0
    .param p1, "forceHeaderListAdapter"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListView;->mForceHeaderListAdapter:Z

    .line 872
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 923
    :goto_0
    return-void

    .line 879
    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v2, :cond_1

    .line 880
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/ListView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 882
    :cond_1
    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    iget v2, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceMode:I

    if-ne v2, v8, :cond_8

    .line 883
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 884
    .local v6, "oldValue":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 885
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    if-eqz p2, :cond_6

    .line 887
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 892
    :cond_3
    :goto_1
    if-eq v6, p2, :cond_4

    .line 893
    if-eqz p2, :cond_7

    .line 894
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    .line 899
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_5

    .line 900
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v3

    .line 901
    .local v3, "id":J
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V

    .line 922
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListView;->updateOnScreenCheckedViews()V

    goto :goto_0

    .line 889
    .restart local v6    # "oldValue":Z
    :cond_6
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 896
    :cond_7
    iget v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    goto :goto_2

    .line 905
    .end local v6    # "oldValue":Z
    :cond_8
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_c

    move v7, v0

    .line 906
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 907
    :cond_9
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 908
    if-eqz v7, :cond_a

    .line 909
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 912
    :cond_a
    if-eqz p2, :cond_d

    .line 913
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 914
    if-eqz v7, :cond_b

    .line 915
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 917
    :cond_b
    iput v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_c
    move v7, v1

    .line 905
    goto :goto_4

    .line 918
    .restart local v7    # "updateIds":Z
    :cond_d
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 919
    :cond_e
    iput v1, p0, Lorg/holoeverywhere/widget/ListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    .prologue
    .line 926
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;-><init>(Lorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/widget/ListView$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeWrapper;->setWrapped(Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;)V

    .line 930
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 934
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->setWrapped(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 935
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 939
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 940
    return-void
.end method

.method public setPaddingFromScroller(Z)V
    .locals 0
    .param p1, "paddingFromScroller"    # Z

    .prologue
    .line 943
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListView;->mPaddingFromScroller:Z

    .line 944
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->recomputePaddingFromScroller()V

    .line 945
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setSelection(I)V

    .line 950
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 954
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 955
    return-void
.end method

.method protected final setStateOnView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "value"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 959
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 960
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 961
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    sget-boolean v0, Lorg/holoeverywhere/widget/ListView;->USE_ACTIVATED:Z

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 968
    iput p1, p0, Lorg/holoeverywhere/widget/ListView;->mVerticalScrollbarPosition:I

    .line 969
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->setScrollbarPosition(I)V

    .line 972
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->recomputePaddingFromScroller()V

    .line 973
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 977
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 978
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 979
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v4

    .line 980
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 981
    .local v6, "handled":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 985
    :cond_0
    if-nez v6, :cond_1

    .line 986
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/holoeverywhere/widget/ListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 988
    invoke-super {p0, p1}, Landroid/widget/ListView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 992
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 996
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 999
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoloEverywhere.ListView ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") don\'t have reference on Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
