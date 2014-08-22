.class Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;
.super Lcom/google/common/base/FinalizableSoftReference;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableSoftReference",
        "<TK;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final map:Lcom/google/common/collect/CustomConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
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
    .line 1097
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1170
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1098
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    .line 1099
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->hash:I

    .line 1100
    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1101
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 0

    .prologue
    .line 1110
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->notifyKeyReclaimed()V

    .line 1111
    return-void
.end method

.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1121
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1188
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 1192
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 1149
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
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
    .line 1130
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
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
    .line 1158
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
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
    .line 1139
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
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
    .line 1174
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method public notifyKeyReclaimed()V
    .locals 1

    .prologue
    .line 1115
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->reclaimKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1116
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
    .line 1184
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->reclaimValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1185
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1125
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1153
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1134
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1162
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1143
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
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
    .line 1178
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1179
    .local v0, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1180
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->clear()V

    .line 1181
    return-void
.end method
