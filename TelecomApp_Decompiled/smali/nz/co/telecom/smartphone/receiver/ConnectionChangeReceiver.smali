.class public Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 17
    iput-object p1, p0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    .line 18
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 19
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 20
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 21
    new-instance v2, Landroid/content/Intent;

    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v2, "networkOfflineIntent":Landroid/content/Intent;
    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    iget-object v4, p0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .end local v2    # "networkOfflineIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    new-instance v2, Landroid/content/Intent;

    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .restart local v2    # "networkOfflineIntent":Landroid/content/Intent;
    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    iget-object v4, p0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 29
    .end local v2    # "networkOfflineIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v3, "networkOnIntent":Landroid/content/Intent;
    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    iget-object v4, p0, Lnz/co/telecom/smartphone/receiver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
