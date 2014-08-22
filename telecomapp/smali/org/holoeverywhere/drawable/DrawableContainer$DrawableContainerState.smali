.class public abstract Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mChildrenChangingConfigurations:I

.field mComputedConstantSize:Z

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDither:Z

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHaveOpacity:Z

.field mHaveStateful:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Lorg/holoeverywhere/drawable/DrawableContainer;

.field mPaddingChecked:Z

.field mStateful:Z

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;Lorg/holoeverywhere/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Lorg/holoeverywhere/drawable/DrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 18
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 22
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 23
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 25
    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 29
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 30
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 34
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 36
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 40
    iput-object p2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOwner:Lorg/holoeverywhere/drawable/DrawableContainer;

    .line 41
    if-eqz p1, :cond_3

    .line 42
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 43
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 44
    iget-object v2, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 45
    .local v2, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v3, v2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 46
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 47
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 48
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 49
    if-eqz p3, :cond_0

    .line 50
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 54
    :goto_1
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 56
    :cond_1
    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 57
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 58
    iget-object v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 59
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 61
    :cond_2
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 62
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 63
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 64
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 65
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 66
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 67
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 68
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 69
    iget-boolean v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 70
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 71
    iget v3, p1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 77
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "origDr":[Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 73
    :cond_3
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 74
    iput v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 75
    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    goto :goto_2
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 80
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 81
    .local v0, "pos":I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 82
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 84
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 85
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOwner:Lorg/holoeverywhere/drawable/DrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 86
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 87
    iget v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 88
    iget v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 89
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 90
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 92
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 93
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 94
    return v0
.end method

.method public declared-synchronized canConstantState()Z
    .locals 3

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-nez v2, :cond_1

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 100
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 101
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 107
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 109
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 101
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected computeConstantSize()V
    .locals 6

    .prologue
    .line 113
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 114
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 115
    .local v0, "N":I
    iget-object v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 116
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, -0x1

    iput v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 117
    const/4 v5, 0x0

    iput v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 118
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 119
    aget-object v1, v2, v3

    .line 120
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 121
    .local v4, "s":I
    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    .line 122
    iput v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 124
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 125
    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    .line 126
    iput v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 128
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 129
    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    .line 130
    iput v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 132
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 133
    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_3

    .line 134
    iput v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 118
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_4
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getChildCount()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 157
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 165
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 173
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v5, :cond_0

    .line 178
    const/4 v3, 0x0

    .line 207
    :goto_0
    return-object v3

    .line 180
    :cond_0
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    if-eqz v5, :cond_2

    .line 181
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_0

    .line 183
    :cond_2
    const/4 v3, 0x0

    .line 184
    .local v3, "r":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .local v4, "t":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 186
    .local v0, "N":I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 187
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_8

    .line 188
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 189
    if-nez v3, :cond_3

    .line 190
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "r":Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    .restart local v3    # "r":Landroid/graphics/Rect;
    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    .line 193
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 195
    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    .line 196
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 198
    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6

    .line 199
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 201
    :cond_6
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    .line 202
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 187
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 207
    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final getConstantWidth()I
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 214
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .prologue
    .line 226
    iget-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    if-eqz v4, :cond_0

    .line 227
    iget v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 237
    :goto_0
    return v3

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 230
    .local v0, "N":I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 231
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 232
    .local v3, "op":I
    :goto_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 233
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 231
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 235
    .restart local v2    # "i":I
    .restart local v3    # "op":I
    :cond_2
    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 236
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 241
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 242
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 244
    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 4

    .prologue
    .line 251
    iget-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    if-eqz v3, :cond_0

    .line 252
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 264
    :goto_0
    return v2

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 255
    .local v2, "stateful":Z
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 256
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 257
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    const/4 v2, 0x1

    .line 262
    :cond_1
    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 263
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final setConstantSize(Z)V
    .locals 0
    .param p1, "constant"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 269
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 272
    iput p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 273
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 276
    iput p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 277
    return-void
.end method

.method public final setVariablePadding(Z)V
    .locals 0
    .param p1, "variable"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 281
    return-void
.end method
