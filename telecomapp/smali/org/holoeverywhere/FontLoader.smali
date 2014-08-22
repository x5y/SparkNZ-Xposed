.class public Lorg/holoeverywhere/FontLoader;
.super Ljava/lang/Object;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;,
        Lorg/holoeverywhere/FontLoader$RobotoRawFont;,
        Lorg/holoeverywhere/FontLoader$RawLazyFont;,
        Lorg/holoeverywhere/FontLoader$RawFont;,
        Lorg/holoeverywhere/FontLoader$FontStyleProvider;,
        Lorg/holoeverywhere/FontLoader$FontCollector;,
        Lorg/holoeverywhere/FontLoader$Font;
    }
.end annotation


# static fields
.field public static final ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

.field public static final ROBOTO_BLACK:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_BLACKITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_BOLD:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_BOLDCONDENSED:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_BOLDCONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_BOLDITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_CONDENSED:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_CONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_ITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_LIGHT:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_LIGHTITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_MEDIUM:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_MEDIUMITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_REGULAR:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_THIN:Lorg/holoeverywhere/FontLoader$Font;

.field public static final ROBOTO_THINITALIC:Lorg/holoeverywhere/FontLoader$Font;

.field public static final TEXT_STYLE_BLACK:I

.field public static final TEXT_STYLE_BOLD:I

.field public static final TEXT_STYLE_CONDENDSED:I

.field public static final TEXT_STYLE_ITALIC:I

.field public static final TEXT_STYLE_LIGHT:I

.field public static final TEXT_STYLE_MEDIUM:I

.field public static final TEXT_STYLE_NORMAL:I

.field public static final TEXT_STYLE_THIN:I

.field private static sDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

.field private static sFontStyleKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFontStyleMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextTextStyleOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/FontLoader;->sFontStyleMapping:Ljava/util/Map;

    .line 352
    sput v1, Lorg/holoeverywhere/FontLoader;->sNextTextStyleOffset:I

    .line 363
    sput v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    .line 364
    const-string v0, "bold"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BOLD:I

    .line 365
    const-string v0, "italic"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    .line 366
    const-string v0, "black"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BLACK:I

    .line 367
    const-string v0, "condensed"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_CONDENDSED:I

    .line 368
    const-string v0, "light"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_LIGHT:I

    .line 369
    const-string v0, "medium"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_MEDIUM:I

    .line 370
    const-string v0, "thin"

    invoke-static {v0}, Lorg/holoeverywhere/FontLoader;->registerTextStyle(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_THIN:I

    .line 372
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawFont;

    sget v1, Lorg/holoeverywhere/R$raw;->roboto_regular:I

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;-><init>(I)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_REGULAR:Lorg/holoeverywhere/FontLoader$Font;

    .line 374
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawFont;

    sget v1, Lorg/holoeverywhere/R$raw;->roboto_bold:I

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;-><init>(I)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BOLD:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLD:Lorg/holoeverywhere/FontLoader$Font;

    .line 376
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawFont;

    sget v1, Lorg/holoeverywhere/R$raw;->roboto_italic:I

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;-><init>(I)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_ITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 378
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawFont;

    sget v1, Lorg/holoeverywhere/R$raw;->roboto_bolditalic:I

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;-><init>(I)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BOLD:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 381
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_black"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BLACK:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BLACK:Lorg/holoeverywhere/FontLoader$Font;

    .line 383
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_blackitalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BLACK:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BLACKITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 385
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_boldcondensed"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BOLD:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_CONDENDSED:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDCONDENSED:Lorg/holoeverywhere/FontLoader$Font;

    .line 387
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_boldcondenseditalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_BOLD:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_CONDENDSED:I

    or-int/2addr v1, v2

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDCONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 389
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_condensed"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_CONDENDSED:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_CONDENSED:Lorg/holoeverywhere/FontLoader$Font;

    .line 391
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_condenseditalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_CONDENDSED:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_CONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 393
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_light"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_LIGHT:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_LIGHT:Lorg/holoeverywhere/FontLoader$Font;

    .line 395
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_lightitalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_LIGHT:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_LIGHTITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 397
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_medium"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_MEDIUM:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_MEDIUM:Lorg/holoeverywhere/FontLoader$Font;

    .line 399
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_mediumitalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_MEDIUM:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_MEDIUMITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 401
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_thin"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_THIN:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_THIN:Lorg/holoeverywhere/FontLoader$Font;

    .line 403
    new-instance v0, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;

    const-string v1, "roboto_thinitalic"

    invoke-direct {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_THIN:I

    sget v2, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_ITALIC:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO_THINITALIC:Lorg/holoeverywhere/FontLoader$Font;

    .line 406
    new-instance v0, Lorg/holoeverywhere/FontLoader$FontCollector;

    invoke-direct {v0}, Lorg/holoeverywhere/FontLoader$FontCollector;-><init>()V

    invoke-virtual {v0}, Lorg/holoeverywhere/FontLoader$FontCollector;->allowAnyFontFamily()Lorg/holoeverywhere/FontLoader$FontCollector;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sput-object v0, Lorg/holoeverywhere/FontLoader;->sDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    .line 407
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_REGULAR:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/FontLoader$FontCollector;->asDefaultFont()Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 408
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLD:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 409
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_ITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 410
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 411
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BLACK:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 412
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BLACKITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 413
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDCONDENSED:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 414
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_BOLDCONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 415
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_CONDENSED:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 416
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_CONDENSEDITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 417
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_LIGHT:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 418
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_LIGHTITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 419
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_MEDIUM:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 420
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_MEDIUMITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 421
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_THIN:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 422
    sget-object v0, Lorg/holoeverywhere/FontLoader;->ROBOTO:Lorg/holoeverywhere/FontLoader$FontCollector;

    sget-object v1, Lorg/holoeverywhere/FontLoader;->ROBOTO_THINITALIC:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/FontLoader$FontCollector;->register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 423
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lorg/holoeverywhere/FontLoader;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static apply(Landroid/view/View;Lorg/holoeverywhere/FontLoader$Font;)Landroid/view/View;
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lorg/holoeverywhere/FontLoader$Font;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "view":Landroid/view/View;, "TT;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-object p0

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    # setter for: Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;
    invoke-static {p1, v0}, Lorg/holoeverywhere/FontLoader$Font;->access$002(Lorg/holoeverywhere/FontLoader$Font;Landroid/content/Context;)Landroid/content/Context;

    .line 430
    invoke-static {p0, p1}, Lorg/holoeverywhere/FontLoader;->applyInternal(Landroid/view/View;Lorg/holoeverywhere/FontLoader$Font;)V

    goto :goto_0
.end method

.method public static applyDefaultFont(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "view":Landroid/view/View;, "TT;"
    sget-object v0, Lorg/holoeverywhere/FontLoader;->sDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    invoke-static {p0, v0}, Lorg/holoeverywhere/FontLoader;->apply(Landroid/view/View;Lorg/holoeverywhere/FontLoader$Font;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static applyInternal(Landroid/view/View;Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 439
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v5, p0

    .line 440
    check-cast v5, Landroid/view/ViewGroup;

    .line 441
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 442
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 443
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/holoeverywhere/FontLoader;->applyInternal(Landroid/view/View;Lorg/holoeverywhere/FontLoader$Font;)V

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v6, p0, Lorg/holoeverywhere/FontLoader$FontStyleProvider;

    if-eqz v6, :cond_1

    move-object v4, p0

    .line 447
    check-cast v4, Lorg/holoeverywhere/FontLoader$FontStyleProvider;

    .line 448
    .local v4, "provider":Lorg/holoeverywhere/FontLoader$FontStyleProvider;
    invoke-interface {v4}, Lorg/holoeverywhere/FontLoader$FontStyleProvider;->getFontStyle()I

    move-result v2

    .line 449
    .local v2, "fontStyle":I
    invoke-interface {v4}, Lorg/holoeverywhere/FontLoader$FontStyleProvider;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "fontFamily":Ljava/lang/String;
    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFont:I

    invoke-virtual {p0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_2

    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFontStyle:I

    invoke-virtual {p0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/holoeverywhere/FontLoader;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFontFamily:I

    invoke-virtual {p0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/holoeverywhere/FontLoader;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    .end local v1    # "fontFamily":Ljava/lang/String;
    .end local v2    # "fontStyle":I
    .end local v4    # "provider":Lorg/holoeverywhere/FontLoader$FontStyleProvider;
    :cond_1
    :goto_1
    return-void

    .line 455
    .restart local v1    # "fontFamily":Ljava/lang/String;
    .restart local v2    # "fontStyle":I
    .restart local v4    # "provider":Lorg/holoeverywhere/FontLoader$FontStyleProvider;
    :cond_2
    invoke-virtual {p1, v1, v2}, Lorg/holoeverywhere/FontLoader$Font;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/holoeverywhere/FontLoader$FontStyleProvider;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFont:I

    invoke-virtual {p0, v6, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 457
    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFontStyle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 458
    sget v6, Lorg/holoeverywhere/R$id;->fontLoaderFontFamily:I

    invoke-virtual {p0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 463
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getDefaultFont()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lorg/holoeverywhere/FontLoader;->sDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    return-object v0
.end method

.method public static parseFontStyle(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "fontFamily":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 473
    .local v0, "c":I
    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 475
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 477
    :cond_0
    sget-object v5, Lorg/holoeverywhere/FontLoader;->sFontStyleKeys:Ljava/util/List;

    if-nez v5, :cond_1

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lorg/holoeverywhere/FontLoader;->sFontStyleMapping:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lorg/holoeverywhere/FontLoader;->sFontStyleKeys:Ljava/util/List;

    .line 480
    :cond_1
    sget v4, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    .line 481
    .local v4, "textStyle":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lorg/holoeverywhere/FontLoader;->sFontStyleKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 482
    sget-object v5, Lorg/holoeverywhere/FontLoader;->sFontStyleKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    sget-object v5, Lorg/holoeverywhere/FontLoader;->sFontStyleMapping:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v4, v5

    .line 481
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    if-nez v1, :cond_4

    sget v7, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    if-ne v4, v7, :cond_4

    .end local p0    # "string":Ljava/lang/String;
    :goto_1
    aput-object p0, v5, v6

    return-object v5

    .restart local p0    # "string":Ljava/lang/String;
    :cond_4
    move-object p0, v1

    goto :goto_1
.end method

.method public static registerTextStyle(Ljava/lang/String;)I
    .locals 4
    .param p0, "modifier"    # Ljava/lang/String;

    .prologue
    .line 494
    sget v1, Lorg/holoeverywhere/FontLoader;->sNextTextStyleOffset:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 495
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too much text styles!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_0
    const/4 v1, 0x1

    sget v2, Lorg/holoeverywhere/FontLoader;->sNextTextStyleOffset:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/holoeverywhere/FontLoader;->sNextTextStyleOffset:I

    shl-int v0, v1, v2

    .line 498
    .local v0, "flag":I
    sget-object v1, Lorg/holoeverywhere/FontLoader;->sFontStyleMapping:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v1, 0x0

    sput-object v1, Lorg/holoeverywhere/FontLoader;->sFontStyleKeys:Ljava/util/List;

    .line 500
    return v0
.end method

.method public static setDefaultFont(Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 0
    .param p0, "defaultFont"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 504
    sput-object p0, Lorg/holoeverywhere/FontLoader;->sDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    .line 505
    return-void
.end method
