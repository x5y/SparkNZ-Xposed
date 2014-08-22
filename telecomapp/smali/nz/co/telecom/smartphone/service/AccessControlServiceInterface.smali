.class public interface abstract Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;
.super Ljava/lang/Object;
.source "AccessControlServiceInterface.java"


# virtual methods
.method public abstract getSessionToken()Ljava/lang/String;
.end method

.method public abstract invokeWhoAmI(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract performLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract performLogout(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
