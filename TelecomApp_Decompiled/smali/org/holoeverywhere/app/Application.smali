.class public Lorg/holoeverywhere/app/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;
.implements Lorg/holoeverywhere/ThemeManager$SuperStartActivity;
.implements Lorg/holoeverywhere/addon/IAddonAttacher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Application;",
        "Lorg/holoeverywhere/ThemeManager$SuperStartActivity;",
        "Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;",
        "Lorg/holoeverywhere/addon/IAddonAttacher",
        "<",
        "Lorg/holoeverywhere/addon/IAddonApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static sInitialAddons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLastInstance:Lorg/holoeverywhere/app/Application;


# instance fields
.field private final mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/addon/IAddonBasicAttacher",
            "<",
            "Lorg/holoeverywhere/addon/IAddonApplication;",
            "Lorg/holoeverywhere/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/holoeverywhere/LayoutInflater$LayoutInflaterCreator;

    invoke-static {v0}, Lorg/holoeverywhere/SystemServiceManager;->register(Ljava/lang/Class;)V

    .line 35
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock;

    invoke-static {v0}, Lorg/holoeverywhere/app/Application;->addInitialAddon(Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    new-instance v0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    .line 56
    sput-object p0, Lorg/holoeverywhere/app/Application;->sLastInstance:Lorg/holoeverywhere/app/Application;

    .line 57
    return-void
.end method

.method public static addInitialAddon(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    sget-object v0, Lorg/holoeverywhere/app/Application;->sInitialAddons:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/holoeverywhere/app/Application;->sInitialAddons:Ljava/util/List;

    .line 42
    :cond_0
    sget-object v0, Lorg/holoeverywhere/app/Application;->sInitialAddons:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public static getLastInstance()Lorg/holoeverywhere/app/Application;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/holoeverywhere/app/Application;->sLastInstance:Lorg/holoeverywhere/app/Application;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method


# virtual methods
.method public addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonApplication;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonApplication;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonApplication;

    return-object v0
.end method

.method public addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonApplication;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonApplication;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonApplication;

    return-object v0
.end method

.method public bridge synthetic addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Application;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Application;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonApplication;

    move-result-object v0

    return-object v0
.end method

.method public addon(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/util/Collection;)V

    .line 67
    return-void
.end method

.method public getDefaultSharedPreferences()Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/Application;->getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 92
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->wrap(Landroid/content/Context;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 87
    invoke-static {p0, p1, p2, p3}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSupportApplication()Lorg/holoeverywhere/app/Application;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lorg/holoeverywhere/SystemServiceManager;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAddonAttached(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->isAddonAttached(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public lockAttaching()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->lockAttaching()V

    .line 112
    return-void
.end method

.method public obtainAddonsList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->obtainAddonsList()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/holoeverywhere/app/Application;->sInitialAddons:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Application;->addon(Ljava/util/Collection;)V

    .line 122
    new-instance v0, Lorg/holoeverywhere/app/Application$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Application$1;-><init>(Lorg/holoeverywhere/app/Application;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Application;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 128
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Application;->lockAttaching()V

    .line 129
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 130
    new-instance v0, Lorg/holoeverywhere/app/Application$2;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Application$2;-><init>(Lorg/holoeverywhere/app/Application;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Application;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 136
    return-void
.end method

.method public performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
            "<",
            "Lorg/holoeverywhere/addon/IAddonApplication;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "callback":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<Lorg/holoeverywhere/addon/IAddonApplication;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Application;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/app/Application;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, p2}, Lorg/holoeverywhere/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 165
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->ALWAYS_USE_PARENT_THEME:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/ThemeManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/holoeverywhere/app/Application;->superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public superGetSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public superGetSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 187
    invoke-super {p0, p1, p3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
