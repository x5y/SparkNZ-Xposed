.class Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lorg/holoeverywhere/widget/AdapterView;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 28
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/widget/AdapterView;->mDataChanged:Z

    .line 33
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget v1, v1, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lorg/holoeverywhere/widget/AdapterView;->mOldItemCount:I

    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    .line 35
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget v0, v0, Lorg/holoeverywhere/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget v0, v0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lorg/holoeverywhere/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/AdapterView;->access$000(Lorg/holoeverywhere/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 43
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->checkFocus()V

    .line 44
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->requestLayout()V

    .line 45
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 49
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/widget/AdapterView;->mDataChanged:Z

    .line 50
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    # invokes: Lorg/holoeverywhere/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lorg/holoeverywhere/widget/AdapterView;->access$100(Lorg/holoeverywhere/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget v1, v1, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lorg/holoeverywhere/widget/AdapterView;->mOldItemCount:I

    .line 54
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput v3, v0, Lorg/holoeverywhere/widget/AdapterView;->mItemCount:I

    .line 55
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput v2, v0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedPosition:I

    .line 56
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput-wide v4, v0, Lorg/holoeverywhere/widget/AdapterView;->mSelectedRowId:J

    .line 57
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput v2, v0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedPosition:I

    .line 58
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput-wide v4, v0, Lorg/holoeverywhere/widget/AdapterView;->mNextSelectedRowId:J

    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iput-boolean v3, v0, Lorg/holoeverywhere/widget/AdapterView;->mNeedSync:Z

    .line 60
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->checkFocus()V

    .line 61
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$AdapterDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->requestLayout()V

    .line 62
    return-void
.end method
