.class final Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;
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
    .locals 5

    .prologue
    const/16 v4, 0x4b

    const/4 v3, 0x3

    .line 113
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 114
    const-string v1, "vid"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "ce"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "ns"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "pageName"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "g"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "r"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "cc"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "pe"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "ts"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "t"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "purchaseID"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "ch"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "server"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v1, "pageType"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "xact"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "v0"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "state"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "zip"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v1, "events"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "products"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v1, "mtsr"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v4, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_1
    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    :cond_2
    const/4 v0, 0x1

    :goto_3
    if-gt v0, v3, :cond_3

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_3
    const/4 v0, 0x1

    :goto_4
    if-gt v0, v3, :cond_4

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 154
    :cond_4
    const-string v1, "c"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "mtsd"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method
