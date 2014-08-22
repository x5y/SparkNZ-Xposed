.class public Lorg/holoeverywhere/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;,
        Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# instance fields
.field mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mOpacityOverride:I

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    move-object v0, v1

    check-cast v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Lorg/holoeverywhere/drawable/LayerDrawable;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 150
    return-void
.end method

.method constructor <init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mOpacityOverride:I

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/drawable/LayerDrawable;->createConstantState(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    move-result-object v0

    .line 175
    .local v0, "as":Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    iput-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    .line 176
    iget v1, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    if-lez v1, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->ensurePadding()V

    .line 179
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;)V

    .line 154
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;)V
    .locals 6
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    .prologue
    .line 157
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lorg/holoeverywhere/drawable/LayerDrawable;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 158
    array-length v1, p1

    .line 159
    .local v1, "length":I
    new-array v2, v1, [Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 161
    .local v2, "r":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    new-instance v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v3, v2, v0

    .line 163
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 165
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v4, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iput v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 168
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iput-object v2, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 170
    invoke-direct {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->ensurePadding()V

    .line 171
    return-void
.end method

.method private addLayer(Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 8
    .param p1, "layer"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    .line 183
    .local v4, "st":Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    iget-object v6, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    array-length v0, v6

    .line 184
    .local v0, "N":I
    :goto_0
    iget v2, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 185
    .local v2, "i":I
    if-lt v2, v0, :cond_1

    .line 186
    add-int/lit8 v6, v0, 0xa

    new-array v3, v6, [Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 187
    .local v3, "nu":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    if-lez v2, :cond_0

    .line 188
    iget-object v6, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v6, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_0
    iput-object v3, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 192
    .end local v3    # "nu":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v6, v5, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v5, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 193
    new-instance v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v1}, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;-><init>()V

    .line 194
    .local v1, "childDrawable":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aput-object v1, v5, v2

    .line 195
    iput p2, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 196
    iput-object p1, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iput p3, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 198
    iput p4, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 199
    iput p5, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 200
    iput p6, v1, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 201
    iget v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 202
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    return-void

    .end local v0    # "N":I
    .end local v1    # "childDrawable":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    :cond_2
    move v0, v5

    .line 183
    goto :goto_0
.end method

.method private ensurePadding()V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 220
    .local v0, "N":I
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    .line 224
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    .line 225
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    .line 226
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    goto :goto_0
.end method

.method private reapplyPadding(ILorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .prologue
    .line 480
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 481
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 482
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 484
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 485
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 486
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 487
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 488
    const/4 v1, 0x1

    .line 490
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method createConstantState(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 206
    new-instance v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Lorg/holoeverywhere/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 211
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 212
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 213
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 214
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 230
    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 231
    .local v1, "layers":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v2, v2, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 232
    aget-object v2, v1, v0

    iget v2, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 233
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    :goto_1
    return-object v2

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .prologue
    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 242
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v1, v1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v1, v1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 259
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 10

    .prologue
    .line 274
    const/4 v3, -0x1

    .line 275
    .local v3, "height":I
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 276
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 277
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "padT":I
    const/4 v5, 0x0

    .line 278
    .local v5, "padB":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 279
    aget-object v7, v1, v4

    .line 280
    .local v7, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v8, v9

    iget v9, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int v2, v8, v5

    .line 281
    .local v2, "h":I
    if-le v2, v3, :cond_0

    .line 282
    move v3, v2

    .line 284
    :cond_0
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v4

    add-int/2addr v6, v8

    .line 285
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v4

    add-int/2addr v5, v8

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "h":I
    .end local v7    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 10

    .prologue
    .line 292
    const/4 v7, -0x1

    .line 293
    .local v7, "width":I
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 294
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 295
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "padL":I
    const/4 v4, 0x0

    .line 296
    .local v4, "padR":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 297
    aget-object v5, v1, v2

    .line 298
    .local v5, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v5, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget v9, v5, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v8, v9

    iget v9, v5, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    add-int v6, v8, v4

    .line 300
    .local v6, "w":I
    if-le v6, v7, :cond_0

    .line 301
    move v7, v6

    .line 303
    :cond_0
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 304
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v5    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    .end local v6    # "w":I
    :cond_1
    return v7
.end method

.method public getNumberOfLayers()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 316
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mOpacityOverride:I

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 323
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 324
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 325
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 326
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 327
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 328
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 329
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 330
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Lorg/holoeverywhere/drawable/LayerDrawable;->reapplyPadding(ILorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;)Z

    .line 331
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 332
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 333
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 334
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-super/range {p0 .. p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 344
    sget-object v2, Lorg/holoeverywhere/R$styleable;->LayerDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 345
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/holoeverywhere/drawable/LayerDrawable;->mOpacityOverride:I

    .line 347
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v12, v2, 0x1

    .line 351
    .local v12, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .local v10, "depth":I
    if-ge v10, v12, :cond_1

    const/4 v2, 0x3

    if-eq v13, v2, :cond_4

    .line 352
    :cond_1
    const/4 v2, 0x2

    if-ne v13, v2, :cond_0

    .line 355
    if-gt v10, v12, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, "item"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    sget-object v2, Lorg/holoeverywhere/R$styleable;->LayerDrawableItem:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 359
    const/4 v2, 0x2

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 360
    .local v5, "left":I
    const/4 v2, 0x3

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 361
    .local v6, "top":I
    const/4 v2, 0x4

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 362
    .local v7, "right":I
    const/4 v2, 0x5

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 363
    .local v8, "bottom":I
    const/4 v2, 0x1

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 364
    .local v11, "drawableRes":I
    const/4 v2, 0x0

    const/4 v14, -0x1

    invoke-virtual {v9, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 365
    .local v4, "id":I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    if-eqz v11, :cond_2

    .line 368
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v2, p0

    .line 379
    invoke-direct/range {v2 .. v8}, Lorg/holoeverywhere/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;IIIII)V

    goto :goto_0

    .line 370
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v2, 0x4

    if-eq v13, v2, :cond_2

    .line 372
    const/4 v2, 0x2

    if-eq v13, v2, :cond_3

    .line 373
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_3
    invoke-static/range {p1 .. p3}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 381
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id":I
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "depth":I
    .end local v11    # "drawableRes":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->ensurePadding()V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getState()[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/holoeverywhere/drawable/LayerDrawable;->onStateChange([I)Z

    .line 383
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 388
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 400
    iget-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mMutated:Z

    if-nez v3, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 401
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    invoke-virtual {v3}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_0
    new-instance v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Lorg/holoeverywhere/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    .line 406
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 407
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 408
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 409
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mMutated:Z

    .line 413
    .end local v0    # "N":I
    .end local v1    # "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 418
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 419
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v8, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 420
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "padL":I
    const/4 v6, 0x0

    .local v6, "padT":I
    const/4 v5, 0x0

    .local v5, "padR":I
    const/4 v3, 0x0

    .line 421
    .local v3, "padB":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 422
    aget-object v7, v1, v2

    .line 423
    .local v7, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iget v10, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v11, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iget v11, p1, Landroid/graphics/Rect;->right:I

    iget v12, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    iget v13, v7, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 427
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v2

    add-int/2addr v4, v8

    .line 428
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v2

    add-int/2addr v5, v8

    .line 429
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v2

    add-int/2addr v6, v8

    .line 430
    iget-object v8, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v2

    add-int/2addr v3, v8

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v7    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 436
    iget-object v6, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 437
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v6, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 438
    .local v0, "N":I
    const/4 v4, 0x0

    .line 439
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 440
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 441
    aget-object v5, v1, v3

    .line 442
    .local v5, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 443
    const/4 v2, 0x1

    .line 445
    :cond_0
    invoke-direct {p0, v3, v5}, Lorg/holoeverywhere/drawable/LayerDrawable;->reapplyPadding(ILorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    const/4 v4, 0x1

    .line 440
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v5    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 450
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/holoeverywhere/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 452
    :cond_3
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    .line 457
    iget-object v6, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 458
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v6, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 459
    .local v0, "N":I
    const/4 v4, 0x0

    .line 460
    .local v4, "paddingChanged":Z
    const/4 v2, 0x0

    .line 461
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 462
    aget-object v5, v1, v3

    .line 463
    .local v5, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v6, v5, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    const/4 v2, 0x1

    .line 466
    :cond_0
    invoke-direct {p0, v3, v5}, Lorg/holoeverywhere/drawable/LayerDrawable;->reapplyPadding(ILorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    const/4 v4, 0x1

    .line 461
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v5    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/holoeverywhere/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 473
    :cond_3
    if-eqz v2, :cond_4

    .line 474
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->invalidateSelf()V

    .line 476
    :cond_4
    return v2
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 496
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 499
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 503
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 504
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 505
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 506
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 512
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 513
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 514
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 515
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4
    .param p1, "dither"    # Z

    .prologue
    .line 521
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 522
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 523
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 524
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 529
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v2, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 530
    .local v2, "layers":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 531
    aget-object v3, v2, v1

    iget v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v3, p1, :cond_3

    .line 532
    aget-object v3, v2, v1

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 533
    if-eqz p2, :cond_0

    .line 534
    aget-object v3, v2, v1

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 535
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 537
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    aget-object v3, v2, v1

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 539
    :cond_1
    if-eqz p2, :cond_2

    .line 540
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 542
    :cond_2
    aget-object v3, v2, v1

    iput-object p2, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    const/4 v3, 0x1

    .line 547
    :goto_1
    return v3

    .line 530
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 547
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 552
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 555
    iget-object v1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    .line 556
    .local v0, "childDrawable":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 557
    iput p3, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 558
    iput p4, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 559
    iput p5, v0, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 560
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .prologue
    .line 563
    iput p1, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mOpacityOverride:I

    .line 564
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 568
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 569
    .local v2, "changed":Z
    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 570
    .local v1, "array":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Lorg/holoeverywhere/drawable/LayerDrawable;->mLayerState:Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;

    iget v0, v4, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 571
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 572
    aget-object v4, v1, v3

    iget-object v4, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_0
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 579
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/LayerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 580
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 581
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 583
    :cond_0
    return-void
.end method
