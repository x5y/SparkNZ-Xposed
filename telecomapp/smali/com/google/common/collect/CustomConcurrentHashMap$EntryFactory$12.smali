.class final enum Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$12;
.super Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/CustomConcurrentHashMap$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "original":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 495
    .local v0, "newEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$12;->copyExpirableEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 496
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$12;->copyEvictableEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 497
    return-object v0
.end method

.method newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method
