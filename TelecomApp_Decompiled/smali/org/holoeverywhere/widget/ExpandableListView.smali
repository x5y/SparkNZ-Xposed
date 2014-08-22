.class public Lorg/holoeverywhere/widget/ExpandableListView;
.super Lorg/holoeverywhere/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ExpandableListView$1;,
        Lorg/holoeverywhere/widget/ExpandableListView$SavedState;,
        Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;,
        Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;,
        Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;,
        Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;,
        Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipToPadding:Z

.field private mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mOnChildClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 99
    new-array v0, v2, [I

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 100
    new-array v0, v3, [I

    const v1, 0x10100a9

    aput v1, v0, v2

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 104
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 108
    new-array v0, v3, [I

    const v1, 0x10100a8

    aput v1, v0, v2

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    return-void

    .line 104
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 190
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mClipToPadding:Z

    .line 178
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 195
    sget-object v1, Lorg/holoeverywhere/R$styleable;->ExpandableListView:[I

    sget v2, Lorg/holoeverywhere/R$style;->Holo_ExpandableListView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 201
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    .line 204
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    .line 207
    iget v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 208
    iget v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    .line 210
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 213
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 216
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lorg/holoeverywhere/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Lorg/holoeverywhere/widget/ExpandableListPosition;

    .prologue
    .line 370
    iget v0, p1, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 373
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 408
    iget-object v7, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v7, v7, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 409
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 410
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 411
    iget-object v7, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 413
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 416
    .local v3, "stateSetIndex":I
    sget-object v4, Lorg/holoeverywhere/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 427
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 411
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 413
    goto :goto_1

    .line 419
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 420
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    iget-object v4, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v4, v4, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lorg/holoeverywhere/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 424
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 421
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Lorg/holoeverywhere/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v0, -0x1

    .line 132
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 138
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 142
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 149
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .param p0, "packedPosition"    # J

    .prologue
    .line 154
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, -0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 161
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x2

    .line 164
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 500
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 501
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 223
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 224
    .local v0, "retValue":Z
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 227
    :cond_0
    return v0
.end method

.method protected createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 232
    invoke-direct {p0, p2}, Lorg/holoeverywhere/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/ListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-direct {p0, p2}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 236
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getUnflattenedPos(I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 237
    .local v7, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    .line 238
    .local v8, "pos":Lorg/holoeverywhere/widget/ExpandableListPosition;
    invoke-direct {p0, v8}, Lorg/holoeverywhere/widget/ExpandableListView;->getChildOrGroupId(Lorg/holoeverywhere/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 239
    invoke-virtual {v8}, Lorg/holoeverywhere/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 240
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 241
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 246
    invoke-super/range {p0 .. p1}, Lorg/holoeverywhere/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/16 v18, 0x0

    .line 251
    .local v18, "saveCount":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mClipToPadding:Z

    .line 252
    .local v8, "clipToPadding":Z
    if-eqz v8, :cond_2

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 254
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getScrollX()I

    move-result v19

    .line 255
    .local v19, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getScrollY()I

    move-result v20

    .line 256
    .local v20, "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingLeft()I

    move-result v22

    add-int v22, v22, v19

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingTop()I

    move-result v23

    add-int v23, v23, v20

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getRight()I

    move-result v24

    add-int v24, v24, v19

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getBottom()I

    move-result v25

    add-int v25, v25, v20

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 260
    .end local v19    # "scrollX":I
    .end local v20    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 261
    .local v9, "headerViewsCount":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 262
    .local v14, "lastChildFlPos":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getBottom()I

    move-result v16

    .line 267
    .local v16, "myB":I
    const/4 v15, -0x4

    .line 268
    .local v15, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 269
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 270
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v7, v22, v9

    .local v7, "childFlPos":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 271
    if-gez v7, :cond_4

    .line 270
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 273
    :cond_4
    if-le v7, v14, :cond_6

    .line 315
    :cond_5
    if-eqz v8, :cond_0

    .line 316
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 276
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/holoeverywhere/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 277
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 278
    .local v21, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 279
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getUnflattenedPos(I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 283
    .local v17, "pos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_7

    .line 284
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 293
    :goto_5
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingLeft()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 294
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPaddingLeft()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 295
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    .line 298
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 299
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ExpandableListView;->isStackFromBottom()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 300
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 301
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 306
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->getIndicator(Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 307
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_8

    .line 308
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_2

    .line 285
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_3

    .line 287
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_4

    .line 290
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 303
    :cond_c
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 304
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_6
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v2, p3, v4

    .line 323
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 324
    invoke-direct {p0, v2}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 326
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getUnflattenedPos(I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 327
    .local v3, "pos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v4, v4, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 331
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 339
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 336
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 338
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Lorg/holoeverywhere/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 346
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtain(IIII)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    .line 348
    .local v0, "elGroupPos":Lorg/holoeverywhere/widget/ExpandableListPosition;
    iget-object v5, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getFlattenedPos(Lorg/holoeverywhere/widget/ExpandableListPosition;)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 349
    .local v2, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListPosition;->recycle()V

    .line 350
    iget-object v5, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Lorg/holoeverywhere/widget/ExpandableListConnector;->expandGroup(Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 351
    .local v3, "retValue":Z
    iget-object v5, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_0

    .line 352
    iget-object v5, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 355
    :cond_0
    if-eqz p2, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1

    .line 356
    iget-object v5, v2, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v1, v5, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    .line 357
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 358
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Lorg/holoeverywhere/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 361
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 362
    return v3
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    const-wide v1, 0xffffffffL

    .line 389
    :goto_0
    return-wide v1

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 386
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getUnflattenedPos(I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 387
    .local v3, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    invoke-virtual {v4}, Lorg/holoeverywhere/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 388
    .local v1, "packedPos":J
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .prologue
    .line 393
    invoke-static {p1, p2}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtainPosition(J)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    .line 395
    .local v0, "elPackedPos":Lorg/holoeverywhere/widget/ExpandableListPosition;
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v3, v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getFlattenedPos(Lorg/holoeverywhere/widget/ExpandableListPosition;)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 396
    .local v2, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListPosition;->recycle()V

    .line 397
    iget-object v3, v2, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v1, v3, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    .line 398
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 399
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 432
    .local v1, "packedPos":J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 433
    const-wide/16 v3, -0x1

    .line 439
    :goto_0
    return-wide v3

    .line 435
    :cond_0
    invoke-static {v1, v2}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 436
    .local v0, "groupPos":I
    invoke-static {v1, v2}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 437
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 439
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 445
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 449
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getUnflattenedPos(I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 450
    .local v9, "posMetadata":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->getChildOrGroupId(Lorg/holoeverywhere/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 452
    iget-object v0, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v0, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 453
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v3, v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Lorg/holoeverywhere/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v9}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 457
    const/4 v10, 0x1

    .line 492
    :goto_0
    return v10

    .line 460
    :cond_0
    invoke-virtual {v9}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Lorg/holoeverywhere/widget/ExpandableListConnector;->collapseGroup(Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->playSoundEffect(I)V

    .line 463
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v1, v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 482
    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 491
    .local v10, "returnValue":Z
    :goto_2
    invoke-virtual {v9}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 467
    .end local v10    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Lorg/holoeverywhere/widget/ExpandableListConnector;->expandGroup(Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->playSoundEffect(I)V

    .line 469
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v1, v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 473
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 474
    iget-object v0, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v8, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    .line 475
    .local v8, "groupPos":I
    iget-object v0, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v7, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    .line 476
    .local v7, "groupFlatPos":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 477
    .local v11, "shiftedGroupPosition":I
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Lorg/holoeverywhere/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 484
    .end local v7    # "groupFlatPos":I
    .end local v8    # "groupPos":I
    .end local v11    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnChildClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->playSoundEffect(I)V

    .line 486
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnChildClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v3, v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v4, v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;->onChildClick(Lorg/holoeverywhere/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto :goto_0

    .line 489
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 507
    const-class v0, Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 512
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 513
    const-class v0, Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 518
    instance-of v1, p1, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 519
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 522
    check-cast v0, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;

    .line 523
    .local v0, "ss":Lorg/holoeverywhere/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 524
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    iget-object v2, v0, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 531
    invoke-super {p0}, Lorg/holoeverywhere/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 532
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 538
    invoke-direct {p0, p2}, Lorg/holoeverywhere/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-super {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 541
    :cond_0
    invoke-direct {p0, p2}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 542
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/holoeverywhere/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 546
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 547
    if-eqz p1, :cond_0

    .line 548
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    .line 552
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 563
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 564
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 567
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 568
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 571
    iput p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 572
    iput p2, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 573
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mClipToPadding:Z

    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListView;->setClipToPadding(Z)V

    .line 578
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 581
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 582
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 583
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    .line 585
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 588
    iput p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorLeft:I

    .line 589
    iput p2, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mIndicatorRight:I

    .line 590
    return-void
.end method

.method public setOnChildClickListener(Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 593
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnChildClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;

    .line 594
    return-void
.end method

.method public setOnGroupClickListener(Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 597
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupClickListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupClickListener;

    .line 598
    return-void
.end method

.method public setOnGroupCollapseListener(Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 602
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupCollapseListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;

    .line 603
    return-void
.end method

.method public setOnGroupExpandListener(Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 607
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mOnGroupExpandListener:Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;

    .line 608
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 612
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 613
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 616
    invoke-static {p1, p2}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtainChildPosition(II)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v1

    .line 618
    .local v1, "elChildPos":Lorg/holoeverywhere/widget/ExpandableListPosition;
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getFlattenedPos(Lorg/holoeverywhere/widget/ExpandableListPosition;)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 619
    .local v2, "flatChildPos":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 620
    if-nez p3, :cond_0

    .line 621
    const/4 v3, 0x0

    .line 633
    :goto_0
    return v3

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->expandGroup(I)Z

    .line 624
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getFlattenedPos(Lorg/holoeverywhere/widget/ExpandableListPosition;)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 625
    if-nez v2, :cond_1

    .line 626
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    :cond_1
    iget-object v3, v2, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v3, v3, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lorg/holoeverywhere/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 630
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setSelection(I)V

    .line 631
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ExpandableListPosition;->recycle()V

    .line 632
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 633
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 637
    invoke-static {p1}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtainGroupPosition(I)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v1

    .line 639
    .local v1, "elGroupPos":Lorg/holoeverywhere/widget/ExpandableListPosition;
    iget-object v3, p0, Lorg/holoeverywhere/widget/ExpandableListView;->mConnector:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getFlattenedPos(Lorg/holoeverywhere/widget/ExpandableListPosition;)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 640
    .local v2, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ExpandableListPosition;->recycle()V

    .line 641
    iget-object v3, v2, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    iget v3, v3, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lorg/holoeverywhere/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 642
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lorg/holoeverywhere/widget/ListView;->setSelection(I)V

    .line 643
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 644
    return-void
.end method
