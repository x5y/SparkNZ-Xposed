.class public Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "RecentActivityItemDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6886ac40ef1ae226L


# instance fields
.field private cost:F

.field private date:Ljava/util/Date;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private usage:Ljava/lang/String;

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getCost()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->cost:F

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->usageType:Ljava/lang/String;

    return-object v0
.end method

.method public setCost(F)V
    .locals 0
    .param p1, "cost"    # F

    .prologue
    .line 27
    iput p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->cost:F

    .line 28
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->date:Ljava/util/Date;

    .line 36
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->labels:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->phoneNumber:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUsage(Ljava/lang/String;)V
    .locals 0
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->usage:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->usageType:Ljava/lang/String;

    .line 68
    return-void
.end method
