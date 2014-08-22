.class public Lnz/co/telecom/smartphone/util/PhoneFormatUtils;
.super Ljava/lang/Object;
.source "PhoneFormatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 10
    invoke-static {p0}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 46
    move-object v0, p0

    .line 47
    .local v0, "left":Ljava/lang/String;
    const-string v1, ""

    .line 48
    .local v1, "mid":Ljava/lang/String;
    const-string v2, ""

    .line 51
    .local v2, "right":Ljava/lang/String;
    :goto_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "%s%s%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 56
    :goto_1
    return-object v3

    .line 16
    .end local v0    # "left":Ljava/lang/String;
    .end local v1    # "mid":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :pswitch_0
    move-object v0, p0

    .line 17
    .restart local v0    # "left":Ljava/lang/String;
    const-string v1, ""

    .line 18
    .restart local v1    # "mid":Ljava/lang/String;
    const-string v2, ""

    .line 19
    .restart local v2    # "right":Ljava/lang/String;
    goto :goto_0

    .line 24
    .end local v0    # "left":Ljava/lang/String;
    .end local v1    # "mid":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 25
    .restart local v0    # "left":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    .restart local v1    # "mid":Ljava/lang/String;
    const-string v2, ""

    .line 27
    .restart local v2    # "right":Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v0    # "left":Ljava/lang/String;
    .end local v1    # "mid":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    .restart local v0    # "left":Ljava/lang/String;
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 35
    .restart local v1    # "mid":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    .restart local v2    # "right":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v0    # "left":Ljava/lang/String;
    .end local v1    # "mid":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .restart local v0    # "left":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    .restart local v1    # "mid":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .restart local v2    # "right":Ljava/lang/String;
    goto :goto_0

    .line 53
    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "%s %s%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 56
    :cond_1
    const-string v3, "%s %s %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "oneNumber"    # Ljava/lang/String;

    .prologue
    .line 5
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
