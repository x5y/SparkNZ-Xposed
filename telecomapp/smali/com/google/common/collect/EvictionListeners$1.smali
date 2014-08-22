.class final Lcom/google/common/collect/EvictionListeners$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Lcom/google/common/collect/MapEvictionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EvictionListeners;->asynchronous(Lcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/Executor;)Lcom/google/common/collect/MapEvictionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapEvictionListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Lcom/google/common/collect/MapEvictionListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/collect/MapEvictionListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/common/collect/EvictionListeners$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/collect/EvictionListeners$1;->val$listener:Lcom/google/common/collect/MapEvictionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEviction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/EvictionListeners$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/collect/EvictionListeners$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/collect/EvictionListeners$1$1;-><init>(Lcom/google/common/collect/EvictionListeners$1;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
