.class final Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
.super Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Lorg/holoeverywhere/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Lorg/holoeverywhere/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;-><init>(Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;Lorg/holoeverywhere/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p1, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;[I)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    .param p1, "x1"    # [I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method private indexOfStateSet([I)I
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 45
    iget-object v2, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 46
    .local v2, "stateSets":[[I
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    .line 47
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 47
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 32
    .local v0, "pos":I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 33
    return v0
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 39
    new-array v0, p2, [[I

    .line 40
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 42
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lorg/holoeverywhere/drawable/StateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Lorg/holoeverywhere/drawable/StateListDrawable;-><init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/StateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 62
    new-instance v0, Lorg/holoeverywhere/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/holoeverywhere/drawable/StateListDrawable;-><init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/StateListDrawable$1;)V

    return-object v0
.end method
