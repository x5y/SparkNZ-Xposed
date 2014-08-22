.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;
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
.field nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;)V
    .locals 0

    .prologue
    .line 3095
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3104
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3114
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 3099
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 3144
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
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
    .line 3148
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
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
    .line 3140
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
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
    .line 3154
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 3107
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3163
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 3117
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 3126
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyKeyReclaimed()V
    .locals 0

    .prologue
    .line 3133
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
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
    .line 3136
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 3102
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3158
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 3111
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3112
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3167
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 3121
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3122
    return-void
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
    .line 3130
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.1;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
