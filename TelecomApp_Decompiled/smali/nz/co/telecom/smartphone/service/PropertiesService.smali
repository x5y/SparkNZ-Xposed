.class public Lnz/co/telecom/smartphone/service/PropertiesService;
.super Ljava/lang/Object;
.source "PropertiesService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "smartphone"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appVersionCode:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private firstInstalledTime:J

.field private resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/PropertiesService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionCode:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionName:Ljava/lang/String;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->firstInstalledTime:J

    .line 21
    const-string v0, "smartphone"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    .line 22
    sget-object v0, Lnz/co/telecom/smartphone/service/PropertiesService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded Properties. Our target environment is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/service/PropertiesService;->getBuildType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method


# virtual methods
.method public allowDeviceLogging()Z
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v2, "show.device.logging"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "showDeviceLogging":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAPIConfigProfileURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "api.config-profile-url"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessControlCookieName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "api.openAM.auth.cookie"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessControlRealmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "api.openAM.auth.realm"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "application.build-type"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, "cookieDomain":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v2, "cookie.domain"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderHost()Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_1
    return-object v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 80
    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCreditCardPage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "ippayment.creditcard_url"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInstalledTime()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->firstInstalledTime:J

    return-wide v0
.end method

.method public getHackCreditCardHandShakeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "ippayment.handshake-url"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "request.header.host"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderOrigin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "request.header.origin"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelpAndSupportUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "telecom.helpandsupport.url"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmnitureHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "omniture.pageview.header"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmnitureRid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "omniture.tracking.rid"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyMobileCountryCodes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v2, "telephony.mobile-country-codes"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "mobileCountryCodesLine":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTelephonyMobileNetworkCodes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v2, "telephony.mobile-network-codes"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "mobileNetworkCodesLine":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTelephonyNetworkCarrierNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v2, "telephony.network-carrier-names"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "carrierNamesLine":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTermsAndConditionsUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "telecom.termsandconditions.url"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSSLCertOK()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->resourceBundle:Ljava/util/ResourceBundle;

    const-string v1, "is.sslcert.ok"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAppVersionCode(I)V
    .locals 1
    .param p1, "appVersionCode"    # I

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionCode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAppVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionCode"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionCode:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->appVersionName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFirstInstalledTime(J)V
    .locals 0
    .param p1, "installedTimeInMillis"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lnz/co/telecom/smartphone/service/PropertiesService;->firstInstalledTime:J

    .line 161
    return-void
.end method
