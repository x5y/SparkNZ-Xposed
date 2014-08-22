.class public Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;
.super Landroid/widget/TextView;
.source "TMYExtraBoldTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;->init(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/National-Extrabold.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 32
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/widget/TMYExtraBoldTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_0
    return-void
.end method
