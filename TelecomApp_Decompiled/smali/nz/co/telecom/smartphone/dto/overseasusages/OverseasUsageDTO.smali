.class public Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "OverseasUsageDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final K_LINK_TURN_ON:Ljava/lang/String; = "turnon"

.field private static final K_LINK_VIEW_AMOUNTS:Ljava/lang/String; = "viewamounts"

.field private static final K_USAGE_NONE:Ljava/lang/String; = "Don\'t use data overseas"

.field private static final K_USAGE_OPTION_UNLIMITED:I = -0x1

.field private static final K_USAGE_UNLIMITED:Ljava/lang/String; = "Unlimited"

.field private static final S_SIMPLE_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = -0x52fdc5322d13c894L


# instance fields
.field private _links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private overseasUsageOptionSelected:I

.field private overseasUsageOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private periodEnd:Ljava/util/Date;

.field private periodEndLabel:Ljava/lang/String;

.field private previousPeriodEnd:Ljava/util/Date;

.field private previousPeriodEndLabel:Ljava/lang/String;

.field private termsAndConditions:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private usageMeter:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mma EEEE dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->S_SIMPLE_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getOptionTitle(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "optionAmount"    # Ljava/lang/Integer;

    .prologue
    .line 87
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 89
    .local v0, "numberFormat":Ljava/text/NumberFormat;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 91
    :pswitch_0
    const-string v1, "Don\'t use data overseas"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v1, "Unlimited"

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOverseasUsageOptionSelected()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->overseasUsageOptionSelected:I

    return v0
.end method

.method public getOverseasUsageOptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->overseasUsageOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPeriodEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPeriodEndFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->S_SIMPLE_DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEnd:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodEndLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEndLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEndLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPreviousPeriodEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->previousPeriodEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPreviousPeriodEndFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->S_SIMPLE_DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->previousPeriodEnd:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousPeriodEndLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->previousPeriodEndLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsAndConditions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->termsAndConditions:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTurnOnUsageOptionURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->_links:Ljava/util/Map;

    const-string v2, "turnon"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;

    .line 119
    .local v0, "action":Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;->getHref()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->usageMeter:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    return-object v0
.end method

.method public getViewDataAmountsLinkText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->_links:Ljava/util/Map;

    const-string v2, "viewamounts"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;

    .line 109
    .local v0, "action":Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViewDataAmountsLinkURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->_links:Ljava/util/Map;

    const-string v2, "viewamounts"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;

    .line 114
    .local v0, "action":Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;->getHref()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_links()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->_links:Ljava/util/Map;

    return-object v0
.end method

.method public isUsageOptionUnlimited(I)Z
    .locals 1
    .param p1, "usageOption"    # I

    .prologue
    .line 104
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsageUnlimited()Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOverseasUsageOptionSelected()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOverseasUsageOptionSelected(I)V
    .locals 0
    .param p1, "overseasUsageOptionSelected"    # I

    .prologue
    .line 82
    iput p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->overseasUsageOptionSelected:I

    .line 83
    return-void
.end method

.method public setOverseasUsageOptions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "overseasUsageOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->overseasUsageOptions:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public setPeriodEnd(Ljava/util/Date;)V
    .locals 0
    .param p1, "periodEnd"    # Ljava/util/Date;

    .prologue
    .line 135
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEnd:Ljava/util/Date;

    .line 136
    return-void
.end method

.method public setPeriodEndLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "periodEndLabel"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->periodEndLabel:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPreviousPeriodEnd(Ljava/util/Date;)V
    .locals 0
    .param p1, "previousPeriodEnd"    # Ljava/util/Date;

    .prologue
    .line 151
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->previousPeriodEnd:Ljava/util/Date;

    .line 152
    return-void
.end method

.method public setPreviousPeriodEndLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousPeriodEndLabel"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->previousPeriodEndLabel:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTermsAndConditions(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsAndConditions"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->termsAndConditions:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->timestamp:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setUsageMeter(Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;)V
    .locals 0
    .param p1, "usageMeter"    # Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    .prologue
    .line 64
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->usageMeter:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    .line 65
    return-void
.end method

.method public set_links(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "_links":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->_links:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOverseasUsageOptionSelected()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getTurnOnUsageOptionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
