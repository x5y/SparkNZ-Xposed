.class public Lorg/holoeverywhere/widget/DrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "DrawerLayout.java"


# instance fields
.field private mFitSystemWindows:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/DrawerLayout;->mFitSystemWindows:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 29
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/DrawerLayout;->mFitSystemWindows:Z

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 31
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 32
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "child":Landroid/view/View;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .param p1, "fitSystemWindows"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/DrawerLayout;->mFitSystemWindows:Z

    .line 43
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DrawerLayout;->requestLayout()V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 47
    :cond_0
    return-void
.end method
