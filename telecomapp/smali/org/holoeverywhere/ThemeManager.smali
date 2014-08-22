.class public final Lorg/holoeverywhere/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/ThemeManager$1;,
        Lorg/holoeverywhere/ThemeManager$ThemeSetter;,
        Lorg/holoeverywhere/ThemeManager$ThemeGetter;,
        Lorg/holoeverywhere/ThemeManager$SuperStartActivity;
    }
.end annotation


# static fields
.field public static final COLOR_SCHEME_MASK:I

.field public static final DARK:I

.field public static final DIALOG:I

.field public static final DIALOG_WHEN_LARGE:I

.field public static final FULLSCREEN:I

.field public static final INVALID:I = 0x0

.field public static final KEY_CREATED_BY_THEME_MANAGER:Ljava/lang/String; = ":holoeverywhere:createbythememanager"

.field public static final KEY_INSTANCE_STATE:Ljava/lang/String; = ":holoeverywhere:instancestate"

.field public static final LIGHT:I

.field public static final MIXED:I

.field private static NEXT_OFFSET:I = 0x0

.field public static final NO_ACTION_BAR:I

.field public static final WALLPAPER:I

.field private static _DEFAULT_THEME:I = 0x0

.field public static final _START_RESOURCES_ID:I = 0x1000000

.field private static final _THEMES_MAP:Landroid/util/SparseIntArray;

.field private static _THEME_GETTER:Lorg/holoeverywhere/ThemeManager$ThemeGetter; = null

.field private static _THEME_MASK:I = 0x0

.field private static _THEME_MODIFIER:I = 0x0

.field private static final _THEME_TAG:Ljava/lang/String; = ":holoeverywhere:theme"

.field private static sThemeSetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/ThemeManager$ThemeSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    sput v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    .line 204
    sput v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 206
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    .line 247
    sput v1, Lorg/holoeverywhere/ThemeManager;->NEXT_OFFSET:I

    .line 262
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    .line 263
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    .line 264
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    or-int/2addr v0, v1

    sput v0, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    .line 265
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    .line 266
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    .line 267
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    .line 268
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->DIALOG:I

    .line 269
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    sput v0, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    .line 271
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    or-int/2addr v0, v1

    sget v1, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    or-int/2addr v0, v1

    sput v0, Lorg/holoeverywhere/ThemeManager;->COLOR_SCHEME_MASK:I

    .line 273
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->reset()V

    .line 274
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    return-void
.end method

.method public static applyTheme(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->applyTheme(Lorg/holoeverywhere/app/Activity;Z)V

    .line 281
    return-void
.end method

.method public static applyTheme(Lorg/holoeverywhere/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "force"    # Z

    .prologue
    .line 287
    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->hasSpecifiedTheme(Lorg/holoeverywhere/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->setTheme(I)V

    .line 290
    :cond_1
    return-void
.end method

.method public static cloneTheme(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "sourceIntent"    # Landroid/content/Intent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/ThemeManager;->cloneTheme(Landroid/content/Intent;Landroid/content/Intent;Z)V

    .line 300
    return-void
.end method

.method public static cloneTheme(Landroid/content/Intent;Landroid/content/Intent;Z)V
    .locals 3
    .param p0, "sourceIntent"    # Landroid/content/Intent;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "force"    # Z

    .prologue
    .line 313
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->hasSpecifiedTheme(Landroid/content/Intent;)Z

    move-result v0

    .line 314
    .local v0, "hasSourceTheme":Z
    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    const-string v2, ":holoeverywhere:theme"

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    :cond_1
    return-void

    .line 315
    :cond_2
    sget v1, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    goto :goto_0
.end method

.method public static context(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/ThemeManager;->context(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static context(Landroid/content/Context;IZ)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I
    .param p2, "applyModifier"    # Z

    .prologue
    .line 325
    :goto_0
    instance-of v0, p0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    if-eqz v0, :cond_0

    .line 326
    check-cast p0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 328
    :cond_0
    new-instance v0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    invoke-static {p1, p2}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(IZ)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getDefaultTheme()I
    .locals 1

    .prologue
    .line 339
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    return v0
.end method

.method public static getModifier()I
    .locals 1

    .prologue
    .line 348
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    return v0
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;Z)I

    move-result v0

    return v0
.end method

.method public static getTheme(Landroid/content/Intent;Z)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "applyModifier"    # Z

    .prologue
    .line 369
    const-string v0, ":holoeverywhere:theme"

    sget v1, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/holoeverywhere/ThemeManager;->prepareFlags(IZ)I

    move-result v0

    return v0
.end method

.method public static getTheme(Lorg/holoeverywhere/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getThemeMask()I
    .locals 1

    .prologue
    .line 374
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    return v0
.end method

.method public static getThemeResource(I)I
    .locals 1
    .param p0, "themeTag"    # I

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(IZ)I

    move-result v0

    return v0
.end method

.method public static getThemeResource(IZ)I
    .locals 6
    .param p0, "themeTag"    # I
    .param p1, "applyModifier"    # Z

    .prologue
    const/4 v5, -0x1

    .line 395
    invoke-static {p0, p1}, Lorg/holoeverywhere/ThemeManager;->prepareFlags(IZ)I

    move-result p0

    .line 396
    const/high16 v2, 0x1000000

    if-lt p0, v2, :cond_0

    .line 410
    .end local p0    # "themeTag":I
    :goto_0
    return p0

    .line 399
    .restart local p0    # "themeTag":I
    :cond_0
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->_THEME_GETTER:Lorg/holoeverywhere/ThemeManager$ThemeGetter;

    if-eqz v2, :cond_1

    .line 400
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->_THEME_GETTER:Lorg/holoeverywhere/ThemeManager$ThemeGetter;

    new-instance v3, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;-><init>(ILorg/holoeverywhere/ThemeManager$1;)V

    invoke-interface {v2, v3}, Lorg/holoeverywhere/ThemeManager$ThemeGetter;->getThemeResource(Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;)I

    move-result v0

    .line 402
    .local v0, "getterResource":I
    if-lez v0, :cond_1

    move p0, v0

    .line 403
    goto :goto_0

    .line 406
    .end local v0    # "getterResource":I
    :cond_1
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 407
    .local v1, "i":I
    if-ne v1, v5, :cond_2

    .line 408
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    sget v3, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    sget v4, Lorg/holoeverywhere/R$style;->Holo_Theme:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v1

    .line 410
    goto :goto_0
.end method

.method public static getThemeResource(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 418
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(I)I

    move-result v0

    return v0
.end method

.method public static getThemeResource(Lorg/holoeverywhere/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 381
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(I)I

    move-result v0

    return v0
.end method

.method public static getThemeType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 422
    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lorg/holoeverywhere/R$attr;->holoTheme:I

    aput v4, v3, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 425
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 426
    .local v1, "holoTheme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    packed-switch v1, :pswitch_data_0

    .line 438
    :goto_0
    return v2

    .line 429
    :pswitch_0
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    goto :goto_0

    .line 431
    :pswitch_1
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    goto :goto_0

    .line 433
    :pswitch_2
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    goto :goto_0

    .line 435
    :pswitch_3
    invoke-static {}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->obtainThemeTag()I

    move-result v2

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasSpecifiedTheme(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 454
    if-eqz p0, :cond_0

    const-string v1, ":holoeverywhere:theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":holoeverywhere:theme"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasSpecifiedTheme(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 446
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->hasSpecifiedTheme(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method private static is(II)Z
    .locals 1
    .param p0, "config"    # I
    .param p1, "key"    # I

    .prologue
    .line 459
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDark(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 467
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isDark(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 471
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDark(I)Z

    move-result v0

    return v0
.end method

.method public static isDark(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 463
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDark(I)Z

    move-result v0

    return v0
.end method

.method public static isDialog(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 479
    sget v0, Lorg/holoeverywhere/ThemeManager;->DIALOG:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isDialog(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 483
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDialog(I)Z

    move-result v0

    return v0
.end method

.method public static isDialog(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 475
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDialog(I)Z

    move-result v0

    return v0
.end method

.method public static isDialogWhenLarge(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 491
    sget v0, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isDialogWhenLarge(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 495
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDialog(I)Z

    move-result v0

    return v0
.end method

.method public static isDialogWhenLarge(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 487
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isDialog(I)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 503
    sget v0, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isFullScreen(I)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 499
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isFullScreen(I)Z

    move-result v0

    return v0
.end method

.method public static isLight(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 515
    sget v0, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isLight(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 519
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isLight(I)Z

    move-result v0

    return v0
.end method

.method public static isLight(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 511
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isLight(I)Z

    move-result v0

    return v0
.end method

.method public static isMixed(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 527
    sget v0, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isMixed(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 531
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isMixed(I)Z

    move-result v0

    return v0
.end method

.method public static isMixed(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 523
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isMixed(I)Z

    move-result v0

    return v0
.end method

.method public static isNoActionBar(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 539
    sget v0, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isNoActionBar(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 543
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isNoActionBar(I)Z

    move-result v0

    return v0
.end method

.method public static isNoActionBar(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 535
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isNoActionBar(I)Z

    move-result v0

    return v0
.end method

.method public static isWallpaper(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 551
    sget v0, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->is(II)Z

    move-result v0

    return v0
.end method

.method public static isWallpaper(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 555
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isWallpaper(I)Z

    move-result v0

    return v0
.end method

.method public static isWallpaper(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 547
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/holoeverywhere/ThemeManager;->isWallpaper(I)Z

    move-result v0

    return v0
.end method

.method public static makeNewFlag()I
    .locals 4

    .prologue
    .line 563
    sget v1, Lorg/holoeverywhere/ThemeManager;->NEXT_OFFSET:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 564
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 566
    :cond_0
    const/4 v1, 0x1

    sget v2, Lorg/holoeverywhere/ThemeManager;->NEXT_OFFSET:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/holoeverywhere/ThemeManager;->NEXT_OFFSET:I

    shl-int v0, v1, v2

    .line 567
    .local v0, "flag":I
    sget v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    or-int/2addr v1, v0

    sput v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    .line 568
    return v0
.end method

.method public static map(I)V
    .locals 1
    .param p0, "theme"    # I

    .prologue
    .line 577
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    invoke-static {v0, p0}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 578
    return-void
.end method

.method public static map(II)V
    .locals 3
    .param p0, "flags"    # I
    .param p1, "theme"    # I

    .prologue
    .line 593
    if-lez p1, :cond_1

    .line 594
    sget-object v1, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    sget v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v2, p0

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    sget-object v1, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    sget v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 597
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 598
    sget-object v1, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0
.end method

.method public static modify(I)V
    .locals 2
    .param p0, "mod"    # I

    .prologue
    .line 613
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    sput v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 614
    return-void
.end method

.method public static modifyClear()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 625
    return-void
.end method

.method public static modifyClear(I)V
    .locals 1
    .param p0, "mod"    # I

    .prologue
    .line 635
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr p0, v0

    .line 636
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    or-int/2addr v0, p0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 637
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    xor-int/2addr v0, p0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 638
    return-void
.end method

.method public static modifyDefaultTheme(I)V
    .locals 2
    .param p0, "mod"    # I

    .prologue
    .line 648
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    sput v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 649
    return-void
.end method

.method public static modifyDefaultThemeClear(I)V
    .locals 1
    .param p0, "mod"    # I

    .prologue
    .line 659
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr p0, v0

    .line 660
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    or-int/2addr v0, p0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 661
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    xor-int/2addr v0, p0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 662
    return-void
.end method

.method private static prepareFlags(IZ)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "applyModifier"    # Z

    .prologue
    .line 665
    const/high16 v0, 0x1000000

    if-lt p0, v0, :cond_0

    .line 671
    .end local p0    # "i":I
    :goto_0
    return p0

    .line 668
    .restart local p0    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    if-lez v0, :cond_1

    .line 669
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    or-int/2addr p0, v0

    .line 671
    :cond_1
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr p0, v0

    goto :goto_0
.end method

.method public static registerThemeSetter(Lorg/holoeverywhere/ThemeManager$ThemeSetter;)V
    .locals 1
    .param p0, "themeSetter"    # Lorg/holoeverywhere/ThemeManager$ThemeSetter;

    .prologue
    .line 675
    if-nez p0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    sget-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    if-nez v0, :cond_2

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    .line 681
    :cond_2
    sget-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    sget-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-interface {p0}, Lorg/holoeverywhere/ThemeManager$ThemeSetter;->setupThemes()V

    goto :goto_0
.end method

.method public static removeTheme(Lorg/holoeverywhere/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":holoeverywhere:theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public static reset()V
    .locals 4

    .prologue
    .line 698
    sget v2, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->COLOR_SCHEME_MASK:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 699
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sput v2, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 701
    :cond_0
    const/4 v2, 0x0

    sput v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 702
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->_THEMES_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 704
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 706
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 708
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 710
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_NoActionBar_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 712
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 714
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 716
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 719
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 721
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_NoActionBar_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 723
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 725
    sget v2, Lorg/holoeverywhere/ThemeManager;->DARK:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_NoActionBar_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 728
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 730
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 732
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 734
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_NoActionBar_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 736
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog_Light:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 738
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge_Light:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 740
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge_Light_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 743
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 745
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_NoActionBar_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 747
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 749
    sget v2, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_NoActionBar_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 752
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 754
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 756
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 758
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_NoActionBar_Fullscreen:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 760
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog_Light:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 762
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge_Light_DarkActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 764
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->DIALOG_WHEN_LARGE:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_DialogWhenLarge_Light_DarkActionBar_NoActionBar:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 767
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 769
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_NoActionBar_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 771
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 773
    sget v2, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    sget v3, Lorg/holoeverywhere/ThemeManager;->NO_ACTION_BAR:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->FULLSCREEN:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/ThemeManager;->WALLPAPER:I

    or-int/2addr v2, v3

    sget v3, Lorg/holoeverywhere/R$style;->Holo_Theme_Light_DarkActionBar_NoActionBar_Fullscreen_Wallpaper:I

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 776
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 777
    sget-object v2, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/ThemeManager$ThemeSetter;

    .line 778
    .local v1, "setter":Lorg/holoeverywhere/ThemeManager$ThemeSetter;
    invoke-interface {v1}, Lorg/holoeverywhere/ThemeManager$ThemeSetter;->setupThemes()V

    goto :goto_0

    .line 781
    .end local v1    # "setter":Lorg/holoeverywhere/ThemeManager$ThemeSetter;
    :cond_1
    return-void
.end method

.method public static restart(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 789
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->restart(Lorg/holoeverywhere/app/Activity;Z)V

    .line 790
    return-void
.end method

.method public static restart(Lorg/holoeverywhere/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "force"    # Z

    .prologue
    .line 793
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lorg/holoeverywhere/ThemeManager;->restartWithTheme(Lorg/holoeverywhere/app/Activity;IZ)V

    .line 794
    return-void
.end method

.method public static restartWithDarkTheme(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 802
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->restartWithTheme(Lorg/holoeverywhere/app/Activity;I)V

    .line 803
    return-void
.end method

.method public static restartWithLightTheme(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 811
    sget v0, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->restartWithTheme(Lorg/holoeverywhere/app/Activity;I)V

    .line 812
    return-void
.end method

.method public static restartWithMixedTheme(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 821
    sget v0, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    invoke-static {p0, v0}, Lorg/holoeverywhere/ThemeManager;->restartWithTheme(Lorg/holoeverywhere/app/Activity;I)V

    .line 822
    return-void
.end method

.method public static restartWithTheme(Lorg/holoeverywhere/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "theme"    # I

    .prologue
    .line 831
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/ThemeManager;->restartWithTheme(Lorg/holoeverywhere/app/Activity;IZ)V

    .line 832
    return-void
.end method

.method public static restartWithTheme(Lorg/holoeverywhere/app/Activity;IZ)V
    .locals 7
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "theme"    # I
    .param p2, "force"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 844
    const/high16 v2, 0x1000000

    if-ge p1, v2, :cond_1

    if-lez p1, :cond_1

    .line 845
    sget v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    if-lez v2, :cond_0

    .line 846
    sget v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    or-int/2addr p1, v2

    .line 848
    :cond_0
    sget v2, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr p1, v2

    .line 850
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getTheme(Lorg/holoeverywhere/app/Activity;)I

    move-result v2

    if-eq v2, p1, :cond_4

    .line 851
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 852
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 853
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 854
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    if-lez p1, :cond_3

    .line 856
    const-string v2, ":holoeverywhere:theme"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    :cond_3
    const-string v2, ":holoeverywhere:instancestate"

    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 859
    const-string v2, ":holoeverywhere:createbythememanager"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 861
    invoke-static {}, Lorg/holoeverywhere/app/Application;->getLastInstance()Lorg/holoeverywhere/app/Application;

    move-result-object v0

    .line 862
    .local v0, "app":Lorg/holoeverywhere/app/Application;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Application;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 863
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 864
    invoke-virtual {v0, v1, v4, v6}, Lorg/holoeverywhere/app/Application;->superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 879
    .end local v0    # "app":Lorg/holoeverywhere/app/Application;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 867
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 868
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->finish()V

    .line 869
    invoke-virtual {p0, v5, v5}, Lorg/holoeverywhere/app/Activity;->overridePendingTransition(II)V

    .line 871
    :cond_6
    instance-of v2, p0, Lorg/holoeverywhere/ThemeManager$SuperStartActivity;

    if-eqz v2, :cond_7

    .line 872
    invoke-interface {p0, v1, v4, v6}, Lorg/holoeverywhere/ThemeManager$SuperStartActivity;->superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 875
    :cond_7
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setDefaultTheme(I)V
    .locals 2
    .param p0, "theme"    # I

    .prologue
    .line 891
    sput p0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 892
    const/high16 v0, 0x1000000

    if-ge p0, v0, :cond_0

    .line 893
    sget v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v0, v1

    sput v0, Lorg/holoeverywhere/ThemeManager;->_DEFAULT_THEME:I

    .line 895
    :cond_0
    return-void
.end method

.method public static setModifier(I)V
    .locals 1
    .param p0, "mod"    # I

    .prologue
    .line 904
    sget v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MASK:I

    and-int/2addr v0, p0

    sput v0, Lorg/holoeverywhere/ThemeManager;->_THEME_MODIFIER:I

    .line 905
    return-void
.end method

.method public static setThemeGetter(Lorg/holoeverywhere/ThemeManager$ThemeGetter;)V
    .locals 0
    .param p0, "themeGetter"    # Lorg/holoeverywhere/ThemeManager$ThemeGetter;

    .prologue
    .line 913
    sput-object p0, Lorg/holoeverywhere/ThemeManager;->_THEME_GETTER:Lorg/holoeverywhere/ThemeManager$ThemeGetter;

    .line 914
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 920
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/ThemeManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 921
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/holoeverywhere/ThemeManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 937
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 945
    instance-of v1, p0, Lorg/holoeverywhere/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/holoeverywhere/app/Activity;

    move-object v0, v1

    .line 947
    .local v0, "activity":Lorg/holoeverywhere/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lorg/holoeverywhere/ThemeManager;->cloneTheme(Landroid/content/Intent;Landroid/content/Intent;Z)V

    .line 950
    :cond_0
    instance-of v1, p0, Lorg/holoeverywhere/ThemeManager$SuperStartActivity;

    if-eqz v1, :cond_2

    .line 951
    check-cast p0, Lorg/holoeverywhere/ThemeManager$SuperStartActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {p0, p1, p2, p3}, Lorg/holoeverywhere/ThemeManager$SuperStartActivity;->superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 969
    :goto_1
    return-void

    .line 945
    .end local v0    # "activity":Lorg/holoeverywhere/app/Activity;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 954
    .restart local v0    # "activity":Lorg/holoeverywhere/app/Activity;
    :cond_2
    if-eqz v0, :cond_4

    .line 955
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 956
    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 959
    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 962
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 963
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 965
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 928
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lorg/holoeverywhere/ThemeManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 929
    return-void
.end method

.method public static unregisterThemeSetter(Lorg/holoeverywhere/ThemeManager$ThemeSetter;)V
    .locals 1
    .param p0, "themeSetter"    # Lorg/holoeverywhere/ThemeManager$ThemeSetter;

    .prologue
    .line 972
    sget-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    sget-object v0, Lorg/holoeverywhere/ThemeManager;->sThemeSetters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
