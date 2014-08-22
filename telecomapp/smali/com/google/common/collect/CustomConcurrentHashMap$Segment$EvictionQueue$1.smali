.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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
.end field

.field previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;)V
    .locals 0

    .prologue
    .line 2907
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2909
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2919
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 2959
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 2949
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2953
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2945
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 2912
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 2968
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 2922
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 2977
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2931
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyKeyReclaimed()V
    .locals 0

    .prologue
    .line 2938
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    return-void
.end method

.method public notifyValueReclaimed(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2941
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 2963
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 2916
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2917
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2972
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 2926
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2927
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2981
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2935
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue.1;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
