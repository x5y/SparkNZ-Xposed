.class final Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mCurrentDegrees:F

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mFromDegrees:F

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field mToDegrees:F


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Lorg/holoeverywhere/drawable/RotateDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "source"    # Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
    .param p2, "owner"    # Lorg/holoeverywhere/drawable/RotateDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    if-eqz p3, :cond_1

    .line 49
    iget-object v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 54
    iget-boolean v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 55
    iget v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotX:F

    iput v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 56
    iget-boolean v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 57
    iget v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotY:F

    iput v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 58
    iget v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 59
    iget v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iput v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    .line 62
    :cond_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    .line 67
    iput-boolean v1, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    .line 70
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Lorg/holoeverywhere/drawable/RotateDrawable;

    invoke-direct {v0, p0, v1, v1}, Lorg/holoeverywhere/drawable/RotateDrawable;-><init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/RotateDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 85
    new-instance v0, Lorg/holoeverywhere/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/holoeverywhere/drawable/RotateDrawable;-><init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/RotateDrawable$1;)V

    return-object v0
.end method
