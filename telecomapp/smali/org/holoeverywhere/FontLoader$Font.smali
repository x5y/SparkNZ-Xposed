.class public Lorg/holoeverywhere/FontLoader$Font;
.super Ljava/lang/Object;
.source "FontLoader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontFamily:Ljava/lang/String;

.field private mFontStyle:I

.field private mLockModifing:Z

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mLockModifing:Z

    .line 26
    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mLockModifing:Z

    .line 26
    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    .line 32
    iget-object v0, p1, Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;

    .line 33
    iget v0, p1, Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I

    iput v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I

    .line 34
    iget-object v0, p1, Lorg/holoeverywhere/FontLoader$Font;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypeface:Landroid/graphics/Typeface;

    .line 35
    iget-boolean v0, p1, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    .line 36
    iget-object v0, p1, Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lorg/holoeverywhere/FontLoader$Font;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/FontLoader$Font;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lorg/holoeverywhere/FontLoader$Font;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/FontLoader$Font;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 20
    iget v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I

    return v0
.end method


# virtual methods
.method protected final assertContext()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load typeface without attaching font instance to FontLoader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method protected final assertModifing()V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mLockModifing:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify typeface after attaching to FontCollector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$Font;->clone()Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/holoeverywhere/FontLoader$Font;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/FontLoader$Font;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I

    return v0
.end method

.method public getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$Font;->loadTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypeface:Landroid/graphics/Typeface;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public loadTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mLockModifing:Z

    .line 84
    return-void
.end method

.method protected final resetTypeface()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypeface:Landroid/graphics/Typeface;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$Font;->mTypefaceLoaded:Z

    .line 89
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)Lorg/holoeverywhere/FontLoader$Font;
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$Font;->assertModifing()V

    .line 93
    iput-object p1, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;
    .locals 0
    .param p1, "fontStyle"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I

    .line 99
    return-object p0
.end method
