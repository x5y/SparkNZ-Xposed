.class Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$2;
.super Ljava/lang/Object;
.source "AdapterAlertsAndNotifications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    check-cast p1, Lnz/co/telecom/smartphone/widget/TMYButton;

    .end local p1    # "arg0":Landroid/view/View;
    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->showConfirmChangeDialog(Lnz/co/telecom/smartphone/widget/TMYButton;)V
    invoke-static {v0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/widget/TMYButton;)V

    .line 331
    return-void
.end method
