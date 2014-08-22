.class public final Lcom/google/inject/internal/util/$Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/inject/internal/util/$Stopwatch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/util/$Stopwatch;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/inject/internal/util/$Stopwatch;->start:J

    return-void
.end method


# virtual methods
.method public reset()J
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, "now":J
    :try_start_0
    iget-wide v2, p0, Lcom/google/inject/internal/util/$Stopwatch;->start:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    .line 39
    iput-wide v0, p0, Lcom/google/inject/internal/util/$Stopwatch;->start:J

    return-wide v2

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Lcom/google/inject/internal/util/$Stopwatch;->start:J

    throw v2
.end method

.method public resetAndLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/google/inject/internal/util/$Stopwatch;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/util/$Stopwatch;->reset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 48
    return-void
.end method
