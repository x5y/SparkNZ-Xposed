.class public abstract Lcom/google/common/util/concurrent/AbstractListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "AbstractListenableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Lcom/google/common/util/concurrent/ExecutionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractListenableFuture;, "Lcom/google/common/util/concurrent/AbstractListenableFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 45
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractListenableFuture;, "Lcom/google/common/util/concurrent/AbstractListenableFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    return-void
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractListenableFuture;, "Lcom/google/common/util/concurrent/AbstractListenableFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractListenableFuture;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->run()V

    .line 62
    return-void
.end method
