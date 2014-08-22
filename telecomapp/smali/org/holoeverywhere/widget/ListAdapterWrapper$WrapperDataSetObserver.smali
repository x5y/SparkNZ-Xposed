.class final Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WrapperDataSetObserver"
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final synthetic this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/widget/ListAdapterWrapper;Landroid/database/DataSetObserver;)V
    .locals 0
    .param p2, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 23
    iput-object p2, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 24
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 29
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->access$000(Lorg/holoeverywhere/widget/ListAdapterWrapper;)Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->access$000(Lorg/holoeverywhere/widget/ListAdapterWrapper;)Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;->onChanged()V

    .line 32
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 37
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->access$000(Lorg/holoeverywhere/widget/ListAdapterWrapper;)Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListAdapterWrapper;

    # getter for: Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->access$000(Lorg/holoeverywhere/widget/ListAdapterWrapper;)Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;->onInvalidated()V

    .line 40
    :cond_0
    return-void
.end method
