.class public Lorg/holoeverywhere/FontLoader$RawLazyFont;
.super Lorg/holoeverywhere/FontLoader$RawFont;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawLazyFont"
.end annotation


# instance fields
.field private mRawResourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawResourceName"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/FontLoader$RawFont;-><init>(I)V

    .line 295
    iput-object p1, p0, Lorg/holoeverywhere/FontLoader$RawLazyFont;->mRawResourceName:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lorg/holoeverywhere/FontLoader$RawFont;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    .line 288
    instance-of v0, p1, Lorg/holoeverywhere/FontLoader$RawLazyFont;

    if-eqz v0, :cond_0

    .line 289
    check-cast p1, Lorg/holoeverywhere/FontLoader$RawLazyFont;

    .end local p1    # "font":Lorg/holoeverywhere/FontLoader$Font;
    iget-object v0, p1, Lorg/holoeverywhere/FontLoader$RawLazyFont;->mRawResourceName:Ljava/lang/String;

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$RawLazyFont;->mRawResourceName:Ljava/lang/String;

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->clone()Lorg/holoeverywhere/FontLoader$RawLazyFont;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->clone()Lorg/holoeverywhere/FontLoader$RawLazyFont;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/holoeverywhere/FontLoader$RawFont;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->clone()Lorg/holoeverywhere/FontLoader$RawLazyFont;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/holoeverywhere/FontLoader$RawLazyFont;
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lorg/holoeverywhere/FontLoader$RawLazyFont;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    return-object v0
.end method

.method public loadTypeface()Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->assertContext()V

    .line 306
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$RawLazyFont;->mRawResourceName:Ljava/lang/String;

    const-string v3, "raw"

    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find font in raw resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/holoeverywhere/FontLoader$RawLazyFont;->mRawResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->setRawResourceId(I)V

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/FontLoader$RawLazyFont;->loadTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method
