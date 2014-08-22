.class public final Lcom/adobe/adms/measurement/ADMS_Measurement;
.super Lcom/adobe/adms/measurement/ADMS_MeasurementBase;
.source "ADMS_Measurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/measurement/ADMS_Measurement$1;,
        Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;
    }
.end annotation


# static fields
.field private static final ADMS_CACHEFILE:Ljava/lang/String; = "AppMeasurementOfflineCacheDatabase.sqlite"

.field private static final ADMS_Visitor_ID:Ljava/lang/String; = "APP_MEASUREMENT_VISITOR_ID"

.field private static MINIMUM_LIFECYCLE_SESSION_TIMEOUT:Ljava/lang/Integer; = null

.field private static final OLD_ADMS_CACHEFILE:Ljava/lang/String; = "ADMS_OfflineCache.offline"

.field private static final PREFS_NAME:Ljava/lang/String; = "APP_MEASUREMENT_CACHE"

.field private static churn:Lcom/adobe/adms/measurement/ADMS_Churn;

.field static editor:Landroid/content/SharedPreferences$Editor;

.field static prefs:Landroid/content/SharedPreferences;

.field private static volatile setStaticContext_pred:Z

.field private static worker:Lcom/adobe/adms/measurement/ADMS_Worker;


# instance fields
.field private appID:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private defaultAcceptLanguage:Ljava/lang/String;

.field private defaultCharSet:Ljava/lang/String;

.field private resolution:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->MINIMUM_LIFECYCLE_SESSION_TIMEOUT:Ljava/lang/Integer;

    .line 33
    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 40
    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext_pred:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    .line 38
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultCharSet:Ljava/lang/String;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/adms/measurement/ADMS_Measurement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/adobe/adms/measurement/ADMS_Measurement$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;-><init>()V

    return-void
.end method

.method protected static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isOnline()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 443
    .local v0, "cm":Landroid/net/ConnectivityManager;
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 441
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 442
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 443
    .restart local v1    # "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static setStaticContext(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 82
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    .line 84
    .local v1, "measurement":Lcom/adobe/adms/measurement/ADMS_Measurement;
    if-eqz p0, :cond_4

    sget-boolean v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext_pred:Z

    if-nez v2, :cond_4

    .line 85
    monitor-enter v1

    .line 86
    :try_start_0
    iput-object p0, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    .line 87
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lcom/adobe/adms/measurement/ADMS_Churn;

    invoke-direct {v2, v1}, Lcom/adobe/adms/measurement/ADMS_Churn;-><init>(Lcom/adobe/adms/measurement/ADMS_Measurement;)V

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    .line 90
    :cond_0
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    if-nez v2, :cond_1

    .line 91
    new-instance v2, Lcom/adobe/adms/measurement/ADMS_Worker;

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "AppMeasurementOfflineCacheDatabase.sqlite"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/adms/measurement/ADMS_Worker;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 93
    :cond_1
    iget-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v3, "APP_MEASUREMENT_CACHE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    .line 94
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-virtual {v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->loadVisitorID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->visitorID:Ljava/lang/String;

    .line 97
    iget-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->visitorID:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 98
    invoke-direct {v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->visitorID:Ljava/lang/String;

    .line 99
    iget-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->visitorID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->saveVisitorID(Ljava/lang/String;)V

    .line 102
    :cond_2
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ADMS_OfflineCache.offline"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/adms/measurement/ADMS_Worker;->upgradeQueueToSQL(Ljava/lang/String;)V

    .line 112
    :cond_3
    sput-boolean v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext_pred:Z

    .line 114
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    return-void

    .line 104
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;->baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;

    return-object v0
.end method

.method public static sharedInstance(Landroid/content/Context;)Lcom/adobe/adms/measurement/ADMS_Measurement;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    .line 62
    .local v0, "measurement":Lcom/adobe/adms/measurement/ADMS_Measurement;
    invoke-virtual {v0, p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setContext(Landroid/content/Context;)V

    .line 64
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;->baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;

    return-object v1
.end method


# virtual methods
.method public clearTrackingQueue()V
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->clearTrackingQueue()V

    .line 213
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLogging:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "ADMS_MEASUREMENT"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    return-void
.end method

.method protected getApplicationID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 249
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 251
    :try_start_0
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 252
    const-string v6, ""

    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    return-object v6

    .line 254
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 255
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 256
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 257
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    .local v1, "applicationName":Ljava/lang/String;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 260
    .local v2, "applicationVersion":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v2    # "applicationVersion":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 267
    const-string v6, ""

    iput-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    goto :goto_0

    .line 261
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "applicationName":Ljava/lang/String;
    .restart local v2    # "applicationVersion":Ljava/lang/String;
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_2
    const-string v6, ""
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected getCarrierString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 299
    const-string v1, ""

    .line 302
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 302
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDefaultAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 365
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    return-object v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultCharSet:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getPlatformString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEvar(I)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getEvar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleSessionTimeout()I
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget v0, v0, Lcom/adobe/adms/measurement/ADMS_Churn;->lifecycleSessionTimeout:I

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNetworkConnectionString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 307
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 308
    const-string v4, ""

    .line 323
    :goto_0
    return-object v4

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 311
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 313
    .local v3, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const-string v4, "WiFi"

    goto :goto_0

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 318
    .local v1, "connManager1":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 320
    .local v2, "mMobile":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const-string v4, "Cell"

    goto :goto_0

    .line 323
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method protected getOperatingSystemString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlatformString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method protected getResolutionString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 277
    const-string v1, ""

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    return-object v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackingQueueSize()I
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->getTrackingQueueSize()I

    move-result v0

    return v0
.end method

.method protected loadVisitorID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 340
    :cond_0
    const-string v1, "Error: ADMS SDK: cannot load visitor ID without context."

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected saveVisitorID(Ljava/lang/String;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v0, "Error: ADMS SDK: cannot persist visitor ID without context."

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestString"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLogging:Z

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hit Request String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "requestBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\tUser-Agent\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "\tAccept-Language\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Worker;->queue(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext(Landroid/content/Context;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p1, :cond_0

    .line 129
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setLifecycleSessionTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 167
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->MINIMUM_LIFECYCLE_SESSION_TIMEOUT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 169
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iput p1, v0, Lcom/adobe/adms/measurement/ADMS_Churn;->lifecycleSessionTimeout:I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increasing lifecycleSessionTimeout to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->MINIMUM_LIFECYCLE_SESSION_TIMEOUT:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to protect from false lifecycle events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->MINIMUM_LIFECYCLE_SESSION_TIMEOUT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/adobe/adms/measurement/ADMS_Churn;->lifecycleSessionTimeout:I

    goto :goto_0
.end method

.method public setOffline()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    .line 202
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setWorkerOffline(Z)V

    .line 203
    return-void
.end method

.method public setOfflineHitLimit(I)V
    .locals 2
    .param p1, "offlineHitLimit"    # I

    .prologue
    .line 403
    if-gez p1, :cond_0

    .line 404
    const/4 p1, 0x0

    .line 406
    :cond_0
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->offlineHitLimit:I

    .line 408
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 409
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iput p1, v0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    .line 410
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOfflineThrottleDelay(I)V
    .locals 0
    .param p1, "offlineThrottleDelay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    return-void
.end method

.method public setOfflineTrackingEnabled(Z)V
    .locals 2
    .param p1, "offlineTrackingEnabled"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->offlineTrackingEnabled:Z

    .line 426
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 427
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iput-boolean p1, v0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnline()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    .line 193
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setWorkerOffline(Z)V

    .line 194
    return-void
.end method

.method protected setWorkerOffline(Z)V
    .locals 3
    .param p1, "isOffline"    # Z

    .prologue
    .line 432
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 433
    :try_start_0
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setContext(Landroid/content/Context;)V

    .line 148
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Churn;->startActivity(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public stopActivity()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Churn;->stopActivity(Landroid/content/Context;)V

    .line 161
    return-void
.end method
