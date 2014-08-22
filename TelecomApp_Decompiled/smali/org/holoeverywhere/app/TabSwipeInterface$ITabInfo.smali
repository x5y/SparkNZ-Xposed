.class public interface abstract Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
.super Ljava/lang/Object;
.source "TabSwipeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/TabSwipeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITabInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getFragmentArguments()Landroid/os/Bundle;
.end method

.method public abstract getFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract setFragmentArguments(Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract setFragmentClass(Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation
.end method
