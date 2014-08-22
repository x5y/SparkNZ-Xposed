.class public interface abstract Lnz/co/telecom/smartphone/controller/CreditCardControllerInterface;
.super Ljava/lang/Object;
.source "CreditCardControllerInterface.java"


# virtual methods
.method public abstract getCreditCardResult(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
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
.end method

.method public abstract getCreditCardToken(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
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
.end method
