.class public Lorg/holoeverywhere/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextView.java"

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
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/TextView;->construct(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/holoeverywhere/widget/CheckedTextView;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/holoeverywhere/widget/CheckedTextView;->mFontStyle:I

    return v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "allCaps"    # Z

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/holoeverywhere/widget/TextView;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 40
    return-void
.end method

.method public setFontStyle(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontStyle"    # I

    .prologue
    .line 44
    iput-object p1, p0, Lorg/holoeverywhere/widget/CheckedTextView;->mFontFamily:Ljava/lang/String;

    .line 45
    iput p2, p0, Lorg/holoeverywhere/widget/CheckedTextView;->mFontStyle:I

    .line 46
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->setFontStyle(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 52
    return-void
.end method
