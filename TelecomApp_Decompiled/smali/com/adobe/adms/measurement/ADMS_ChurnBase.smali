.class abstract Lcom/adobe/adms/measurement/ADMS_ChurnBase;
.super Ljava/lang/Object;
.source "ADMS_ChurnBase.java"


# static fields
.field private static final kADMS_ConfigTypeInstall:I = 0x0

.field private static final kADMS_ConfigTypeLaunch:I = 0x2

.field private static final kADMS_ConfigTypeUpgrade:I = 0x1

.field protected static final kADMS_InstallDate:Ljava/lang/String; = "ADMS_InstallDate"

.field protected static final kADMS_LastDateUsed:Ljava/lang/String; = "ADMS_LastDateUsed"

.field protected static final kADMS_LastVersion:Ljava/lang/String; = "ADMS_LastVersion"

.field protected static final kADMS_Launches:Ljava/lang/String; = "ADMS_Launches"

.field protected static final kADMS_LaunchesAfterUpgrade:Ljava/lang/String; = "ADMS_LaunchesAfterUpgrade"

.field protected static final kADMS_PauseDate:Ljava/lang/String; = "ADMS_PauseDate"

.field protected static final kADMS_PrevSessionLength:Ljava/lang/String; = "a.PrevSessionLength"

.field protected static final kADMS_SessionStart:Ljava/lang/String; = "ADMS_SessionStart"

.field protected static final kADMS_SuccessfulClose:Ljava/lang/String; = "ADMS_SuccessfulClose"

.field protected static final kADMS_UpgradeDate:Ljava/lang/String; = "ADMS_UpgradeDate"


# instance fields
.field private appCrashEvent:Ljava/lang/String;

.field protected appEnvironmentEvar:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appIdEvar:Ljava/lang/String;

.field private appInstallDateEvar:Ljava/lang/String;

.field private appInstallEvent:Ljava/lang/String;

.field private appLaunchEvent:Ljava/lang/String;

.field private appLaunchNumberEvar:Ljava/lang/String;

.field private appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

.field private appUpgradeEvent:Ljava/lang/String;

.field private contextData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentAppVersion:Ljava/lang/String;

.field private currentDate:Ljava/util/Date;

.field private dailyEngagedUserEvent:Ljava/lang/String;

.field private dayMonthYearFormat:Ljava/text/DateFormat;

.field private dayOfWeekEvar:Ljava/lang/String;

.field private daysSinceFirstUseEvar:Ljava/lang/String;

.field private daysSinceLastUpgradeEvar:Ljava/lang/String;

.field private daysSinceLastUseEvar:Ljava/lang/String;

.field private engagedDaysLifetimeEvar:Ljava/lang/String;

.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourOfDayDateFormat:Ljava/text/DateFormat;

.field private hourOfDayEvar:Ljava/lang/String;

.field protected lifecycleSessionTimeout:I

.field private measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

.field private monthYearDateFormat:Ljava/text/DateFormat;

.field private monthlyEngagedUserEvent:Ljava/lang/String;

.field private variables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/adobe/adms/measurement/ADMS_MeasurementBase;)V
    .locals 2
    .param p1, "measurementObj"    # Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "a.InstallEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallEvent:Ljava/lang/String;

    .line 41
    const-string v0, "a.UpgradeEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appUpgradeEvent:Ljava/lang/String;

    .line 42
    const-string v0, "a.DailyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    .line 43
    const-string v0, "a.MonthlyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    .line 44
    const-string v0, "a.LaunchEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchEvent:Ljava/lang/String;

    .line 45
    const-string v0, "a.CrashEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appCrashEvent:Ljava/lang/String;

    .line 47
    const-string v0, "a.InstallDate"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallDateEvar:Ljava/lang/String;

    .line 48
    const-string v0, "a.AppID"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appIdEvar:Ljava/lang/String;

    .line 49
    const-string v0, "a.EngDaysLifetime"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    .line 50
    const-string v0, "a.DaysSinceFirstUse"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    .line 51
    const-string v0, "a.DaysSinceLastUse"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUseEvar:Ljava/lang/String;

    .line 52
    const-string v0, "a.Launches"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberEvar:Ljava/lang/String;

    .line 53
    const-string v0, "a.HourOfDay"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayEvar:Ljava/lang/String;

    .line 54
    const-string v0, "a.DayOfWeek"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekEvar:Ljava/lang/String;

    .line 55
    const-string v0, "a.OSEnvironment"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appEnvironmentEvar:Ljava/lang/String;

    .line 56
    const-string v0, "a.DaysSinceLastUpgrade"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    .line 57
    const-string v0, "a.LaunchesSinceUpgrade"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    .line 65
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    .line 68
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    .line 301
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    .line 316
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearDateFormat:Ljava/text/DateFormat;

    .line 72
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    .line 73
    return-void
.end method

.method private cleanInstanceVariables()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    .line 172
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    .line 178
    return-void
.end method

.method private dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 309
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 310
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 311
    .local v2, "dow":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "dayOfWeekString":Ljava/lang/String;
    return-object v1
.end method

.method private daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .param p1, "d1"    # Ljava/util/Date;
    .param p2, "d2"    # Ljava/util/Date;

    .prologue
    .line 327
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 291
    .local v1, "millis":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 292
    .local v0, "date":Ljava/util/Date;
    return-object v0
.end method

.method private handleEvents()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    .local v0, "event":Ljava/lang/String;
    const-string v2, "a."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleSessionLength()V
    .locals 7

    .prologue
    .line 133
    const-string v5, "ADMS_PauseDate"

    invoke-virtual {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const-string v5, "ADMS_PauseDate"

    invoke-direct {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 135
    .local v0, "lastPausedDate":Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 136
    const-string v5, "ADMS_SessionStart"

    invoke-direct {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 137
    .local v1, "sessionStartDate":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v4

    .line 139
    .local v4, "timeSincePause":I
    iget v5, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    if-le v4, v5, :cond_1

    .line 140
    invoke-direct {p0, v1, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 141
    .local v2, "sessionTime":I
    if-lez v2, :cond_0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "sessionTimeString":Ljava/lang/String;
    const-string v5, "a.PrevSessionLength"

    invoke-virtual {p0, v3, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v3    # "sessionTimeString":Ljava/lang/String;
    :cond_0
    const-string v5, "ADMS_SessionStart"

    invoke-virtual {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 149
    .end local v0    # "lastPausedDate":Ljava/util/Date;
    .end local v1    # "sessionStartDate":Ljava/util/Date;
    .end local v2    # "sessionTime":I
    .end local v4    # "timeSincePause":I
    :cond_1
    return-void
.end method

.method private handleUpgradeDateForConfigType(I)V
    .locals 5
    .param p1, "configType"    # I

    .prologue
    .line 201
    const-string v3, "ADMS_UpgradeDate"

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 203
    .local v1, "newLaunchesAfterUpgrade":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 206
    const-string v3, "ADMS_UpgradeDate"

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 207
    .local v2, "previousUpgradeDate":Ljava/util/Date;
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 208
    .local v0, "daysSinceUpgrade":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v0    # "daysSinceUpgrade":I
    .end local v2    # "previousUpgradeDate":Ljava/util/Date;
    :cond_0
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v3, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 213
    .end local v1    # "newLaunchesAfterUpgrade":I
    :cond_1
    return-void
.end method

.method private hourFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutLong(Ljava/lang/String;J)V

    .line 287
    return-void
.end method

.method private secondsBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .param p1, "d1"    # Ljava/util/Date;
    .param p2, "d2"    # Ljava/util/Date;

    .prologue
    .line 323
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private sessionPauseDetected()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 106
    const-string v5, "ADMS_PauseDate"

    invoke-virtual {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const-string v5, "ADMS_PauseDate"

    invoke-direct {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 109
    .local v1, "lastPausedDate":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 110
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    .line 111
    .local v3, "timeSincePause":I
    const-string v5, "ADMS_SessionStart"

    invoke-direct {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 113
    .local v2, "sessionStartDate":Ljava/util/Date;
    iget v5, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    if-ge v3, v5, :cond_0

    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const-string v6, "ADMS_SessionStart"

    invoke-direct {p0, v5, v6}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 122
    const-string v5, "ADMS_PauseDate"

    invoke-virtual {p0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 123
    const-string v5, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v5, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 125
    const/4 v4, 0x1

    .line 129
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "lastPausedDate":Ljava/util/Date;
    .end local v2    # "sessionStartDate":Ljava/util/Date;
    .end local v3    # "timeSincePause":I
    :cond_0
    return v4
.end method

.method private setEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    return-void
.end method

.method private setInstallVariables()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallDateEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "+1"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleReferrers()V

    .line 222
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_InstallDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private setLaunchTypeVariables()V
    .locals 3

    .prologue
    .line 181
    const-string v1, "ADMS_InstallDate"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setInstallVariables()V

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v1, "ADMS_LastVersion"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "ADMS_LastVersion"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "lastUsedVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setLaunchVariables()V

    .line 190
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setNotInstallVariables()V

    .line 191
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setUpgradeVariables()V

    .line 194
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setNotInstallVariables()V

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0
.end method

.method private setLaunchVariables()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private setNotInstallVariables()V
    .locals 4

    .prologue
    .line 243
    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 244
    .local v1, "lastUsedDate":Ljava/util/Date;
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    const-string v2, "+1"

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 252
    :cond_1
    const-string v2, "ADMS_InstallDate"

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 254
    .local v0, "installDate":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "ADMS_SuccessfulClose"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appCrashEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 260
    const-string v2, "ADMS_PauseDate"

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 261
    const-string v2, "ADMS_SessionStart"

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 263
    :cond_2
    return-void
.end method

.method private setUpgradeVariables()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appUpgradeEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 233
    const-string v0, "ADMS_LaunchesAfterUpgrade"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_UpgradeDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private setVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getApplicationName()Ljava/lang/String;
.end method

.method protected abstract getApplicationVersion()Ljava/lang/String;
.end method

.method protected abstract handleReferrers()V
.end method

.method protected abstract prefsContains(Ljava/lang/String;)Z
.end method

.method protected abstract prefsGetBool(Ljava/lang/String;Z)Z
.end method

.method protected abstract prefsGetInt(Ljava/lang/String;I)I
.end method

.method protected abstract prefsGetLong(Ljava/lang/String;J)J
.end method

.method protected abstract prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract prefsPutBool(Ljava/lang/String;Z)V
.end method

.method protected abstract prefsPutInt(Ljava/lang/String;I)V
.end method

.method protected abstract prefsPutLong(Ljava/lang/String;J)V
.end method

.method protected abstract prefsPutString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract removeObjectFromPrefsWithKey(Ljava/lang/String;)V
.end method

.method protected setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-void
.end method

.method protected setGenericVariables()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchEvent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 268
    const-string v1, "ADMS_Launches"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 269
    .local v0, "newLaunches":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appIdEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 276
    const-string v1, "ADMS_Launches"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method protected final startSession()V
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->sessionPauseDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->cleanInstanceVariables()V

    .line 83
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setLaunchTypeVariables()V

    .line 84
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setGenericVariables()V

    .line 85
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleEvents()V

    .line 86
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleSessionLength()V

    .line 88
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    const/4 v1, 0x0

    const-string v2, "o"

    const-string v3, "ADMS BP Event"

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 90
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_SessionStart"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 95
    :cond_1
    const-string v0, "ADMS_LastVersion"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "ADMS_SuccessfulClose"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 97
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final stopSession()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "ADMS_PauseDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 102
    const-string v0, "ADMS_SuccessfulClose"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method
