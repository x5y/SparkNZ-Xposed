.class Lcom/google/common/collect/Interners$WeakInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakInterner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$WeakInterner$InternReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final frq:Lcom/google/common/base/FinalizableReferenceQueue;


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/Interners$1;

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Interners$WeakInterner;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/base/FinalizableReferenceQueue;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/Interners$WeakInterner;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/Interners$WeakInterner;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    .local p1, "sample":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 79
    .local v3, "hashCode":I
    new-instance v2, Lcom/google/common/collect/Interners$WeakInterner$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/google/common/collect/Interners$WeakInterner$1;-><init>(Lcom/google/common/collect/Interners$WeakInterner;ILjava/lang/Object;)V

    .line 104
    .local v2, "fakeReference":Lcom/google/common/collect/Interners$WeakInterner$1;
    iget-object v6, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 105
    .local v1, "existingRef":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "canonical":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 120
    .end local v0    # "canonical":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v4, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;-><init>(Lcom/google/common/collect/Interners$WeakInterner;Ljava/lang/Object;I)V

    .line 114
    .local v4, "newRef":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v4, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 115
    .local v5, "sneakyRef":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    if-nez v5, :cond_2

    move-object v0, p1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 119
    .restart local v0    # "canonical":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    goto :goto_0
.end method
