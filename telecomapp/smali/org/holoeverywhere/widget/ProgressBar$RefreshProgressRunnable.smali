.class Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ProgressBar;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ProgressBar;Lorg/holoeverywhere/widget/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ProgressBar;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ProgressBar$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lorg/holoeverywhere/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 119
    iget-object v4, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    monitor-enter v4

    .line 120
    :try_start_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    # getter for: Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/holoeverywhere/widget/ProgressBar;->access$100(Lorg/holoeverywhere/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 122
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    # getter for: Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/holoeverywhere/widget/ProgressBar;->access$100(Lorg/holoeverywhere/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .line 123
    .local v2, "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    iget v5, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->id:I

    iget v6, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v7, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    # invokes: Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v3, v5, v6, v7, v8}, Lorg/holoeverywhere/widget/ProgressBar;->access$200(Lorg/holoeverywhere/widget/ProgressBar;IIZZ)V

    .line 124
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->recycle()V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    # getter for: Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/holoeverywhere/widget/ProgressBar;->access$100(Lorg/holoeverywhere/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;->this$0:Lorg/holoeverywhere/widget/ProgressBar;

    const/4 v5, 0x0

    # setter for: Lorg/holoeverywhere/widget/ProgressBar;->mRefreshIsPosted:Z
    invoke-static {v3, v5}, Lorg/holoeverywhere/widget/ProgressBar;->access$302(Lorg/holoeverywhere/widget/ProgressBar;Z)Z

    .line 128
    monitor-exit v4

    .line 129
    return-void

    .line 128
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
