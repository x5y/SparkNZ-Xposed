.class Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;
.super Ljava/lang/Object;
.source "FragAlertsAndNotifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$button:Landroid/widget/Button;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$mdn:Ljava/lang/String;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->handleMDNUpdateResponse(Landroid/widget/Button;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$300(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Landroid/widget/Button;Ljava/lang/String;)V

    .line 298
    return-void
.end method
