.class public interface abstract Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;
.super Ljava/lang/Object;
.source "AccessControlControllerInterface.java"


# virtual methods
.method public abstract getOpenAMCookieName()Ljava/lang/String;
.end method

.method public abstract getSessionToken()Ljava/lang/String;
.end method

.method public abstract invokeWhoAmI()Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
.end method

.method public abstract performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
.end method

.method public abstract performLogout()Z
.end method

.method public abstract performLogout(Z)Z
.end method
