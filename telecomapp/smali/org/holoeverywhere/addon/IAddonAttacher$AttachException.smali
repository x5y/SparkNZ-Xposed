.class public Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;
.super Ljava/lang/RuntimeException;
.source "IAddonAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddonAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x379c943943513305L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static afterInit(Ljava/lang/Object;Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    new-instance v0, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t attach addon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after init of object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static conflict(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t attach some addons because conflicts is found: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
