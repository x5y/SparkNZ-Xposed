.class public Lorg/holoeverywhere/addon/IAddonThemes;
.super Ljava/lang/Object;
.source "IAddonThemes.java"

# interfaces
.implements Lorg/holoeverywhere/ThemeManager$ThemeSetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;,
        Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    }
.end annotation


# instance fields
.field private mContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkTheme:I

.field private final mDefaultThemeResolver:Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;

.field private mLightTheme:I

.field private mMixedTheme:I

.field private final mThemeFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDarkTheme:I

    .line 26
    new-instance v0, Lorg/holoeverywhere/addon/IAddonThemes$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/addon/IAddonThemes$1;-><init>(Lorg/holoeverywhere/addon/IAddonThemes;)V

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDefaultThemeResolver:Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;

    .line 41
    iput v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mLightTheme:I

    .line 43
    iput v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mMixedTheme:I

    .line 48
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->makeNewFlag()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    .line 49
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->registerThemeSetter(Lorg/holoeverywhere/ThemeManager$ThemeSetter;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/addon/IAddonThemes;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/addon/IAddonThemes;

    .prologue
    .line 13
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    return v0
.end method


# virtual methods
.method public context(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/addon/IAddonThemes;->context(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public context(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invalidTheme"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDefaultThemeResolver:Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;

    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/addon/IAddonThemes;->context(Landroid/content/Context;ILorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public context(Landroid/content/Context;ILorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;)Landroid/content/Context;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invalidTheme"    # I
    .param p3, "themeResolver"    # Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;

    .prologue
    .line 61
    instance-of v2, p1, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;

    if-eqz v2, :cond_0

    .line 79
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-object p1

    .line 64
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "wrapper":Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mContexts:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mContexts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrapper":Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    check-cast v1, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;

    .line 68
    .restart local v1    # "wrapper":Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    :cond_1
    if-nez v1, :cond_4

    .line 69
    invoke-interface {p3, p1, p2}, Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;->resolveThemeForContext(Landroid/content/Context;I)I

    move-result v0

    .line 70
    .local v0, "theme":I
    if-gtz v0, :cond_2

    .line 71
    const/4 p1, 0x0

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;

    .end local v1    # "wrapper":Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    invoke-direct {v1, p1, v0}, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    .restart local v1    # "wrapper":Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mContexts:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 75
    new-instance v2, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v2}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    iput-object v2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mContexts:Ljava/util/Map;

    .line 77
    :cond_3
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mContexts:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "theme":I
    :cond_4
    move-object p1, v1

    .line 79
    goto :goto_0
.end method

.method public getDarkTheme()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDarkTheme:I

    return v0
.end method

.method public getLightTheme()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mLightTheme:I

    return v0
.end method

.method public getMixedTheme()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mMixedTheme:I

    return v0
.end method

.method public getThemeFlag()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    return v0
.end method

.method public map(III)V
    .locals 0
    .param p1, "darkTheme"    # I
    .param p2, "lightTheme"    # I
    .param p3, "mixedTheme"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDarkTheme:I

    .line 100
    iput p2, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mLightTheme:I

    .line 101
    iput p3, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mMixedTheme:I

    .line 102
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonThemes;->setupThemes()V

    .line 103
    return-void
.end method

.method public setDarkTheme(I)V
    .locals 0
    .param p1, "darkTheme"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDarkTheme:I

    .line 107
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonThemes;->setupThemes()V

    .line 108
    return-void
.end method

.method public setLightTheme(I)V
    .locals 0
    .param p1, "lightTheme"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mLightTheme:I

    .line 112
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonThemes;->setupThemes()V

    .line 113
    return-void
.end method

.method public setMixedTheme(I)V
    .locals 0
    .param p1, "mixedTheme"    # I

    .prologue
    .line 116
    iput p1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mMixedTheme:I

    .line 117
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonThemes;->setupThemes()V

    .line 118
    return-void
.end method

.method public setupThemes()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->DARK:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mDarkTheme:I

    invoke-static {v0, v1}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 123
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mLightTheme:I

    invoke-static {v0, v1}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 124
    iget v0, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I

    sget v1, Lorg/holoeverywhere/ThemeManager;->MIXED:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/addon/IAddonThemes;->mMixedTheme:I

    invoke-static {v0, v1}, Lorg/holoeverywhere/ThemeManager;->map(II)V

    .line 125
    return-void
.end method

.method public unwrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_0
    :goto_1
    instance-of v0, p1, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 134
    goto :goto_0
.end method
