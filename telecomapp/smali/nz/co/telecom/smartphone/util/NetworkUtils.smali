.class public Lnz/co/telecom/smartphone/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static connectivityManagerProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static contextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected static propertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected static telephonyManagerProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowDeviceLogging:Z

.field protected telephonyMobileCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected telephonyMobileNetworkCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected telephonyNetworkCarrierNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/util/NetworkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lnz/co/telecom/smartphone/util/NetworkUtils;->propertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->allowDeviceLogging:Z

    .line 35
    sget-object v0, Lnz/co/telecom/smartphone/util/NetworkUtils;->propertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getTelephonyNetworkCarrierNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyNetworkCarrierNames:Ljava/util/List;

    .line 37
    sget-object v0, Lnz/co/telecom/smartphone/util/NetworkUtils;->propertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getTelephonyMobileCountryCodes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyMobileCountryCodes:Ljava/util/List;

    .line 39
    sget-object v0, Lnz/co/telecom/smartphone/util/NetworkUtils;->propertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getTelephonyMobileNetworkCodes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyMobileNetworkCodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 43
    sget-object v3, Lnz/co/telecom/smartphone/util/NetworkUtils;->connectivityManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v3}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 44
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 45
    .local v1, "available":Z
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 46
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 49
    :cond_0
    return v1
.end method

.method public isOnNet()Z
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v10, 0x0

    .line 56
    sget-object v11, Lnz/co/telecom/smartphone/util/NetworkUtils;->connectivityManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v11}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 57
    .local v4, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 59
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v10

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-ne v11, v14, :cond_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_0

    .line 70
    sget-object v11, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyManagerProvider:Lcom/google/inject/Provider;

    invoke-interface {v11}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 71
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "networkOperatorName":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "networkOperator":Ljava/lang/String;
    iget-boolean v11, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->allowDeviceLogging:Z

    if-eqz v11, :cond_3

    .line 75
    sget-object v11, Lnz/co/telecom/smartphone/util/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network Operator Name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v11, Lnz/co/telecom/smartphone/util/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network Operator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_3
    iget-object v11, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyNetworkCarrierNames:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 82
    .local v1, "isOurCarrierName":Z
    const/4 v2, 0x0

    .line 83
    .local v2, "isOurMobileCountryCode":Z
    const/4 v3, 0x0

    .line 85
    .local v3, "isOurMobileNetworkCode":Z
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v14, v11, :cond_4

    .line 86
    invoke-virtual {v7, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "mobileCountryCode":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "mobileNetworkCode":Ljava/lang/String;
    iget-object v11, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyMobileCountryCodes:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 91
    iget-object v11, p0, Lnz/co/telecom/smartphone/util/NetworkUtils;->telephonyMobileNetworkCodes:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 95
    .end local v5    # "mobileCountryCode":Ljava/lang/String;
    .end local v6    # "mobileNetworkCode":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 96
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
