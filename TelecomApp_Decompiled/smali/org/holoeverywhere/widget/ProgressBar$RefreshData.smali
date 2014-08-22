.class Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Lorg/holoeverywhere/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/util/Poolable",
        "<",
        "Lorg/holoeverywhere/widget/ProgressBar$RefreshData;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Lorg/holoeverywhere/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/util/Pool",
            "<",
            "Lorg/holoeverywhere/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field private mIsPooled:Z

.field private mNext:Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData$1;-><init>()V

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/holoeverywhere/util/Pools;->finitePool(Lorg/holoeverywhere/util/PoolableManager;I)Lorg/holoeverywhere/util/Pool;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/util/Pools;->synchronizedPool(Lorg/holoeverywhere/util/Pool;)Lorg/holoeverywhere/util/Pool;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->sPool:Lorg/holoeverywhere/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ProgressBar$1;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 77
    sget-object v1, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->sPool:Lorg/holoeverywhere/util/Pool;

    invoke-interface {v1}, Lorg/holoeverywhere/util/Pool;->acquire()Lorg/holoeverywhere/util/Poolable;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .line 78
    .local v0, "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    iput p0, v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->id:I

    .line 79
    iput p1, v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->progress:I

    .line 80
    iput-boolean p2, v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->fromUser:Z

    .line 81
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->getNextPoolable()Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    move-result-object v0

    return-object v0
.end method

.method public getNextPoolable()Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->mNext:Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->mIsPooled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->sPool:Lorg/holoeverywhere/util/Pool;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/util/Pool;->release(Lorg/holoeverywhere/util/Poolable;)V

    .line 103
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->setNextPoolable(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V

    return-void
.end method

.method public setNextPoolable(Lorg/holoeverywhere/widget/ProgressBar$RefreshData;)V
    .locals 0
    .param p1, "element"    # Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->mNext:Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .line 108
    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .param p1, "isPooled"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->mIsPooled:Z

    .line 113
    return-void
.end method
