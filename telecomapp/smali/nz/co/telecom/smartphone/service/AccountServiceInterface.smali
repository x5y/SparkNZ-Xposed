.class public interface abstract Lnz/co/telecom/smartphone/service/AccountServiceInterface;
.super Ljava/lang/Object;
.source "AccountServiceInterface.java"


# virtual methods
.method public abstract getAccountInfoDTO(Ljava/lang/String;Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
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
.end method
