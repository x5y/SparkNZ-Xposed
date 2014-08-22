.class public interface abstract Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;
.super Ljava/lang/Object;
.source "RegistrationControllerInterface.java"


# virtual methods
.method public abstract createTokenSession(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public abstract updatePassword(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
