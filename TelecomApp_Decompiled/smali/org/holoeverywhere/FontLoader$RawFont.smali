.class public Lorg/holoeverywhere/FontLoader$RawFont;
.super Lorg/holoeverywhere/FontLoader$Font;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawFont"
.end annotation


# instance fields
.field private mRawResourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "rawResourceId"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/holoeverywhere/FontLoader$Font;-><init>()V

    .line 228
    iput p1, p0, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lorg/holoeverywhere/FontLoader$Font;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    .line 222
    instance-of v0, p1, Lorg/holoeverywhere/FontLoader$RawFont;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Lorg/holoeverywhere/FontLoader$RawFont;

    .end local p1    # "font":Lorg/holoeverywhere/FontLoader$Font;
    iget v0, p1, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    iput v0, p0, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    .line 225
    :cond_0
    return-void
.end method

.method private loadTypeface(Ljava/io/File;Z)Landroid/graphics/Typeface;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "allowFileReusage"    # Z

    .prologue
    const/4 v7, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 250
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 251
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_0

    .line 252
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/FontLoader$RawFont;->loadTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v5

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v5

    .line 260
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 261
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 264
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_2

    .line 265
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 271
    .end local v0    # "buffer":[B
    .end local v1    # "c":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 272
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "c":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 268
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 269
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 270
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/FontLoader$RawFont;->loadTypeface(Ljava/io/File;Z)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0
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
    .line 217
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->clone()Lorg/holoeverywhere/FontLoader$RawFont;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->clone()Lorg/holoeverywhere/FontLoader$RawFont;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/holoeverywhere/FontLoader$RawFont;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lorg/holoeverywhere/FontLoader$RawFont;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/FontLoader$RawFont;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    return-object v0
.end method

.method public loadTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->assertContext()V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$RawFont;->loadTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected loadTypeface(Z)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "allowFileReusage"    # Z

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font_0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/FontLoader$RawFont;->loadTypeface(Ljava/io/File;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setRawResourceId(I)V
    .locals 0
    .param p1, "rawResourceId"    # I

    .prologue
    .line 278
    iput p1, p0, Lorg/holoeverywhere/FontLoader$RawFont;->mRawResourceId:I

    .line 279
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$RawFont;->resetTypeface()V

    .line 280
    return-void
.end method
