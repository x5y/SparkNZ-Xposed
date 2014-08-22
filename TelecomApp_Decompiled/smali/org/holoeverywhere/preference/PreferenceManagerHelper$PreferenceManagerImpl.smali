.class interface abstract Lorg/holoeverywhere/preference/PreferenceManagerHelper$PreferenceManagerImpl;
.super Ljava/lang/Object;
.source "PreferenceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/preference/PreferenceManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PreferenceManagerImpl"
.end annotation


# virtual methods
.method public abstract getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;
.end method

.method public abstract obtainThemeTag()I
.end method

.method public abstract wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
.end method
