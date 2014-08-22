.class public Lorg/holoeverywhere/FontLoader$FontCollector;
.super Lorg/holoeverywhere/FontLoader$Font;
.source "FontLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/FontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontCollector"
.end annotation


# static fields
.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "FONT-FAMILY-DEFAULT"


# instance fields
.field private mAllowAnyFontFamily:Z

.field private mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

.field private final mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/FontLoader$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUsedFont:Lorg/holoeverywhere/FontLoader$Font;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/holoeverywhere/FontLoader$Font;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/FontLoader$Font;)V
    .locals 3
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/holoeverywhere/FontLoader$Font;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    .line 116
    instance-of v1, p1, Lorg/holoeverywhere/FontLoader$FontCollector;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/holoeverywhere/FontLoader$FontCollector;

    .line 118
    .local v0, "fontCollector":Lorg/holoeverywhere/FontLoader$FontCollector;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    .line 119
    iget-boolean v1, v0, Lorg/holoeverywhere/FontLoader$FontCollector;->mAllowAnyFontFamily:Z

    iput-boolean v1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mAllowAnyFontFamily:Z

    .line 120
    iget-object v1, v0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, v0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {v1}, Lorg/holoeverywhere/FontLoader$Font;->clone()Lorg/holoeverywhere/FontLoader$Font;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    .line 126
    .end local v0    # "fontCollector":Lorg/holoeverywhere/FontLoader$FontCollector;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    goto :goto_0
.end method

.method private getTypeface(Lorg/holoeverywhere/FontLoader$Font;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .param p3, "fontStyle"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$FontCollector;->getContext()Landroid/content/Context;

    move-result-object v0

    # setter for: Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;
    invoke-static {p1, v0}, Lorg/holoeverywhere/FontLoader$Font;->access$002(Lorg/holoeverywhere/FontLoader$Font;Landroid/content/Context;)Landroid/content/Context;

    .line 149
    invoke-virtual {p1, p2, p3}, Lorg/holoeverywhere/FontLoader$Font;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowAnyFontFamily()Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mAllowAnyFontFamily:Z

    .line 130
    return-object p0
.end method

.method public asDefaultFont()Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mLastUsedFont:Lorg/holoeverywhere/FontLoader$Font;

    iput-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    .line 135
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$FontCollector;->clone()Lorg/holoeverywhere/FontLoader$FontCollector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$FontCollector;->clone()Lorg/holoeverywhere/FontLoader$FontCollector;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lorg/holoeverywhere/FontLoader$FontCollector;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/FontLoader$FontCollector;-><init>(Lorg/holoeverywhere/FontLoader$Font;)V

    return-object v0
.end method

.method public getDefaultFont()Lorg/holoeverywhere/FontLoader$Font;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const-string p1, "FONT-FAMILY-DEFAULT"

    .line 157
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 158
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/FontLoader$Font;

    .line 159
    .local v0, "font":Lorg/holoeverywhere/FontLoader$Font;
    iget-boolean v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mAllowAnyFontFamily:Z

    if-nez v2, :cond_1

    # getter for: Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;
    invoke-static {v0}, Lorg/holoeverywhere/FontLoader$Font;->access$100(Lorg/holoeverywhere/FontLoader$Font;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    # getter for: Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I
    invoke-static {v0}, Lorg/holoeverywhere/FontLoader$Font;->access$200(Lorg/holoeverywhere/FontLoader$Font;)I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 161
    invoke-direct {p0, v0, p1, p2}, Lorg/holoeverywhere/FontLoader$FontCollector;->getTypeface(Lorg/holoeverywhere/FontLoader$Font;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 168
    .end local v0    # "font":Lorg/holoeverywhere/FontLoader$Font;
    :goto_1
    return-object v2

    .line 157
    .restart local v0    # "font":Lorg/holoeverywhere/FontLoader$Font;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "font":Lorg/holoeverywhere/FontLoader$Font;
    :cond_3
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    if-eqz v2, :cond_4

    .line 165
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    invoke-virtual {p0}, Lorg/holoeverywhere/FontLoader$FontCollector;->getContext()Landroid/content/Context;

    move-result-object v3

    # setter for: Lorg/holoeverywhere/FontLoader$Font;->mContext:Landroid/content/Context;
    invoke-static {v2, v3}, Lorg/holoeverywhere/FontLoader$Font;->access$002(Lorg/holoeverywhere/FontLoader$Font;Landroid/content/Context;)Landroid/content/Context;

    .line 166
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    invoke-direct {p0, v2, p1, p2}, Lorg/holoeverywhere/FontLoader$FontCollector;->getTypeface(Lorg/holoeverywhere/FontLoader$Font;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_1

    .line 168
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public register(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-object p0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lorg/holoeverywhere/FontLoader$Font;->lock()V

    .line 176
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object p1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mLastUsedFont:Lorg/holoeverywhere/FontLoader$Font;

    goto :goto_0
.end method

.method public setDefaultFont(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1
    .param p1, "defaultFont"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mDefaultFont:Lorg/holoeverywhere/FontLoader$Font;

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lorg/holoeverywhere/FontLoader$Font;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$FontCollector;->setFontFamily(Ljava/lang/String;)Lorg/holoeverywhere/FontLoader$Font;

    .line 185
    invoke-virtual {p1}, Lorg/holoeverywhere/FontLoader$Font;->getFontStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/FontLoader$FontCollector;->setFontStyle(I)Lorg/holoeverywhere/FontLoader$Font;

    .line 187
    :cond_0
    return-object p0
.end method

.method public unregister(Ljava/lang/String;I)Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 3
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 197
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/FontLoader$Font;

    .line 198
    .local v0, "font":Lorg/holoeverywhere/FontLoader$Font;
    # getter for: Lorg/holoeverywhere/FontLoader$Font;->mFontFamily:Ljava/lang/String;
    invoke-static {v0}, Lorg/holoeverywhere/FontLoader$Font;->access$100(Lorg/holoeverywhere/FontLoader$Font;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/holoeverywhere/FontLoader;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {p1, v2}, Lorg/holoeverywhere/FontLoader;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lorg/holoeverywhere/FontLoader$Font;->mFontStyle:I
    invoke-static {v0}, Lorg/holoeverywhere/FontLoader$Font;->access$200(Lorg/holoeverywhere/FontLoader$Font;)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 199
    iget-object v2, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "font":Lorg/holoeverywhere/FontLoader$Font;
    :cond_0
    return-object p0

    .line 196
    .restart local v0    # "font":Lorg/holoeverywhere/FontLoader$Font;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregister(Lorg/holoeverywhere/FontLoader$Font;)Lorg/holoeverywhere/FontLoader$FontCollector;
    .locals 1
    .param p1, "font"    # Lorg/holoeverywhere/FontLoader$Font;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/holoeverywhere/FontLoader$FontCollector;->mFonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method
