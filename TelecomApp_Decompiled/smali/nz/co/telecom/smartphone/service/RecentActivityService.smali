.class public Lnz/co/telecom/smartphone/service/RecentActivityService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "RecentActivityService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/RecentActivityServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field static sContextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 16
    sget-object v0, Lnz/co/telecom/smartphone/service/RecentActivityService;->sContextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RecentActivityService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRecentActivityDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 20
    const-class v1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {p0, v1, p1}, Lnz/co/telecom/smartphone/service/RecentActivityService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 21
    .local v0, "result":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    return-object v0
.end method
