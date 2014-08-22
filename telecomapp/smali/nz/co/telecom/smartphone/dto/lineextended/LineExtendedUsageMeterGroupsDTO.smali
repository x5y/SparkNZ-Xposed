.class public Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineExtendedUsageMeterGroupsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final K_USAGE_TYPE_BUNDLE:Ljava/lang/String; = "Bundle"

.field public static final K_USAGE_TYPE_DATA:Ljava/lang/String; = "Data"

.field public static final K_USAGE_TYPE_OTHER:Ljava/lang/String; = "Other"

.field public static final K_USAGE_TYPE_TEXT:Ljava/lang/String; = "Text"

.field public static final K_USAGE_TYPE_VOICE:Ljava/lang/String; = "Voice"

.field private static final serialVersionUID:J = 0x323705af5bb6b5b8L


# instance fields
.field private usageMeters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;",
            ">;"
        }
    .end annotation
.end field

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getUsageMeters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageMeters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageMeters:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isUsageTypeBundle()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    const-string v1, "Bundle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsageTypeData()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    const-string v1, "Data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsageTypeOther()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsageTypeText()Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsageTypeVoice()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    const-string v1, "Voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setUsageMeters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "usageMeters":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageMeters:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->usageType:Ljava/lang/String;

    .line 36
    return-void
.end method
