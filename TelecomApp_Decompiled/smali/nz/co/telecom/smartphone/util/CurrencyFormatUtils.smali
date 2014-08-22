.class public Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;
.super Ljava/lang/Object;
.source "CurrencyFormatUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static formatCurrency(F)Ljava/lang/String;
    .locals 2
    .param p0, "currency"    # F

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, v0}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(FIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCurrency(FIIZ)Ljava/lang/String;
    .locals 3
    .param p0, "currency"    # F
    .param p1, "minFractionalDigits"    # I
    .param p2, "maxFractionalDigits"    # I
    .param p3, "groupingUsed"    # Z

    .prologue
    .line 18
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 19
    .local v0, "currencyFormatter":Ljava/text/NumberFormat;
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 20
    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 21
    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 22
    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
