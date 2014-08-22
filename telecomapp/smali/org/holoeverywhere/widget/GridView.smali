.class public Lorg/holoeverywhere/widget/GridView;
.super Landroid/widget/GridView;
.source "GridView.java"

# interfaces
.implements Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;
.implements Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/GridView$SavedState;,
        Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;,
        Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;
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
            "Lorg/holoeverywhere/widget/GridView;",
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

.field private mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

.field private final mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPaddingFromScroller:Z

.field private mVerticalScrollbarPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/holoeverywhere/widget/GridView;->USE_ACTIVATED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 218
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
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

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    .line 183
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/GridView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 184
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/GridView;->mForceHeaderListAdapter:Z

    .line 186
    iput v3, p0, Lorg/holoeverywhere/widget/GridView;->mLastScrollState:I

    .line 187
    new-instance v1, Lorg/holoeverywhere/widget/GridView$1;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/GridView$1;-><init>(Lorg/holoeverywhere/widget/GridView;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    .line 210
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/GridView;->mPaddingFromScroller:Z

    .line 211
    iput v3, p0, Lorg/holoeverywhere/widget/GridView;->mVerticalScrollbarPosition:I

    .line 224
    instance-of v1, p1, Lorg/holoeverywhere/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 225
    check-cast v1, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/GridView;->setActivity(Lorg/holoeverywhere/app/Activity;)V

    .line 227
    :cond_0
    sget-boolean v1, Lorg/holoeverywhere/HoloEverywhere;->DISABLE_OVERSCROLL_EFFECT:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 228
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/GridView;->setOverScrollMode(I)V

    .line 231
    :cond_1
    new-instance v1, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;-><init>(Lorg/holoeverywhere/widget/GridView;Lorg/holoeverywhere/widget/GridView$1;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    .line 232
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 233
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/GridView;->setLongClickable(Z)V

    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 236
    invoke-super {p0, v3}, Landroid/widget/GridView;->setFastScrollAlwaysVisible(Z)V

    .line 237
    invoke-super {p0, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 239
    :cond_2
    invoke-super {p0, v3}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 240
    sget-object v1, Lorg/holoeverywhere/R$styleable;->AbsListView:[I

    sget v2, Lorg/holoeverywhere/R$style;->Holo_ListView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/GridView;->setFastScrollEnabled(Z)V

    .line 243
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/GridView;->setFastScrollAlwaysVisible(Z)V

    .line 245
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/GridView;->setChoiceMode(I)V

    .line 246
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    return-void
.end method

.method static synthetic access$002(Lorg/holoeverywhere/widget/GridView;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/GridView;
    .param p1, "x1"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/GridView;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/GridView;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/GridView;)Lorg/holoeverywhere/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

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
    .line 728
    .local p2, "where":Ljava/util/List;, "Ljava/util/List<Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 729
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 730
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    .line 731
    .local v1, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iget-object v3, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 732
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 736
    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_0
    return-void

    .line 729
    .restart local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .prologue
    .line 973
    iget-object v6, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_1

    .line 984
    :cond_0
    return-void

    .line 976
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    .line 977
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getChildCount()I

    move-result v1

    .line 978
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 979
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 981
    .local v4, "position":I
    iget-object v6, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 982
    .local v5, "value":Z
    invoke-virtual {p0, v0, v5}, Lorg/holoeverywhere/widget/GridView;->setStateOnView(Landroid/view/View;Z)V

    .line 978
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/GridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 251
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 254
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    instance-of v1, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add footer view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;-><init>()V

    .line 259
    .local v0, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iput-object p1, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    .line 260
    iput-object p2, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    .line 261
    iput-boolean p3, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    .line 262
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->invalidateViews()V

    .line 266
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/GridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 270
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 273
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    instance-of v1, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_0
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;-><init>()V

    .line 278
    .local v0, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iput-object p1, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    .line 279
    iput-object p2, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    .line 280
    iput-boolean p3, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    .line 281
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->invalidateViews()V

    .line 285
    :cond_1
    return-void
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 295
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    .line 296
    return-void
.end method

.method protected createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 300
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 306
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getScrollY()I

    move-result v1

    .line 308
    .local v1, "scrollY":I
    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 310
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 318
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v1    # "scrollY":I
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getActivity()Lorg/holoeverywhere/app/Activity;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    return-object v0
.end method

.method public getAdapterSource()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 336
    iget v4, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-nez v4, :cond_2

    .line 337
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 345
    :cond_1
    return-object v3

    .line 339
    :cond_2
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 340
    .local v2, "idStates":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 341
    .local v0, "count":I
    new-array v3, v0, [J

    .line 342
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 343
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 350
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 389
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/GridView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 390
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v0

    .line 391
    .local v0, "superWidth":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/GridView;->mForceFastScrollAlwaysVisibleDisable:Z

    .line 392
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isFastScrollAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 395
    .end local v0    # "superWidth":I
    :cond_0
    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 399
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 400
    .local v0, "mFirstPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getCount()I

    move-result v1

    .line 401
    .local v1, "mItemCount":I
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, p0, v0, v3, v1}, Lorg/holoeverywhere/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 404
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getChildCount()I

    move-result v3

    invoke-interface {v2, p0, v0, v3, v1}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 407
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lorg/holoeverywhere/widget/GridView;->onScrollChanged(IIII)V

    .line 408
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    return v0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/GridView;->mForceFastScrollAlwaysVisibleDisable:Z

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

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
    .line 426
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScrollEnabled:Z

    return v0
.end method

.method public isForceHeaderListAdapter()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mForceHeaderListAdapter:Z

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
    .line 436
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 437
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 438
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x1

    .line 444
    :goto_1
    return v1

    .line 442
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 444
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 449
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaddingFromScroller()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mPaddingFromScroller:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

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
    .line 465
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    .line 467
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    .line 473
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 478
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V

    .line 483
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    .line 490
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    const/4 v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 498
    sparse-switch p1, :sswitch_data_0

    .line 518
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 501
    :sswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 507
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/holoeverywhere/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 511
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 513
    :cond_2
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/GridView;->setPressed(Z)V

    goto :goto_0

    .line 498
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
    .line 523
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getCount()I

    move-result v1

    .line 524
    .local v1, "mOldItemCount":I
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 525
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getCount()I

    move-result v0

    .line 526
    .local v0, "mItemCount":I
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 527
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2, v1, v0}, Lorg/holoeverywhere/widget/FastScroller;->onItemCountChanged(II)V

    .line 529
    :cond_0
    return-void
.end method

.method public onPrepareView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 532
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/GridView;->setStateOnView(Landroid/view/View;Z)V

    .line 539
    :cond_0
    :goto_0
    return-object p1

    .line 536
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/GridView;->setStateOnView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 544
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/GridView$SavedState;

    .line 545
    .local v0, "ss":Lorg/holoeverywhere/widget/GridView$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/GridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 546
    iget-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 549
    :cond_0
    iget-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 552
    :cond_1
    iget v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkedItemCount:I

    iput v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    .line 553
    iget-boolean v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/GridView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 557
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->requestLayout()V

    .line 558
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 562
    new-instance v0, Lorg/holoeverywhere/widget/GridView$SavedState;

    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/GridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 563
    .local v0, "ss":Lorg/holoeverywhere/widget/GridView$SavedState;
    iget v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->inActionMode:Z

    .line 564
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iput-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 565
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iput-object v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 566
    iget v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    iput v1, v0, Lorg/holoeverywhere/widget/GridView$SavedState;->checkedItemCount:I

    .line 567
    return-object v0

    .line 563
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
    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onSizeChanged(IIII)V

    .line 573
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/FastScroller;->onSizeChanged(IIII)V

    .line 576
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 581
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 589
    :cond_1
    :goto_0
    return v0

    .line 583
    :cond_2
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/GridView;->mIsAttached:Z

    if-eqz v2, :cond_1

    .line 586
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/widget/GridView;->onWindowFocusChanged(Z)V

    .line 595
    if-eqz p1, :cond_0

    .line 596
    invoke-direct {p0}, Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V

    .line 598
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

    .line 602
    const/4 v8, 0x0

    .line 603
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 604
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v2, :cond_4

    .line 605
    const/4 v8, 0x1

    .line 606
    const/4 v6, 0x0

    .line 607
    .local v6, "checkedStateChanged":Z
    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v2, :cond_9

    .line 609
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_6

    move v5, v0

    .line 610
    .local v5, "newValue":Z
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 611
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    if-eqz v5, :cond_7

    .line 613
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 618
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    .line 619
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    .line 623
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V

    .line 626
    const/4 v7, 0x0

    .line 628
    :cond_2
    const/4 v6, 0x1

    .line 644
    .end local v5    # "newValue":Z
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 645
    invoke-direct {p0}, Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V

    .line 648
    .end local v6    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 651
    :cond_5
    return v8

    .restart local v6    # "checkedStateChanged":Z
    :cond_6
    move v5, v1

    .line 609
    goto :goto_0

    .line 615
    .restart local v5    # "newValue":Z
    :cond_7
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 621
    :cond_8
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    goto :goto_2

    .line 629
    .end local v5    # "newValue":Z
    :cond_9
    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-ne v2, v0, :cond_3

    .line 630
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_c

    move v5, v0

    .line 631
    .restart local v5    # "newValue":Z
    :goto_4
    if-eqz v5, :cond_d

    .line 632
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 633
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 634
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 635
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 636
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 638
    :cond_a
    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    .line 642
    :cond_b
    :goto_5
    const/4 v6, 0x1

    goto :goto_3

    .end local v5    # "newValue":Z
    :cond_c
    move v5, v1

    .line 630
    goto :goto_4

    .line 639
    .restart local v5    # "newValue":Z
    :cond_d
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 640
    :cond_e
    iput v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

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

    .line 656
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/GridView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, p2, v6}, Lorg/holoeverywhere/widget/GridView;->setItemChecked(IZ)V

    .line 660
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/GridView;->performHapticFeedback(I)Z

    .line 676
    :cond_0
    :goto_0
    return v6

    .line 664
    :cond_1
    const/4 v6, 0x0

    .line 665
    .local v6, "handled":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 669
    :cond_2
    if-nez v6, :cond_3

    .line 670
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/GridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 671
    invoke-super {p0, p0}, Landroid/widget/GridView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 673
    :cond_3
    if-eqz v6, :cond_0

    .line 674
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/GridView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method protected recomputePaddingFromScroller()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 680
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getPaddingLeft()I

    move-result v1

    .line 681
    .local v1, "left":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getPaddingTop()I

    move-result v4

    .line 682
    .local v4, "top":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getPaddingRight()I

    move-result v2

    .line 683
    .local v2, "right":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getPaddingBottom()I

    move-result v0

    .line 684
    .local v0, "bottom":I
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/GridView;->mPaddingFromScroller:Z

    if-eqz v5, :cond_0

    .line 685
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    .line 686
    .local v3, "scrollbarWidth":I
    iget v5, p0, Lorg/holoeverywhere/widget/GridView;->mVerticalScrollbarPosition:I

    packed-switch v5, :pswitch_data_0

    .line 693
    invoke-virtual {p0, v1, v4, v3, v0}, Lorg/holoeverywhere/widget/GridView;->setPadding(IIII)V

    .line 699
    .end local v3    # "scrollbarWidth":I
    :goto_0
    return-void

    .line 688
    .restart local v3    # "scrollbarWidth":I
    :pswitch_0
    invoke-virtual {p0, v3, v4, v2, v0}, Lorg/holoeverywhere/widget/GridView;->setPadding(IIII)V

    goto :goto_0

    .line 697
    .end local v3    # "scrollbarWidth":I
    :cond_0
    invoke-virtual {p0, v6, v4, v6, v0}, Lorg/holoeverywhere/widget/GridView;->setPadding(IIII)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 702
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "result":Z
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->invalidateViews()V

    .line 706
    const/4 v0, 0x1

    .line 708
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/holoeverywhere/widget/GridView;->removeViewInfo(Landroid/view/View;Ljava/util/List;)V

    .line 711
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
    .line 715
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "result":Z
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->invalidateViews()V

    .line 719
    const/4 v0, 0x1

    .line 721
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/holoeverywhere/widget/GridView;->removeViewInfo(Landroid/view/View;Ljava/util/List;)V

    .line 724
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
    .line 740
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 742
    iput p1, p0, Lorg/holoeverywhere/widget/GridView;->mLastScrollState:I

    .line 743
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 746
    :cond_0
    return-void
.end method

.method public final setActivity(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 749
    iput-object p1, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    .line 750
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/app/Activity;->addOnWindowFocusChangeListener(Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;)V

    .line 753
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 47
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 757
    if-nez p1, :cond_3

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    .line 766
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapterHasStableIds:Z

    .line 768
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 776
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 779
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 780
    return-void

    .line 759
    :cond_3
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/GridView;->mForceHeaderListAdapter:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 761
    :cond_4
    new-instance v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mFooterViewInfos:Ljava/util/List;

    iget-object v3, p0, Lorg/holoeverywhere/widget/GridView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    goto :goto_0

    .line 764
    :cond_5
    new-instance v0, Lorg/holoeverywhere/widget/ListAdapterWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mListAdapterCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    invoke-direct {v0, p1, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 784
    iput p1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    .line 785
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 789
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 791
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 793
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 796
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 797
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->clearChoices()V

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/GridView;->setLongClickable(Z)V

    .line 801
    :cond_3
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 5
    .param p1, "alwaysShow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 805
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScrollEnabled:Z

    if-nez v1, :cond_0

    .line 806
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/GridView;->setFastScrollEnabled(Z)V

    .line 808
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/FastScroller;->setAlwaysShow(Z)V

    .line 812
    :cond_1
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeOpaqueFlags"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 813
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 814
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-class v1, Landroid/view/View;

    const-string v2, "recomputePadding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 816
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 817
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p1, :cond_2

    .line 821
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/GridView;->setPaddingFromScroller(Z)V

    .line 823
    :cond_2
    return-void

    .line 818
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/GridView;->mFastScrollEnabled:Z

    .line 828
    if-eqz p1, :cond_1

    .line 829
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/holoeverywhere/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/FastScroller;->stop()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    goto :goto_0
.end method

.method public setForceHeaderListAdapter(Z)V
    .locals 0
    .param p1, "forceHeaderListAdapter"    # Z

    .prologue
    .line 841
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/GridView;->mForceHeaderListAdapter:Z

    .line 842
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

    .line 846
    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 893
    :goto_0
    return-void

    .line 849
    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v2, :cond_1

    .line 850
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/GridView;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 852
    :cond_1
    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    iget v2, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceMode:I

    if-ne v2, v8, :cond_8

    .line 853
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 854
    .local v6, "oldValue":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 855
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    if-eqz p2, :cond_6

    .line 857
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 862
    :cond_3
    :goto_1
    if-eq v6, p2, :cond_4

    .line 863
    if-eqz p2, :cond_7

    .line 864
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    .line 869
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_5

    .line 870
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v3

    .line 871
    .local v3, "id":J
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V

    .line 892
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V

    goto :goto_0

    .line 859
    .restart local v6    # "oldValue":Z
    :cond_6
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 866
    :cond_7
    iget v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    goto :goto_2

    .line 875
    .end local v6    # "oldValue":Z
    :cond_8
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_c

    move v7, v0

    .line 876
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/GridView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 877
    :cond_9
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 878
    if-eqz v7, :cond_a

    .line 879
    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 882
    :cond_a
    if-eqz p2, :cond_d

    .line 883
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 884
    if-eqz v7, :cond_b

    .line 885
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 887
    :cond_b
    iput v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_c
    move v7, v1

    .line 875
    goto :goto_4

    .line 888
    .restart local v7    # "updateIds":Z
    :cond_d
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 889
    :cond_e
    iput v1, p0, Lorg/holoeverywhere/widget/GridView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    .prologue
    .line 896
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;-><init>(Lorg/holoeverywhere/widget/GridView;Lorg/holoeverywhere/widget/GridView$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    .line 899
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mMultiChoiceModeCallback:Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->setWrapped(Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;)V

    .line 900
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 904
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->setWrapped(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 905
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 909
    iput-object p1, p0, Lorg/holoeverywhere/widget/GridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 910
    return-void
.end method

.method public setPaddingFromScroller(Z)V
    .locals 0
    .param p1, "paddingFromScroller"    # Z

    .prologue
    .line 913
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/GridView;->mPaddingFromScroller:Z

    .line 914
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->recomputePaddingFromScroller()V

    .line 915
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/GridView;->setSelection(I)V

    .line 919
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 923
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 924
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
    .line 928
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 929
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 930
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    sget-boolean v0, Lorg/holoeverywhere/widget/GridView;->USE_ACTIVATED:Z

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 937
    iput p1, p0, Lorg/holoeverywhere/widget/GridView;->mVerticalScrollbarPosition:I

    .line 938
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/FastScroller;->setScrollbarPosition(I)V

    .line 941
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->recomputePaddingFromScroller()V

    .line 942
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 947
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 948
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mAdapter:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v4

    .line 949
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 950
    .local v6, "handled":Z
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mOnItemLongClickListenerWrapper:Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;

    # getter for: Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;->access$400(Lorg/holoeverywhere/widget/GridView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 954
    :cond_0
    if-nez v6, :cond_1

    .line 955
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/holoeverywhere/widget/GridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 957
    invoke-super {p0, p1}, Landroid/widget/GridView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 961
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
    .line 965
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 968
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
