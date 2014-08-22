.class final Lorg/holoeverywhere/FontLoader$RobotoRawFont;
.super Lorg/holoeverywhere/FontLoader$RawFont;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RobotoRawFont"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "rawResourceId"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lorg/holoeverywhere/FontLoader$RawFont;-><init>(I)V

    .line 320
    const-string v0, "roboto"

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$RobotoRawFont;->setFontFamily(Ljava/lang/String;)Lorg/holoeverywhere/FontLoader$Font;

    .line 321
    return-void
.end method
