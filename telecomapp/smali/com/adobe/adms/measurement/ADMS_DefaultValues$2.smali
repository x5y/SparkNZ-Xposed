.class final Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;
.super Ljava/util/ArrayList;
.source "ADMS_DefaultValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/measurement/ADMS_DefaultValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    const-string v0, "ce"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v0, "ns"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v0, "cookieDomainPeriods"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v0, "cookieLifetime"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "mtp"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v0, "mtss"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v0, "mti"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues$2;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
