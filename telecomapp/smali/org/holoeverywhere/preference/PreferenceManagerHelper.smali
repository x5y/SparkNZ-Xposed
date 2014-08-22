.class public Lorg/holoeverywhere/preference/PreferenceManagerHelper;
.super Ljava/lang/Object;
.source "PreferenceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;
    }
.end annotation


# static fields
.field private static IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/holoeverywhere/HoloEverywhere;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".preference._PreferenceManagerImpl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    sput-object v2, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    .line 27
    sget-boolean v2, Lorg/holoeverywhere/HoloEverywhere;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 28
    const-string v2, "HoloEverywhere"

    const-string v3, "Cannot find PreferenceManager class. Preference framework are disabled."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static checkImpl()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "HoloEverywhere: PreferenceFramework not found"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lorg/holoeverywhere/HoloEverywhere;->PREFERENCE_IMPL:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    invoke-static {p0, v0}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .prologue
    .line 47
    invoke-static {}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->checkImpl()V

    .line 48
    sget-object v0, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    invoke-interface {v0, p0, p1}, Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;->getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static obtainThemeTag()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->checkImpl()V

    .line 53
    sget-object v0, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    invoke-interface {v0}, Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;->obtainThemeTag()I

    move-result v0

    return v0
.end method

.method public static wrap(Landroid/content/Context;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 64
    sget-object v0, Lorg/holoeverywhere/HoloEverywhere;->PREFERENCE_IMPL:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    invoke-static {p0, v0, p1, p2}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 58
    invoke-static {}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->checkImpl()V

    .line 59
    sget-object v0, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->IMPL:Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;->wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
