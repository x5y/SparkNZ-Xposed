.class final Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;
.super Ljava/util/HashMap;
.source "ADMS_MeasurementBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/measurement/ADMS_MeasurementBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v0, "contextdata"

    const-string v1, "c"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "lightprofileid"

    const-string v1, "mtp"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "lightstoreforseconds"

    const-string v1, "mtss"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "lightincrementby"

    const-string v1, "mti"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "retrievelightprofiles"

    const-string v1, "mtsr"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "deletelightprofiles"

    const-string v1, "mtsd"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "visitorid"

    const-string v1, "vid"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "charset"

    const-string v1, "ce"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "currencycode"

    const-string v1, "cc"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "dynamicvariableprefix"

    const-string v1, "D"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "channel"

    const-string v1, "ch"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "pageurl"

    const-string v1, "g"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "visitornamespace"

    const-string v1, "ns"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "referrer"

    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "campaign"

    const-string v1, "v0"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "transactionid"

    const-string v1, "xact"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "appstate"

    const-string v1, "pageName"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "pagename"

    const-string v1, "pageName"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "appsection"

    const-string v1, "server"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "geozip"

    const-string v1, "zip"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "geostate"

    const-string v1, "state"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "linkurl"

    const-string v1, "pev1"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "linkname"

    const-string v1, "pev2"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "linktype"

    const-string v1, "pe"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "purchaseid"

    const-string v1, "purchaseID"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "events"

    const-string v1, "events"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "products"

    const-string v1, "products"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method
