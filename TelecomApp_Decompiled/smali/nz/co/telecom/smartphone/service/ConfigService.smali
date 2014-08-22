.class public Lnz/co/telecom/smartphone/service/ConfigService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "ConfigService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/ConfigServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lnz/co/telecom/smartphone/service/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/ConfigService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigProfileDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 12
    const-class v1, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    invoke-virtual {p0, v1, p1}, Lnz/co/telecom/smartphone/service/ConfigService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    .line 13
    .local v0, "configProfileDTO":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    return-object v0
.end method
