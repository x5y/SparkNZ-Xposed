.class public final Lorg/holoeverywhere/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;,
        Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;
    }
.end annotation


# static fields
.field private static final CREATORS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
            "<*>;>;",
            "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/SystemServiceManager;->CREATORS_MAP:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static getSuperSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    instance-of v0, p0, Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {p0, p1}, Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;->superGetSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid context"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 51
    :cond_2
    const/4 v4, 0x0

    .line 72
    :cond_3
    :goto_0
    return-object v4

    .line 53
    :cond_4
    sget-object v5, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 54
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;>;"
    if-nez v1, :cond_5

    .line 55
    invoke-static {p0, p1}, Lorg/holoeverywhere/SystemServiceManager;->getSuperSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 57
    :cond_5
    sget-object v5, Lorg/holoeverywhere/SystemServiceManager;->CREATORS_MAP:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;

    .line 58
    .local v2, "creator":Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;, "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;"
    if-nez v2, :cond_6

    .line 60
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    sget-object v5, Lorg/holoeverywhere/SystemServiceManager;->CREATORS_MAP:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_6
    if-eqz v2, :cond_7

    .line 67
    invoke-interface {v2, p0}, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 72
    .end local v4    # "o":Ljava/lang/Object;
    :cond_7
    invoke-static {p0, p1}, Lorg/holoeverywhere/SystemServiceManager;->getSuperSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;>;"
    const-class v2, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SystemServiceCreator must be implement SystemService"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_0
    const-class v2, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;

    .line 81
    .local v1, "systemService":Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;
    invoke-interface {v1}, Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;->value()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SystemService has incorrect name"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2
    sget-object v2, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static declared-synchronized unregister(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;>;"
    const-class v3, Lorg/holoeverywhere/SystemServiceManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    sget-object v2, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<+Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 94
    sget-object v2, Lorg/holoeverywhere/SystemServiceManager;->MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<+Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator<*>;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lorg/holoeverywhere/SystemServiceManager;->CREATORS_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v3

    return-void

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
