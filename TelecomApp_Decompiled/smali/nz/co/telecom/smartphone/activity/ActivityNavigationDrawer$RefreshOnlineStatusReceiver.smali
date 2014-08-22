.class public Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityNavigationDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshOnlineStatusReceiver"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RefreshOnlineStatusReceiver"


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;->this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NETWORK_CONNECTIONS_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NETWORK_CONNECTIONS_RESULTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "oneStatus":I
    if-lez v0, :cond_1

    .line 168
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;->this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleNetworkStatus(I)V

    .line 174
    .end local v0    # "oneStatus":I
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v0    # "oneStatus":I
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;->this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleNetworkStatus(I)V

    goto :goto_0
.end method
