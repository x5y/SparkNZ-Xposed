.class Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;
.super Lnz/co/telecom/smartphone/fragments/OnDismiss;
.source "AdapterPlanExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

.field final synthetic val$action:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;->val$action:Ljava/lang/Object;

    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/OnDismiss;-><init>()V

    return-void
.end method


# virtual methods
.method public doDismissOK()V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForExtrasUpdate()V

    .line 127
    new-instance v0, Lnz/co/telecom/smartphone/task/ExtrasTask;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/task/ExtrasTask;-><init>()V

    .line 128
    .local v0, "et":Lnz/co/telecom/smartphone/task/ExtrasTask;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->access$000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;->val$action:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/task/ExtrasTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method
