.class Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->access$201(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->access$000(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->access$101(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V

    .line 44
    return-void
.end method
