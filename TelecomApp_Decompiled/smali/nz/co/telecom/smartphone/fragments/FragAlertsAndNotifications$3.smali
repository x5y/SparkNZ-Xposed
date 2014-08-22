.class Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;
.super Ljava/lang/Thread;
.source "FragAlertsAndNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->processAlertUpdate(Landroid/widget/Button;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$isOn:Z

.field final synthetic val$mdn:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;ZLjava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iput-boolean p2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$isOn:Z

    iput-object p3, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$mdn:Ljava/lang/String;

    iput-object p4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$isOn:Z

    if-eqz v2, :cond_0

    .line 282
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_on"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mdn"

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$mdn:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v3, v3, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mAlertsAndNotificationsController:Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->getAlertsUpdateResults(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$102(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mHandler:Landroid/os/Handler;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void

    .line 284
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_on"

    const-string v4, "false"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    const/4 v3, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$102(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    .line 291
    # getter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error with processAlertUpdate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
