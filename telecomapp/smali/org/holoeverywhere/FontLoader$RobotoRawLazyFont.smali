.class final Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;
.super Lorg/holoeverywhere/FontLoader$RawLazyFont;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RobotoRawLazyFont"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawResourceName"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lorg/holoeverywhere/FontLoader$RawLazyFont;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v0, "roboto"

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$RobotoRawLazyFont;->setFontFamily(Ljava/lang/String;)Lorg/holoeverywhere/FontLoader$Font;

    .line 328
    return-void
.end method
