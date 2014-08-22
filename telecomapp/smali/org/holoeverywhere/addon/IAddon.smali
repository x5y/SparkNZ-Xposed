.class public abstract Lorg/holoeverywhere/addon/IAddon;
.super Ljava/lang/Object;
.source "IAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/IAddon$Addon;
    }
.end annotation


# static fields
.field private static final sAddonsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddonBase",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/addon/IAddon;->sAddonsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v0}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddon;->mStatesMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddon;->mTypesMap:Ljava/util/Map;

    return-void
.end method

.method public static addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v2, Lorg/holoeverywhere/addon/IAddon;->sAddonsMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/addon/IAddon;

    .line 36
    .local v1, "t":Lorg/holoeverywhere/addon/IAddon;, "TT;"
    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "t":Lorg/holoeverywhere/addon/IAddon;, "TT;"
    check-cast v1, Lorg/holoeverywhere/addon/IAddon;

    .line 38
    .restart local v1    # "t":Lorg/holoeverywhere/addon/IAddon;, "TT;"
    sget-object v2, Lorg/holoeverywhere/addon/IAddon;->sAddonsMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    return-object v1

    .line 41
    .end local v1    # "t":Lorg/holoeverywhere/addon/IAddon;, "TT;"
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddon;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lorg/holoeverywhere/addon/IAddon;->makeAddonClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lorg/holoeverywhere/addon/IAddon;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddon;

    move-result-object v1

    return-object v1
.end method

.method public static makeAddonClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/holoeverywhere/HoloEverywhere;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".addon.Addon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/holoeverywhere/addon/IAddon;->makeAddonClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/Class;Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddon;",
            "Z:",
            "Lorg/holoeverywhere/addon/IAddonBase",
            "<TV;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TV;)TZ;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lorg/holoeverywhere/addon/IAddon;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddon;->obtain(Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddon;",
            "Z:",
            "Lorg/holoeverywhere/addon/IAddonBase",
            "<TV;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TZ;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "object":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lorg/holoeverywhere/addon/IAddon;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddon;->obtain(Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public obtain(Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lorg/holoeverywhere/addon/IAddonBase",
            "<TT;>;>(TT;)TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lorg/holoeverywhere/addon/IAddon;->mStatesMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonBase;

    .line 79
    .local v0, "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 93
    :goto_0
    return-object v3

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v3, p0, Lorg/holoeverywhere/addon/IAddon;->mTypesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    .line 86
    const/4 v3, 0x0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lorg/holoeverywhere/addon/IAddon;->mTypesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    check-cast v0, Lorg/holoeverywhere/addon/IAddonBase;

    .line 91
    .restart local v0    # "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    invoke-virtual {v0, p1, p0}, Lorg/holoeverywhere/addon/IAddonBase;->attach(Ljava/lang/Object;Lorg/holoeverywhere/addon/IAddon;)V

    .line 92
    iget-object v3, p0, Lorg/holoeverywhere/addon/IAddon;->mStatesMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddonBase",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "addonClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddonBase<TT;>;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddon;->mTypesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public registerActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddonActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "addonClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddonActivity;>;"
    const-class v0, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {p0, v0, p1}, Lorg/holoeverywhere/addon/IAddon;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public registerApplication(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddonApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "addonClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddonApplication;>;"
    const-class v0, Lorg/holoeverywhere/app/Application;

    invoke-virtual {p0, v0, p1}, Lorg/holoeverywhere/addon/IAddon;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method public registerFragment(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddonFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "addonClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddonFragment;>;"
    const-class v0, Lorg/holoeverywhere/app/Fragment;

    invoke-virtual {p0, v0, p1}, Lorg/holoeverywhere/addon/IAddon;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 113
    return-void
.end method

.method public unregister(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddon;->mTypesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
