.class public interface abstract Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;
.super Ljava/lang/Object;
.source "CreditCardServiceInterface.java"


# virtual methods
.method public abstract getCreditCardResult(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
.end method

.method public abstract getCreditCardToken(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
.end method
