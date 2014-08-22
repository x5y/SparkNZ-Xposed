.class final Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;
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
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3533
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3536
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;->nextEntry()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
