.class Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;
.super Ljava/lang/Object;
.source "AdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->configureHeader(Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    iput p2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;
    invoke-static {v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->access$300(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    iget-object v2, v2, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    iget v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 140
    .local v0, "headerId":J
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->this$0:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    # getter for: Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;
    invoke-static {v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->access$300(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    iget v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, p1, v3, v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 142
    .end local v0    # "headerId":J
    :cond_0
    return-void
.end method
