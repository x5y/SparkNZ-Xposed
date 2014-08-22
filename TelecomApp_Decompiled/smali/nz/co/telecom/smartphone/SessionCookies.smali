.class public Lnz/co/telecom/smartphone/SessionCookies;
.super Ljava/lang/Object;
.source "SessionCookies.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static requestingCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lnz/co/telecom/smartphone/SessionCookies;->requestingCookies:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestingCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lnz/co/telecom/smartphone/SessionCookies;->requestingCookies:Ljava/util/List;

    return-object v0
.end method

.method public static setRequestingCookies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "requestingCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    sput-object p0, Lnz/co/telecom/smartphone/SessionCookies;->requestingCookies:Ljava/util/List;

    .line 19
    return-void
.end method
