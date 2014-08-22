.class Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry",
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


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
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
    .line 996
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1001
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1012
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 997
    return-void
.end method


# virtual methods
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
    .line 1005
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1016
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 1009
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1010
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
    .line 1020
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1021
    return-void
.end method
