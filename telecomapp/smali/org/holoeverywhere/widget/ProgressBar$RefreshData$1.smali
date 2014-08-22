.class final Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Lorg/holoeverywhere/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/util/PoolableManager",
        "<",
        "Lorg/holoeverywhere/widget/ProgressBar$RefreshData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Lorg/holoeverywhere/util/Poolable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;->newInstance()Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;-><init>(Lorg/holoeverywhere/widget/ProgressBar$1;)V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Lorg/holoeverywhere/util/Poolable;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/util/Poolable;

    .prologue
    .line 61
    check-cast p1, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .end local p1    # "x0":Lorg/holoeverywhere/util/Poolable;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;->onAcquired(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V

    return-void
.end method

.method public onAcquired(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V
    .locals 0
    .param p1, "element"    # Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .prologue
    .line 69
    return-void
.end method

.method public bridge synthetic onReleased(Lorg/holoeverywhere/util/Poolable;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/util/Poolable;

    .prologue
    .line 61
    check-cast p1, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .end local p1    # "x0":Lorg/holoeverywhere/util/Poolable;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;->onReleased(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V

    return-void
.end method

.method public onReleased(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V
    .locals 0
    .param p1, "element"    # Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .prologue
    .line 73
    return-void
.end method
