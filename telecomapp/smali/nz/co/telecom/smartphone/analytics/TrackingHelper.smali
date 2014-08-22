.class public Lnz/co/telecom/smartphone/analytics/TrackingHelper;
.super Ljava/lang/Object;
.source "TrackingHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TRACKING_SERVER:Ljava/lang/String; = "sstats.telecom.co.nz"

.field private static dateFormat:Ljava/text/SimpleDateFormat;

.field private static debug:Z

.field private static hier:Ljava/lang/String;

.field public static mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field static measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

.field private static prop1:Ljava/lang/String;

.field private static prop2:Ljava/lang/String;

.field private static prop3:Ljava/lang/String;

.field private static sdf_DayOfWeek:Ljava/text/SimpleDateFormat;

.field private static sdf_HourOfDay:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "TrackingHelper"

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->sdf_DayOfWeek:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->sdf_HourOfDay:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 26
    const-string v0, "telecom|mobapp|"

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->hier:Ljava/lang/String;

    .line 27
    const-string v0, "telecom"

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop1:Ljava/lang/String;

    .line 28
    const-string v0, "telecom:mobapp"

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureAppMeasurement(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance(Landroid/content/Context;)Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 140
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    sget-object v1, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getOmnitureRid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sstats.telecom.co.nz"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->configureMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    sget-boolean v1, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setDebugLogging(Z)V

    .line 142
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setSSL(Z)V

    .line 166
    :cond_0
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement isOfflineTrackingEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOfflineTrackingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement getLifecycleSessionTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getLifecycleSessionTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_3

    .line 171
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement getTrackingServer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getTrackingServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_4

    .line 173
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement getReportSuiteIDs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getReportSuiteIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_5

    .line 175
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement getTrackingQueueSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getTrackingQueueSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_5
    sget-boolean v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v0, :cond_6

    .line 177
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureAppMeasurement measurement getPersistentContextData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getPersistentContextData()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_6
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 129
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v0, p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->startActivity(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public static stopActivity()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 134
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->stopActivity()V

    .line 135
    return-void
.end method

.method public static trackPageEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 35
    .local v0, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, v0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 36
    return-void
.end method

.method public static trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 13
    .param p0, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x1

    .line 41
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v9

    sput-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 42
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->sdf_DayOfWeek:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "dayOfTheWeek":Ljava/lang/String;
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->sdf_HourOfDay:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "hourOfDay":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 45
    .local v4, "installCal":Ljava/util/Calendar;
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v9}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getFirstInstalledTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "installedDate":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 49
    const-string v9, " "

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 50
    const-string v9, "usage"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    const-string p0, "usage"

    .line 59
    :cond_0
    :goto_0
    const-string v9, "signout"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop2:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop3:Ljava/lang/String;

    .line 61
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->hier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setHier(ILjava/lang/String;)V

    .line 62
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    sget-object v10, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop1:Ljava/lang/String;

    invoke-virtual {v9, v12, v10}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setProp(ILjava/lang/String;)V

    .line 63
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    const/4 v10, 0x2

    sget-object v11, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop2:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setProp(ILjava/lang/String;)V

    .line 64
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    const/4 v10, 0x3

    sget-object v11, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->prop3:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setProp(ILjava/lang/String;)V

    .line 65
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    const-string v10, "mobile"

    invoke-virtual {v9, v10}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setChannel(Ljava/lang/String;)V

    .line 68
    const-string v9, "a.DayOfWeek"

    invoke-virtual {p1, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v9, "a.HourOfDay"

    invoke-virtual {p1, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v9, "a.InstallDate"

    invoke-virtual {p1, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v9, "a.AppID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v11}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v11}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getAppVersionCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v9, "a.OSEnvironment"

    const-string v10, "Android"

    invoke-virtual {p1, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v9, "a.DailyEngUserEvent"

    const-string v10, "true"

    invoke-virtual {p1, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v3, 0x8

    .line 76
    .local v3, "i":I
    const-string v8, ""

    .line 77
    .local v8, "tempValue":Ljava/lang/String;
    const-string v7, ""

    .line 78
    .local v7, "tempKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 79
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tempKey":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 80
    .restart local v7    # "tempKey":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tempValue":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 81
    .restart local v8    # "tempValue":Ljava/lang/String;
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v9, v3, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setEvar(ILjava/lang/String;)V

    .line 82
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v9, v3, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setProp(ILjava/lang/String;)V

    .line 83
    sget-boolean v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->debug:Z

    if-eqz v9, :cond_1

    .line 84
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trackPageEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    .end local v3    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "tempKey":Ljava/lang/String;
    .end local v8    # "tempValue":Ljava/lang/String;
    :cond_2
    const-string v9, "paybill"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 53
    const-string p0, "paybill:enteramount"

    goto/16 :goto_0

    .line 54
    :cond_3
    const-string v9, "help"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 55
    const-string p0, "help"

    goto/16 :goto_0

    .line 56
    :cond_4
    const-string v9, "buyextras"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 57
    const-string p0, "buyextras:list"

    goto/16 :goto_0

    .line 90
    .restart local v3    # "i":I
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "tempKey":Ljava/lang/String;
    .restart local v8    # "tempValue":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v10}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getOmnitureHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "appState":Ljava/lang/String;
    sget-object v9, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v9, v0, p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->trackAppState(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 93
    .end local v0    # "appState":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "tempKey":Ljava/lang/String;
    .end local v8    # "tempValue":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static trackPageLinkOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 97
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 98
    .local v4, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 99
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 100
    const-string v0, "pageName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getOmnitureHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "linkUrl"

    invoke-virtual {v4, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v0, v3, p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setEvar(ILjava/lang/String;)V

    .line 103
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    invoke-virtual {v0, v3, p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setProp(ILjava/lang/String;)V

    .line 104
    sget-object v0, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;

    const-string v2, "link"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v3}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getOmnitureHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/measurement/ADMS_Measurement;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 105
    return-void
.end method
