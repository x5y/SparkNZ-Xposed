.class final Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;
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
    .line 72
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v0, "evar"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "prop"

    const-string v1, "c"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "list"

    const-string v1, "l"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "hier"

    const-string v1, "h"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "pev"

    const-string v1, "pev"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
