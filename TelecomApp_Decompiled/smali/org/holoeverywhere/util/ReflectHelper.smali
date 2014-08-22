.class public final Lorg/holoeverywhere/util/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classess([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 9
    array-length v3, p0

    new-array v1, v3, [Ljava/lang/Class;

    .line 10
    .local v1, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 11
    aget-object v2, p0, v0

    .line 12
    .local v2, "z":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v0

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    .end local v2    # "z":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "superClass"    # Z
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TResult;>;Z[",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/lang/Class;, "Ljava/lang/Class<TResult;>;"
    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-static {p4}, Lorg/holoeverywhere/util/ReflectHelper;->classess([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    :goto_0
    invoke-virtual {v5, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 25
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    invoke-virtual {v2, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    .local v3, "r":Ljava/lang/Object;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    .end local v0    # "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "r":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v4

    .line 23
    .restart local v0    # "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 28
    .end local v0    # "argsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TResult;>;[",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "result":Ljava/lang/Class;, "Ljava/lang/Class<TResult;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/holoeverywhere/util/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
