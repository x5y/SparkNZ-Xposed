.class final Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;
.super Ljava/util/HashSet;
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
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x4b

    .line 158
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 159
    const-string v1, "ce"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "ns"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "cookieDomainPeriods"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "cookieLifetime"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "mtp"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "mtss"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "mti"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "mtsd"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "ts"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v3, :cond_1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    return-void
.end method
