.class final Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;
.super Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3590
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3590
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3594
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->nextEntry()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
