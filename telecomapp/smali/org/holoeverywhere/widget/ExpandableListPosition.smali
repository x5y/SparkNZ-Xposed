.class public Lorg/holoeverywhere/widget/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/holoeverywhere/widget/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static getRecycledOrCreate()Lorg/holoeverywhere/widget/ExpandableListPosition;
    .locals 4

    .prologue
    .line 15
    sget-object v2, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 16
    :try_start_0
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 17
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/ExpandableListPosition;

    .line 21
    .local v0, "elp":Lorg/holoeverywhere/widget/ExpandableListPosition;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListPosition;->resetState()V

    .line 23
    .end local v0    # "elp":Lorg/holoeverywhere/widget/ExpandableListPosition;
    :goto_0
    return-object v0

    .line 19
    :cond_0
    :try_start_1
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListPosition;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListPosition;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIII)Lorg/holoeverywhere/widget/ExpandableListPosition;
    .locals 1
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    .prologue
    .line 27
    invoke-static {}, Lorg/holoeverywhere/widget/ExpandableListPosition;->getRecycledOrCreate()Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    .line 28
    .local v0, "elp":Lorg/holoeverywhere/widget/ExpandableListPosition;
    iput p0, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    .line 29
    iput p1, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    .line 30
    iput p2, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    .line 31
    iput p3, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    .line 32
    return-object v0
.end method

.method static obtainChildPosition(II)Lorg/holoeverywhere/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtain(IIII)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Lorg/holoeverywhere/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtain(IIII)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Lorg/holoeverywhere/widget/ExpandableListPosition;
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const/4 v3, 0x1

    .line 44
    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {}, Lorg/holoeverywhere/widget/ExpandableListPosition;->getRecycledOrCreate()Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v0

    .line 49
    .local v0, "elp":Lorg/holoeverywhere/widget/ExpandableListPosition;
    invoke-static {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    .line 50
    invoke-static {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 51
    iput v3, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    .line 52
    invoke-static {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    .line 88
    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    .line 89
    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->flatListPos:I

    .line 90
    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    .line 91
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    iget v1, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListPosition;->groupPos:I

    invoke-static {v0}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 79
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 81
    sget-object v0, Lorg/holoeverywhere/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
