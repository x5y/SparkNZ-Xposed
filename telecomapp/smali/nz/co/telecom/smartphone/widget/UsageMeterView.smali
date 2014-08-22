.class public Lnz/co/telecom/smartphone/widget/UsageMeterView;
.super Landroid/view/View;
.source "UsageMeterView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static boldFont:Landroid/graphics/Typeface;

.field private static final dateFormatter:Ljava/text/DateFormat;

.field private static descrFontSize:I

.field private static headerHeight:I

.field private static isDimensionsSet:Z

.field private static margin:I

.field private static marginBottom:I

.field private static marginLeft:I

.field private static marginRight:I

.field private static marginTop:I

.field private static final numberFormatter:Ljava/text/NumberFormat;

.field private static regularFont:Landroid/graphics/Typeface;

.field private static titleFontSize:I

.field private static usageBarHeight:I

.field private static usageBarHighlightHeight:I

.field private static usageBarSoftLimitMarkerWidth:I


# instance fields
.field private BOLD_FONT_NAME:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0e0053
    .end annotation
.end field

.field private COLOR_BACKGROUND_TOUCH_DOWN:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b005b
    .end annotation
.end field

.field private COLOR_BACKGROUND_TOUCH_UP:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b005c
    .end annotation
.end field

.field private COLOR_HIGHLIGHT:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b005d
    .end annotation
.end field

.field private COLOR_OVER:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b005e
    .end annotation
.end field

.field private COLOR_SELF:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b005f
    .end annotation
.end field

.field private COLOR_SOFTLIMIT:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0060
    .end annotation
.end field

.field private COLOR_TEXT_1:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0061
    .end annotation
.end field

.field private COLOR_TEXT_2:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0062
    .end annotation
.end field

.field private COLOR_TEXT_TITLE:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0063
    .end annotation
.end field

.field private COLOR_UNDERLINE:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0064
    .end annotation
.end field

.field private COLOR_UNUSED:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0065
    .end annotation
.end field

.field private COLOR_USED:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0066
    .end annotation
.end field

.field private REGULAR_FONT_NAME:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0e0054
    .end annotation
.end field

.field private calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

.field private height:I

.field private heightCalculated:Z

.field private isTouchDown:Z

.field private isUsageLimitMonetaryLimit:Z

.field lineDividerColor:I
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0b0046
    .end annotation
.end field

.field private mViewAsBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private periodEnd:Ljava/util/Date;

.field private periodEndLabel:Ljava/lang/String;

.field private periodEndString:Ljava/lang/String;

.field private positionInList:I

.field private rect:Landroid/graphics/Rect;

.field private remainingLabel:Ljava/lang/String;

.field private setIsUsageUnlimited:Z

.field private textPaint:Landroid/text/TextPaint;

.field private title:Ljava/lang/String;

.field private usageLabel:Ljava/lang/String;

.field private usageLabelLayout:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 33
    const-class v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->dateFormatter:Ljava/text/DateFormat;

    .line 40
    sget-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 41
    sget-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    sput-boolean v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isDimensionsSet:Z

    .line 94
    sput v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    .line 95
    sput v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginBottom:I

    .line 96
    sput v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    .line 97
    sput v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    .line 98
    const/16 v0, 0x15

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    .line 99
    const/16 v0, 0x14

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    .line 100
    const/16 v0, 0xf

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHeight:I

    .line 101
    const/4 v0, 0x3

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHighlightHeight:I

    .line 102
    const/4 v0, 0x1

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarSoftLimitMarkerWidth:I

    .line 103
    const/16 v0, 0xe

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    .line 104
    const/16 v0, 0x12

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->titleFontSize:I

    .line 105
    sput-object v4, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    .line 106
    sput-object v4, Lnz/co/telecom/smartphone/widget/UsageMeterView;->boldFont:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positionInList"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 109
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 111
    new-instance v0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    .line 112
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    .line 115
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    .line 119
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    .line 124
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 126
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 127
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 143
    iput p2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 144
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->init(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "positionInList"    # I
    .param p3, "viewAsBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 109
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 111
    new-instance v0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    .line 112
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    .line 115
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    .line 119
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    .line 124
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 126
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 127
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 149
    iput p2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 150
    iput-object p3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    .line 151
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->init(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 109
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 111
    new-instance v0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    .line 112
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    .line 115
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    .line 119
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    .line 124
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 126
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 127
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 138
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->init(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "i"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 109
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 111
    new-instance v0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    .line 112
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    .line 115
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    .line 119
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    .line 124
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 126
    iput v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    .line 127
    iput-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 133
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->init(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method private calculateHeight(I)I
    .locals 11
    .param p1, "width"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 245
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    if-nez v0, :cond_4

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "leftHeight":I
    const/4 v10, 0x0

    .line 249
    .local v10, "rightHeight":I
    sget v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 250
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 251
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 255
    :cond_0
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getHardUsageLimit()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSoftUsageLimit()F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getTotalUsage()F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSelfUsage()F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    .line 256
    const/4 v8, 0x0

    .line 257
    const/4 v10, 0x0

    .line 258
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 261
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 264
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 266
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 267
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 268
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 271
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 273
    :cond_2
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 275
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHeight:I

    add-int/2addr v1, v2

    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 277
    sget-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimit()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, "msg":Ljava/lang/String;
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 280
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 283
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 292
    .end local v9    # "msg":Ljava/lang/String;
    :cond_3
    :goto_1
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    .line 293
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 296
    .end local v8    # "leftHeight":I
    .end local v10    # "rightHeight":I
    :cond_4
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    return v0

    .line 252
    .restart local v8    # "leftHeight":I
    .restart local v10    # "rightHeight":I
    :cond_5
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 253
    :cond_7
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    goto/16 :goto_0

    .line 285
    :cond_8
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_9

    .line 287
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    sub-int v3, p1, v3

    sget v4, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 289
    :cond_9
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->height:I

    goto :goto_1
.end method

.method private drawTitleAndPeriodEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;IF)I
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "heightOffset"    # I
    .param p5, "width"    # F

    .prologue
    .line 395
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    add-int v8, p4, v1

    .line 396
    .local v8, "bottomLine":I
    const/4 v9, 0x0

    .line 398
    .local v9, "drawnStuff":Z
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 399
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v10, v1

    .line 400
    .local v10, "left":F
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 401
    .local v2, "tp":Landroid/text/TextPaint;
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_TITLE:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 402
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->titleFontSize:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 403
    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 404
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, -0x96

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 407
    .local v0, "sl":Landroid/text/StaticLayout;
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v1, v1

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    const/4 v9, 0x1

    .line 413
    .end local v0    # "sl":Landroid/text/StaticLayout;
    .end local v2    # "tp":Landroid/text/TextPaint;
    .end local v10    # "left":F
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 414
    move v11, v8

    .line 415
    .local v11, "rightHeight":I
    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 416
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    const/4 v9, 0x1

    .line 420
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 422
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v8

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    add-int/2addr v1, v3

    sub-int/2addr v11, v1

    .line 426
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 427
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v11

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 430
    .end local v11    # "rightHeight":I
    :cond_2
    if-eqz v9, :cond_3

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    add-int/2addr v1, v3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drawUsageBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)F
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "heightOffset"    # F
    .param p4, "width"    # F

    .prologue
    .line 459
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v2, v1

    .line 460
    .local v2, "left":F
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    int-to-float v1, v1

    sub-float v4, p4, v1

    .line 461
    .local v4, "right":F
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    int-to-float v1, v1

    add-float v3, v1, p3

    .line 462
    .local v3, "top":F
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHeight:I

    int-to-float v1, v1

    add-float v5, v3, v1

    .line 463
    .local v5, "bottom":F
    sub-float v12, v4, v2

    .line 464
    .local v12, "barWidth":F
    const/4 v13, 0x0

    .local v13, "sectionLeft":F
    const/4 v14, 0x0

    .line 475
    .local v14, "sectionRight":F
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_BACKGROUND_TOUCH_DOWN:I

    :goto_0
    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setBackgroundColor(I)V

    .line 476
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_UNUSED:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 477
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 478
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_UNDERLINE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    const/high16 v1, 0x3f800000

    add-float v10, v5, v1

    move-object/from16 v6, p1

    move v7, v2

    move v8, v5

    move v9, v4

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 484
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_HIGHLIGHT:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    const/high16 v1, 0x3f000000

    const/high16 v6, 0x3f800000

    const/high16 v8, 0x3f800000

    iget v10, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_HIGHLIGHT:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6, v8, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 487
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHighlightHeight:I

    int-to-float v1, v1

    add-float v10, v3, v1

    move-object/from16 v6, p1

    move v7, v2

    move v8, v3

    move v9, v4

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6, v8, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 494
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getTotalUsageMultiplier()F

    move-result v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    move v7, v2

    .line 496
    .end local v13    # "sectionLeft":F
    .local v7, "sectionLeft":F
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getTotalUsageMultiplier()F

    move-result v1

    mul-float/2addr v1, v12

    add-float v9, v2, v1

    .line 497
    .end local v14    # "sectionRight":F
    .local v9, "sectionRight":F
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_USED:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p1

    move v8, v3

    move v10, v5

    move-object/from16 v11, p2

    .line 498
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 501
    :goto_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSelfUsageMultiplier()F

    move-result v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    move v7, v2

    .line 503
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSelfUsageMultiplier()F

    move-result v1

    mul-float/2addr v1, v12

    add-float v9, v2, v1

    .line 504
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_SELF:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p1

    move v8, v3

    move v10, v5

    move-object/from16 v11, p2

    .line 505
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimitMultiplier()F

    move-result v1

    const/high16 v6, 0x3f800000

    invoke-static {v1, v6}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getHardUsageLimitMultiplier()F

    move-result v1

    mul-float/2addr v1, v12

    add-float v7, v2, v1

    .line 510
    move v9, v4

    .line 511
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_OVER:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p1

    move v8, v3

    move v10, v5

    move-object/from16 v11, p2

    .line 512
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->drawSoftLimitMarker()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSoftUsageLimitMultiplier()F

    move-result v1

    mul-float/2addr v1, v12

    add-float v9, v2, v1

    .line 518
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarSoftLimitMarkerWidth:I

    int-to-float v1, v1

    sub-float v7, v9, v1

    .line 519
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_SOFTLIMIT:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p1

    move v8, v3

    move v10, v5

    move-object/from16 v11, p2

    .line 520
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 523
    :cond_2
    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    sget v6, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHeight:I

    add-int/2addr v1, v6

    sget v6, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    return v1

    .line 475
    .end local v7    # "sectionLeft":F
    .end local v9    # "sectionRight":F
    .restart local v13    # "sectionLeft":F
    .restart local v14    # "sectionRight":F
    :cond_3
    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_BACKGROUND_TOUCH_UP:I

    goto/16 :goto_0

    :cond_4
    move v9, v14

    .end local v14    # "sectionRight":F
    .restart local v9    # "sectionRight":F
    move v7, v13

    .end local v13    # "sectionLeft":F
    .restart local v7    # "sectionLeft":F
    goto/16 :goto_1
.end method

.method private drawUsageLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;FF)I
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "heightOffset"    # F
    .param p5, "width"    # F

    .prologue
    const/4 v5, 0x0

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "leftHeight":I
    const/4 v1, 0x0

    .line 437
    .local v1, "rightHeight":I
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 438
    sget-object v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 439
    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    iget v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_2:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v5, v3, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 442
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v3, v3

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 445
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 446
    sget-object v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 447
    sget v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    iget v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_2:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v5, v3, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 450
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 453
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private drawUsageLimitText(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)I
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "heightOffset"    # F
    .param p4, "width"    # F

    .prologue
    const/4 v10, 0x0

    .line 527
    sget-object v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    iget-object v8, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimit()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 530
    .local v5, "rect":Landroid/graphics/Rect;
    sget v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    int-to-float v7, v7

    sub-float v6, p4, v7

    .line 531
    .local v6, "right":F
    sget v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v3, v7

    .line 532
    .local v3, "left":F
    sub-float v0, v6, v3

    .line 537
    .local v0, "barWidth":F
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimit()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 538
    sget-object v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    iget-object v8, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimit()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 539
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getEffectiveUsageLimitMultiplier()F

    move-result v7

    mul-float/2addr v7, v0

    add-float v6, v3, v7

    .line 551
    :cond_0
    :goto_0
    sget-object v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 552
    sget v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 553
    iget v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v4, v10, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 555
    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 556
    .local v1, "boundary":F
    sget v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_1

    .line 557
    sget v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v1, v7

    .line 560
    :cond_1
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    if-eqz v7, :cond_2

    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    :cond_2
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    if-eqz v7, :cond_3

    .line 564
    const-string v4, ""

    .line 566
    :cond_3
    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p3

    invoke-virtual {p1, v4, v1, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 569
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->drawSoftLimitMarker()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    sget-object v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    iget-object v8, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSoftUsageLimit()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v4, v10, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 572
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSoftUsageLimitMultiplier()F

    move-result v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 573
    cmpl-float v7, v6, v3

    if-gez v7, :cond_4

    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    cmpg-float v7, v7, v1

    if-gez v7, :cond_5

    .line 574
    :cond_4
    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p3

    invoke-virtual {p1, v4, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    :cond_5
    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    return v7

    .line 541
    .end local v1    # "boundary":F
    :cond_6
    sget-object v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;->numberFormatter:Ljava/text/NumberFormat;

    iget-object v8, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getHardUsageLimit()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 542
    iget-object v7, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getHardUsageLimitMultiplier()F

    move-result v2

    .line 543
    .local v2, "hardMultiplier":F
    const/high16 v7, 0x7f800000

    cmpl-float v7, v2, v7

    if-nez v7, :cond_0

    .line 544
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    add-float v6, v3, v7

    goto/16 :goto_0
.end method

.method private getMeasurement(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "preferred"    # I

    .prologue
    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 303
    .local v1, "specSize":I
    const/4 v0, 0x0

    .line 305
    .local v0, "measurement":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 313
    move v0, p2

    .line 317
    :goto_0
    return v0

    .line 307
    :sswitch_0
    move v0, v1

    .line 308
    goto :goto_0

    .line 310
    :sswitch_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-static {p1, p0}, Lroboguice/RoboGuice;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-boolean v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isDimensionsSet:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->REGULAR_FONT_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->BOLD_FONT_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->boldFont:Landroid/graphics/Typeface;

    .line 165
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    .line 166
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->titleFontSize:I

    .line 167
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    .line 168
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginBottom:I

    .line 169
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    .line 170
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    .line 171
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->headerHeight:I

    .line 172
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->margin:I

    .line 173
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHeight:I

    .line 174
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarHighlightHeight:I

    .line 175
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageBarSoftLimitMarkerWidth:I

    .line 177
    sput-boolean v2, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isDimensionsSet:Z

    .line 180
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    sget v1, Lnz/co/telecom/smartphone/widget/UsageMeterView;->descrFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 183
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->COLOR_TEXT_1:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 349
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 350
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->mViewAsBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getMeasuredWidth()I

    move-result v10

    .line 355
    .local v10, "width":I
    sget v8, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginTop:I

    .line 357
    .local v8, "height":I
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 363
    iget v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->positionInList:I

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->lineDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 366
    sget v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v1, v0

    const/4 v2, 0x0

    sget v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    :cond_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    int-to-float v5, v10

    move-object v0, p0

    move-object v1, p1

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->drawTitleAndPeriodEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;IF)I

    move-result v0

    add-int/2addr v8, v0

    .line 370
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getHardUsageLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSoftUsageLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getTotalUsage()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->getSelfUsage()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 371
    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->rect:Landroid/graphics/Rect;

    int-to-float v4, v8

    int-to-float v5, v10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->drawUsageLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;FF)I

    move-result v0

    add-int/2addr v8, v0

    .line 372
    int-to-float v0, v8

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    int-to-float v2, v8

    int-to-float v3, v10

    invoke-direct {p0, p1, v1, v2, v3}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->drawUsageBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 373
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->paint:Landroid/graphics/Paint;

    int-to-float v1, v8

    int-to-float v2, v10

    invoke-direct {p0, p1, v0, v1, v2}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->drawUsageLimitText(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)I

    move-result v0

    add-int/2addr v8, v0

    goto/16 :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_4

    .line 377
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->textPaint:Landroid/text/TextPaint;

    sget v3, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    sub-int v3, v10, v3

    sget v4, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginRight:I

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 379
    :cond_4
    sget v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->marginLeft:I

    int-to-float v0, v0

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 383
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v8, v0

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v9

    .line 385
    .local v9, "rtexp":Ljava/lang/IllegalStateException;
    sget-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->TAG:Ljava/lang/String;

    const-string v1, "Error restoring canvas"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getMeasurement(II)I

    move-result v1

    .line 240
    .local v1, "width":I
    invoke-direct {p0, v1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculateHeight(I)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getMeasurement(II)I

    move-result v0

    .line 241
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setMeasuredDimension(II)V

    .line 242
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 325
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    :pswitch_0
    return v2

    .line 327
    :pswitch_1
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 342
    :goto_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->invalidate()V

    goto :goto_0

    .line 331
    :pswitch_2
    iput-boolean v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    .line 332
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 336
    :pswitch_3
    iput-boolean v3, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isTouchDown:Z

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setIsUsageLimitMonetaryLimit(Z)V
    .locals 0
    .param p1, "isUsageLimitMonetaryLimit"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->isUsageLimitMonetaryLimit:Z

    .line 231
    return-void
.end method

.method public setIsUsageUnlimited(Z)V
    .locals 0
    .param p1, "isUsageUnlimited"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageUnlimited:Z

    .line 235
    return-void
.end method

.method public setPeriodEnd(Ljava/util/Date;)V
    .locals 1
    .param p1, "periodEnd"    # Ljava/util/Date;

    .prologue
    .line 213
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEnd:Ljava/util/Date;

    .line 214
    if-eqz p1, :cond_0

    .line 215
    sget-object v0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndString:Ljava/lang/String;

    .line 217
    :cond_0
    return-void
.end method

.method public setPeriodEndLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "periodEndLabel"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->periodEndLabel:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setRemainingLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "remainingLabel"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->remainingLabel:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->heightCalculated:Z

    .line 227
    return-void
.end method

.method public setSelfUsage(F)V
    .locals 1
    .param p1, "selfUsage"    # F

    .prologue
    .line 193
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->setSelfUsage(F)V

    .line 194
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->title:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setTotalUsage(F)V
    .locals 1
    .param p1, "totalUsage"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->setTotalUsage(F)V

    .line 190
    return-void
.end method

.method public setUsageHardLimit(F)V
    .locals 1
    .param p1, "hardUsageLimit"    # F

    .prologue
    .line 197
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->setHardUsageLimit(F)V

    .line 198
    return-void
.end method

.method public setUsageLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "usageLabel"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabel:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->usageLabelLayout:Landroid/text/StaticLayout;

    .line 222
    return-void
.end method

.method public setUsageSoftLimit(F)V
    .locals 1
    .param p1, "softUsageLimit"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/UsageMeterView;->calculator:Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->setSoftUsageLimit(F)V

    .line 202
    return-void
.end method
