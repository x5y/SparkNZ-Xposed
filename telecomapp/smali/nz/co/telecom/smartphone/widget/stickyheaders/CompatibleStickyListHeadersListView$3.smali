.class Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "CompatibleStickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$200(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$200(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 86
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # invokes: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->scrollChanged(I)V
    invoke-static {v0, p2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$300(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;I)V

    .line 89
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$200(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$3;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$200(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 79
    :cond_0
    return-void
.end method
