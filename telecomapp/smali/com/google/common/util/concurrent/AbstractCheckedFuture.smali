.class public abstract Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.super Ljava/lang/Object;
.source "AbstractCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/CheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# instance fields
.field protected final delegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 46
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 149
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public checkedGet()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 84
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 113
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method protected abstract mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation
.end method
