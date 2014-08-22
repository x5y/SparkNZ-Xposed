.class final Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget v0, p1, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 28
    iget v0, p1, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/holoeverywhere/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/drawable/ColorDrawable;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;Lorg/holoeverywhere/drawable/ColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    new-instance v0, Lorg/holoeverywhere/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/drawable/ColorDrawable;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;Lorg/holoeverywhere/drawable/ColorDrawable$1;)V

    return-object v0
.end method
