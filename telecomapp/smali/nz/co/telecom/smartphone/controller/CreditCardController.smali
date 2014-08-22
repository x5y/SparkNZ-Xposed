.class public Lnz/co/telecom/smartphone/controller/CreditCardController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "CreditCardController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/CreditCardControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private creditCardService:Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreditCardResult(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .locals 7
    .param p1, "cct"    # Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 39
    .local v2, "result":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    :try_start_0
    const-string v4, "ENDPOINT_CREDIT_CARD_RESULT"

    invoke-static {v4}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "creditCardResultUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "tmpUrl":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?session_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&sst="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object v4, p0, Lnz/co/telecom/smartphone/controller/CreditCardController;->creditCardService:Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;->getCreditCardResult(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    return-object v2

    .line 43
    .end local v0    # "creditCardResultUrl":Ljava/lang/String;
    .end local v3    # "tmpUrl":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "exp":Lnz/co/telecom/smartphone/service/HttpServiceException;
    new-instance v4, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v5

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public getCreditCardToken(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 27
    .local v2, "result":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    :try_start_0
    const-string v3, "ENDPOINT_CREDIT_CARD_HANDSHAKE"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "creditCardPageUrl":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/CreditCardController;->creditCardService:Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;

    invoke-interface {v3, v0, p1}, Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;->getCreditCardToken(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 32
    return-object v2

    .line 29
    .end local v0    # "creditCardPageUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "exp":Lnz/co/telecom/smartphone/service/HttpServiceException;
    new-instance v3, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v4

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v3
.end method
