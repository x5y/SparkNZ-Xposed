.class public final Lorg/holoeverywhere/addon/IAddonBasicAttacher;
.super Ljava/lang/Object;
.source "IAddonBasicAttacher.java"

# interfaces
.implements Lorg/holoeverywhere/addon/IAddonAttacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/IAddonBasicAttacher$1;,
        Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/holoeverywhere/addon/IAddonBase",
        "<TZ;>;Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/addon/IAddonAttacher",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mAddons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;TV;>;"
        }
    .end annotation
.end field

.field private mAddonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mAddonsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mLockAttaching:Z

.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TZ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "object":Ljava/lang/Object;, "TZ;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;-><init>(Lorg/holoeverywhere/addon/IAddonBasicAttacher;Lorg/holoeverywhere/addon/IAddonBasicAttacher$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mLockAttaching:Z

    .line 40
    iput-object p1, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mObject:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private addon(Ljava/lang/Class;Z)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 3
    .param p2, "checkConflicts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TV;>(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    const/4 v1, 0x0

    .line 50
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonBase;

    .line 51
    .local v0, "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TT;"
    if-nez v0, :cond_2

    .line 52
    iget-boolean v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mLockAttaching:Z

    if-eqz v2, :cond_0

    .line 53
    iget-object v1, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mObject:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;->afterInit(Ljava/lang/Object;Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;

    move-result-object v1

    throw v1

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mObject:Ljava/lang/Object;

    invoke-static {p1, v2}, Lorg/holoeverywhere/addon/IAddon;->obtain(Ljava/lang/Class;Ljava/lang/Object;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 66
    :goto_0
    return-object v1

    .line 59
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iput-object v1, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    .line 62
    if-eqz p2, :cond_2

    .line 63
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->checkConflicts()V

    :cond_2
    move-object v1, v0

    .line 66
    goto :goto_0
.end method

.method private checkConflicts()V
    .locals 19

    .prologue
    .line 86
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v7, "attachedAddons":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v11, "conflictAddons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/addon/IAddonBase;

    .line 89
    .local v4, "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    invoke-virtual {v4}, Lorg/holoeverywhere/addon/IAddonBase;->getParent()Lorg/holoeverywhere/addon/IAddon;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 90
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "clazzName":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    const-class v15, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v9, v15}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 95
    const-class v15, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v9, v15}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/holoeverywhere/addon/IAddon$Addon;

    .line 96
    .local v5, "addonMeta":Lorg/holoeverywhere/addon/IAddon$Addon;
    invoke-interface {v5}, Lorg/holoeverywhere/addon/IAddon$Addon;->conflictStrings()[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v1, v6, v13

    .line 97
    .local v1, "a":Ljava/lang/String;
    invoke-interface {v11, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "a":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Lorg/holoeverywhere/addon/IAddon$Addon;->conflict()[Ljava/lang/Class;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/Class;
    array-length v14, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_0

    aget-object v2, v6, v13

    .line 100
    .local v2, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "a":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    .end local v4    # "addon":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    .end local v5    # "addonMeta":Lorg/holoeverywhere/addon/IAddon$Addon;
    .end local v6    # "arr$":[Ljava/lang/Class;
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    .end local v10    # "clazzName":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_2
    const/4 v8, 0x0

    .line 104
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, "addon":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 106
    if-nez v8, :cond_4

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .restart local v8    # "builder":Ljava/lang/StringBuilder;
    :goto_3
    const-string v15, "Found addon conflict: %s is cannot be attached together with %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 109
    :cond_4
    const/16 v15, 0xa

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 116
    .end local v3    # "addon":Ljava/lang/String;
    :cond_5
    if-eqz v8, :cond_6

    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;->conflict(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;

    move-result-object v15

    throw v15

    .line 119
    :cond_6
    return-void
.end method


# virtual methods
.method public addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TV;>(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;Z)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    return-object v0
.end method

.method public addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TV;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    invoke-static {p1}, Lorg/holoeverywhere/addon/IAddon;->makeAddonClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    return-object v0
.end method

.method public addon(Ljava/util/Collection;)V
    .locals 3
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
    .line 71
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 75
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;Z)Lorg/holoeverywhere/addon/IAddonBase;

    goto :goto_1

    .line 77
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    :cond_2
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->checkConflicts()V

    goto :goto_0
.end method

.method public inhert(Ljava/util/Collection;)V
    .locals 5
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
    .line 122
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "sourceClasses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 127
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    const-class v4, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    const-class v4, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddon$Addon;

    .line 131
    .local v0, "addon":Lorg/holoeverywhere/addon/IAddon$Addon;
    invoke-interface {v0}, Lorg/holoeverywhere/addon/IAddon$Addon;->inhert()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v0    # "addon":Lorg/holoeverywhere/addon/IAddon$Addon;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    :cond_3
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public inhert(Lorg/holoeverywhere/addon/IAddonAttacher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "attacher":Lorg/holoeverywhere/addon/IAddonAttacher;, "Lorg/holoeverywhere/addon/IAddonAttacher<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->inhert(Ljava/util/Collection;)V

    .line 140
    return-void

    .line 139
    :cond_0
    invoke-interface {p1}, Lorg/holoeverywhere/addon/IAddonAttacher;->obtainAddonsList()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 144
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lockAttaching()V
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mLockAttaching:Z

    .line 150
    return-void
.end method

.method public obtainAddonsList()Ljava/util/Collection;
    .locals 2
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
    .line 154
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    .local p1, "callback":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;->post()Z

    move-result v2

    .line 171
    :goto_0
    return v2

    .line 162
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    .line 165
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    .local v0, "addonCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 167
    iget-object v2, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;->action(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const/4 v2, 0x1

    goto :goto_0

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;->post()Z

    move-result v2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mAddonsList:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->mLockAttaching:Z

    .line 179
    return-void
.end method
