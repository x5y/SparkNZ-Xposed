.class public Lnz/co/telecom/smartphone/service/AccountService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "AccountService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/AccountServiceInterface;


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountInfoDTO(Ljava/lang/String;Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, "queryString":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 31
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 33
    .end local v1    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "urlWithParams":Ljava/lang/String;
    const-class v5, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {p0, v5, v4}, Lnz/co/telecom/smartphone/service/AccountService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    .line 45
    .local v3, "result":Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    return-object v3
.end method
