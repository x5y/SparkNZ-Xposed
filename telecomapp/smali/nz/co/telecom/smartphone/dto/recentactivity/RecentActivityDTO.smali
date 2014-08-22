.class public Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "RecentActivityDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f1089d1080caffdL


# instance fields
.field private _embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation
.end field

.field private perPageCount:I

.field private textList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;

.field private voiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public addDataItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V
    .locals 1
    .param p1, "oneItem"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->dataList:Ljava/util/List;

    .line 32
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public addTextItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V
    .locals 1
    .param p1, "oneItem"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    .line 40
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->textList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->textList:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->textList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addVoiceItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V
    .locals 1
    .param p1, "oneItem"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    .line 51
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->voiceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->voiceList:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->voiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getTextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->textList:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getVoiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->voiceList:Ljava/util/List;

    return-object v0
.end method

.method public get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    return-object v0
.end method

.method public setActivities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->activities:Ljava/util/List;

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "raiDTO":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 75
    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "raiDTO":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .line 76
    .restart local v1    # "raiDTO":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DATA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->addDataItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VOICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->addVoiceItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->addTextItem(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)V

    goto :goto_1

    .line 84
    :cond_3
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->messages:Ljava/util/List;

    .line 92
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 64
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->timestamp:Ljava/util/Date;

    .line 65
    return-void
.end method

.method public set_embedded(Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;)V
    .locals 0
    .param p1, "_embedded"    # Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .prologue
    .line 99
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .line 100
    return-void
.end method
