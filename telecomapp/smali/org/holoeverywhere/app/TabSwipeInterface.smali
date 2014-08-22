.class public interface abstract Lorg/holoeverywhere/app/TabSwipeInterface;
.super Ljava/lang/Object;
.source "TabSwipeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;,
        Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    }
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
.method public abstract addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation
.end method

.method public abstract getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
.end method

.method public abstract isSmoothScroll()Z
.end method

.method public abstract isSwipeEnabled()Z
.end method

.method public abstract reloadTabs()V
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract removeTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract setCurrentTab(I)V
.end method

.method public abstract setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
.end method

.method public abstract setSmoothScroll(Z)V
.end method

.method public abstract setSwipeEnabled(Z)V
.end method
