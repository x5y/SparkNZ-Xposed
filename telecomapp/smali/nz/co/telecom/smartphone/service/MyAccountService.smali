.class public Lnz/co/telecom/smartphone/service/MyAccountService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "MyAccountService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/MyAccountServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field static sContextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 21
    sget-object v0, Lnz/co/telecom/smartphone/service/MyAccountService;->sContextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/MyAccountService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getMyAccountDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v3, 0x0

    .line 30
    .local v3, "myAccountDTO":Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    new-instance v4, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v4}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 33
    .local v4, "objectMapper":Lorg/codehaus/jackson/map/ObjectMapper;
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/service/MyAccountService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "json/my_account.json"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 34
    .local v2, "is":Ljava/io/InputStream;
    const-class v5, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v4, v2, v5}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
