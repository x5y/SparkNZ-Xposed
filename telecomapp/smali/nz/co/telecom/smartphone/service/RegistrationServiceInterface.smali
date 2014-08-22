.class public interface abstract Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;
.super Ljava/lang/Object;
.source "RegistrationServiceInterface.java"


# virtual methods
.method public abstract createTokenSession(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method

.method public abstract updatePassword(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method
