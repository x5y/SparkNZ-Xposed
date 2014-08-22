.class public interface abstract Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/SystemServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemServiceCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method
