.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->transform(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private exception:Ljava/util/concurrent/ExecutionException;

.field private final lock:Ljava/lang/Object;

.field private set:Z

.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$future:Ljava/util/concurrent/Future;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$5;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->lock:Ljava/lang/Object;

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z

    .line 510
    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    .line 511
    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->exception:Ljava/util/concurrent/ExecutionException;

    return-void
.end method

.method private apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "raw":Ljava/lang/Object;, "TI;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$5;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 528
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->exception:Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->exception:Ljava/util/concurrent/ExecutionException;

    throw v1

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->exception:Ljava/util/concurrent/ExecutionException;

    goto :goto_0

    .line 531
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Error;
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->exception:Ljava/util/concurrent/ExecutionException;

    goto :goto_0

    .line 540
    .end local v0    # "e":Ljava/lang/Error;
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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
            ")TO;"
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
    .line 521
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
