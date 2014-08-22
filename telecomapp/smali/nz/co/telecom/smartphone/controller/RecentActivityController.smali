.class public Lnz/co/telecom/smartphone/controller/RecentActivityController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "RecentActivityController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private optionState:Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

.field private recentActivityService:Lnz/co/telecom/smartphone/service/RecentActivityServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnz/co/telecom/smartphone/controller/RecentActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/RecentActivityController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/RecentActivityController;->recentActivityService:Lnz/co/telecom/smartphone/service/RecentActivityServiceInterface;

    const-string v3, "ENDPOINT_LINE_ACTIVITIES"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/RecentActivityServiceInterface;->getRecentActivityDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/RecentActivityController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    throw v0
.end method

.method public getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/RecentActivityController;->optionState:Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    return-object v0
.end method

.method public setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V
    .locals 2
    .param p1, "optionState"    # Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/telecom/smartphone/controller/RecentActivityController;->optionState:Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string v0, "ENDPOINT_LINE_ACTIVITIES"

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/Profile;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
