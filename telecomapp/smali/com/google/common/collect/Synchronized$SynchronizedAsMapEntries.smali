.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;
.super Lcom/google/common/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedAsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 820
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 857
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 867
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 871
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 825
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 875
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 885
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 847
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 848
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;, "Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
