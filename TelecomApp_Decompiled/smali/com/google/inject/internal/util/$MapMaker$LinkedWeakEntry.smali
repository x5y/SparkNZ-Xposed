.class Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry;
.super Lcom/google/inject/internal/util/$MapMaker$WeakEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedWeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/util/$MapMaker$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/util/$MapMaker$ReferenceEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/util/$CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry;, "Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry<TK;TV;>;"
    .local p1, "internals":Lcom/google/inject/internal/util/$CustomConcurrentHashMap$Internals;, "Lcom/google/inject/internal/util/$CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry;, "Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/util/$MapMaker$WeakEntry;-><init>(Lcom/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 987
    iput-object p4, p0, Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry;->next:Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry;

    .line 988
    return-void
.end method


# virtual methods
.method public getNext()Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "this":Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry;, "Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/inject/internal/util/$MapMaker$LinkedWeakEntry;->next:Lcom/google/inject/internal/util/$MapMaker$ReferenceEntry;

    return-object v0
.end method
