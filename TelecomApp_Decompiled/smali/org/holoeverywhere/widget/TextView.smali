.class public Lorg/holoeverywhere/widget/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"

# interfaces
.implements Lorg/holoeverywhere/FontLoader$FontStyleProvider;


# instance fields
.field private mFontFamily:Ljava/lang/String;

.field private mFontStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    invoke-static {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/TextView;->construct(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public static construct(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ":",
            "Lorg/holoeverywhere/FontLoader$FontStyleProvider;",
            ">(TT;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "textView":Landroid/widget/TextView;, "TT;"
    const/4 v3, 0x0

    .line 19
    sget-object v2, Lorg/holoeverywhere/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 21
    .local v1, "textAppearance":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-static {p0, p1, v1}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 24
    sget-object v2, Lorg/holoeverywhere/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/widget/TextView;Landroid/content/res/TypedArray;)V

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    return-void
.end method

.method private static parseFontStyle(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v2, Lorg/holoeverywhere/R$styleable;->TextAppearance:[I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v0}, Lorg/holoeverywhere/widget/TextView;->parseFontStyle(Landroid/content/res/TypedArray;)[Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "result":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-object v1
.end method

.method private static parseFontStyle(Landroid/content/res/TypedArray;)[Ljava/lang/Object;
    .locals 10
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 42
    const/4 v2, 0x1

    .line 43
    .local v2, "force":Z
    sget v1, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    .line 44
    .local v1, "fontStyle":I
    const/4 v0, 0x0

    .line 45
    .local v0, "fontFamily":Ljava/lang/String;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .local v3, "value":Landroid/util/TypedValue;
    const/16 v5, 0x8

    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 47
    iget-object v5, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 48
    invoke-virtual {p0, v7, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 50
    :cond_0
    iget-object v5, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 51
    const/4 v2, 0x0

    .line 57
    :goto_0
    sget v5, Lorg/holoeverywhere/FontLoader;->TEXT_STYLE_NORMAL:I

    invoke-virtual {p0, v9, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 59
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v9

    return-object v5

    .line 53
    :cond_1
    iget-object v5, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/holoeverywhere/FontLoader;->parseFontStyle(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, "z":[Ljava/lang/Object;
    aget-object v5, v4, v8

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 55
    aget-object v0, v4, v7

    .end local v0    # "fontFamily":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "fontFamily":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setAllCaps(Landroid/widget/TextView;Z)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "allCaps"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    new-instance v0, Lorg/holoeverywhere/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public static setFontStyle(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ":",
            "Lorg/holoeverywhere/FontLoader$FontStyleProvider;",
            ">(TT;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "textView":Landroid/widget/TextView;, "TT;"
    invoke-static {p0}, Lorg/holoeverywhere/FontLoader;->applyDefaultFont(Landroid/view/View;)Landroid/view/View;

    .line 75
    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ":",
            "Lorg/holoeverywhere/FontLoader$FontStyleProvider;",
            ">(TT;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "textView":Landroid/widget/TextView;, "TT;"
    if-nez p2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v1, Lorg/holoeverywhere/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "appearance":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/widget/TextView;Landroid/content/res/TypedArray;)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "appearance"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ":",
            "Lorg/holoeverywhere/FontLoader$FontStyleProvider;",
            ">(TT;",
            "Landroid/content/res/TypedArray;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "textView":Landroid/widget/TextView;, "TT;"
    const/4 v7, 0x0

    .line 90
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 92
    .local v0, "color":I
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 95
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 97
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_1
    invoke-virtual {p1, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 101
    .local v3, "ts":I
    if-eqz v3, :cond_2

    .line 102
    int-to-float v4, v3

    invoke-virtual {p0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    :cond_2
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    :cond_3
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    :cond_4
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    new-instance v4, Lorg/holoeverywhere/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/holoeverywhere/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 115
    :cond_5
    invoke-static {p1}, Lorg/holoeverywhere/widget/TextView;->parseFontStyle(Landroid/content/res/TypedArray;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, "font":[Ljava/lang/Object;
    move-object v4, p0

    .line 116
    check-cast v4, Lorg/holoeverywhere/FontLoader$FontStyleProvider;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v2, v7

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    .end local p0    # "textView":Landroid/widget/TextView;, "TT;"
    :goto_0
    or-int/2addr v6, v8

    invoke-interface {v4, v5, v6}, Lorg/holoeverywhere/FontLoader$FontStyleProvider;->setFontStyle(Ljava/lang/String;I)V

    .line 118
    return-void

    .line 116
    .restart local p0    # "textView":Landroid/widget/TextView;, "TT;"
    :cond_6
    check-cast p0, Lorg/holoeverywhere/FontLoader$FontStyleProvider;

    .end local p0    # "textView":Landroid/widget/TextView;, "TT;"
    invoke-interface {p0}, Lorg/holoeverywhere/FontLoader$FontStyleProvider;->getFontStyle()I

    move-result v6

    goto :goto_0
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/holoeverywhere/widget/TextView;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/holoeverywhere/widget/TextView;->mFontStyle:I

    return v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "allCaps"    # Z

    .prologue
    .line 149
    invoke-static {p0, p1}, Lorg/holoeverywhere/widget/TextView;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 150
    return-void
.end method

.method public setFontStyle(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    .line 154
    iput-object p1, p0, Lorg/holoeverywhere/widget/TextView;->mFontFamily:Ljava/lang/String;

    .line 155
    iput p2, p0, Lorg/holoeverywhere/widget/TextView;->mFontStyle:I

    .line 156
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->setFontStyle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 157
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 162
    return-void
.end method
