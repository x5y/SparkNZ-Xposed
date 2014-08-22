.class public interface abstract Lorg/holoeverywhere/FontLoader$FontStyleProvider;
.super Ljava/lang/Object;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FontStyleProvider"
.end annotation


# virtual methods
.method public abstract getFontFamily()Ljava/lang/String;
.end method

.method public abstract getFontStyle()I
.end method

.method public abstract setFontStyle(Ljava/lang/String;I)V
.end method

.method public abstract setTypeface(Landroid/graphics/Typeface;)V
.end method
