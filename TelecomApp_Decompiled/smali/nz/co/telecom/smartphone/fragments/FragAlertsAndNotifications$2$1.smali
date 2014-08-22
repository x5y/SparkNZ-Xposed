.class Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2$1;
.super Ljava/lang/Object;
.source "FragAlertsAndNotifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;->val$switchWidget:Lorg/holoeverywhere/widget/Switch;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2$1;->this$1:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;

    iget-boolean v2, v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;->val$isCopyTo:Z

    # invokes: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->handleAlertUpdateResponse(Lorg/holoeverywhere/widget/Switch;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$200(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lorg/holoeverywhere/widget/Switch;Z)V

    .line 266
    return-void
.end method
