.class Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;
.super Ljava/lang/Object;
.source "CompatibleStickyListHeadersListView.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;


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
    .line 50
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "itemPosition"    # I
    .param p3, "headerId"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$000(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$000(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 57
    :cond_0
    return-void
.end method
