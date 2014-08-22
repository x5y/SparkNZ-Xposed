.class public Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

.field public position:Lorg/holoeverywhere/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method private static getRecycledOrCreate()Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 101
    sget-object v2, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 102
    :try_start_0
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 103
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    .line 107
    .local v0, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 109
    .end local v0    # "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;I)Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .prologue
    .line 114
    invoke-static {}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 115
    .local v0, "pm":Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lorg/holoeverywhere/widget/ExpandableListPosition;->obtain(IIII)Lorg/holoeverywhere/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    .line 116
    iput-object p4, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    .line 117
    iput p5, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 118
    return-object v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListPosition;->recycle()V

    .line 144
    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->position:Lorg/holoeverywhere/widget/ExpandableListPosition;

    .line 146
    :cond_0
    iput-object v1, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 148
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 134
    sget-object v1, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 136
    sget-object v0, Lorg/holoeverywhere/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
