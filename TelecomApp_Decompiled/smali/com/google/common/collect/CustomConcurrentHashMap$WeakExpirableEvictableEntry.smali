.class Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1525
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->time:J

    .line 1535
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1546
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1559
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1570
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1521
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1528
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1539
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1574
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1550
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 1532
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->time:J

    .line 1533
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1568
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1544
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1578
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1579
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1554
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1555
    return-void
.end method
