.class Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;
.super Landroid/database/DataSetObserver;
.source "CompatibleStickyListHeadersListView.java"


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
    .line 60
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # invokes: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$100(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V

    .line 64
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    # invokes: Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->reset()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->access$100(Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;)V

    .line 69
    return-void
.end method
