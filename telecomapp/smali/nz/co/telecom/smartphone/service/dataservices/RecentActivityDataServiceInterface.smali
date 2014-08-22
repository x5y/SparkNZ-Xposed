.class public interface abstract Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;
.super Ljava/lang/Object;
.source "RecentActivityDataServiceInterface.java"


# virtual methods
.method public abstract getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
.end method

.method public abstract getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
.end method

.method public abstract setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V
.end method
