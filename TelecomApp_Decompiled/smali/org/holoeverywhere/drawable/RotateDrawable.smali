.class public Lorg/holoeverywhere/drawable/RotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/drawable/RotateDrawable$1;,
        Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:F = 10000.0f


# instance fields
.field private mMutated:Z

.field private mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, v0}, Lorg/holoeverywhere/drawable/RotateDrawable;-><init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "rotateState"    # Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 99
    new-instance v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, p1, p0, p2}, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;-><init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Lorg/holoeverywhere/drawable/RotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/RotateDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lorg/holoeverywhere/drawable/RotateDrawable$1;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/drawable/RotateDrawable;-><init>(Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 105
    .local v4, "saveCount":I
    iget-object v7, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v7, v7, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 107
    .local v6, "w":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v7, v8

    .line 108
    .local v1, "h":I
    iget-object v5, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    .line 109
    .local v5, "st":Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;
    iget-boolean v7, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v7, :cond_0

    int-to-float v7, v6

    iget v8, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float v2, v7, v8

    .line 110
    .local v2, "px":F
    :goto_0
    iget-boolean v7, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v7, :cond_1

    int-to-float v7, v1

    iget v8, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float v3, v7, v8

    .line 111
    .local v3, "py":F
    :goto_1
    iget v7, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 112
    iget-object v7, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 114
    return-void

    .line 109
    .end local v2    # "px":F
    .end local v3    # "py":F
    :cond_0
    iget v2, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotX:F

    goto :goto_0

    .line 110
    .restart local v2    # "px":F
    :cond_1
    iget v3, v5, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotY:F

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget v1, v1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    .line 127
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 17
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
    .line 159
    invoke-super/range {p0 .. p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 160
    sget-object v14, Lorg/holoeverywhere/R$styleable;->RotateDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 162
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v15}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 163
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 166
    .local v12, "tv":Landroid/util/TypedValue;
    if-nez v12, :cond_3

    .line 167
    const/4 v7, 0x1

    .line 168
    .local v7, "pivotXRel":Z
    const/high16 v6, 0x3f000000

    .line 173
    .local v6, "pivotX":F
    :goto_0
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 176
    if-nez v12, :cond_6

    .line 177
    const/4 v9, 0x1

    .line 178
    .local v9, "pivotYRel":Z
    const/high16 v8, 0x3f000000

    .line 183
    .local v8, "pivotY":F
    :goto_1
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 184
    .local v4, "fromDegrees":F
    const/4 v14, 0x3

    const/high16 v15, 0x43b40000

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 185
    .local v11, "toDegrees":F
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 186
    .local v10, "res":I
    const/4 v3, 0x0

    .line 187
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-lez v10, :cond_0

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 190
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 193
    .local v5, "outerDepth":I
    :cond_1
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_9

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v5, :cond_9

    .line 196
    :cond_2
    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 200
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 201
    const-string v14, "drawable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad element under <rotate>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 170
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "fromDegrees":F
    .end local v5    # "outerDepth":I
    .end local v6    # "pivotX":F
    .end local v7    # "pivotXRel":Z
    .end local v8    # "pivotY":F
    .end local v9    # "pivotYRel":Z
    .end local v10    # "res":I
    .end local v11    # "toDegrees":F
    .end local v13    # "type":I
    :cond_3
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_4

    const/4 v7, 0x1

    .line 171
    .restart local v7    # "pivotXRel":Z
    :goto_3
    if-eqz v7, :cond_5

    const/high16 v14, 0x3f800000

    const/high16 v15, 0x3f800000

    invoke-virtual {v12, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    .restart local v6    # "pivotX":F
    :goto_4
    goto :goto_0

    .line 170
    .end local v6    # "pivotX":F
    .end local v7    # "pivotXRel":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 171
    .restart local v7    # "pivotXRel":Z
    :cond_5
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    goto :goto_4

    .line 180
    .restart local v6    # "pivotX":F
    :cond_6
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_7

    const/4 v9, 0x1

    .line 181
    .restart local v9    # "pivotYRel":Z
    :goto_5
    if-eqz v9, :cond_8

    const/high16 v14, 0x3f800000

    const/high16 v15, 0x3f800000

    invoke-virtual {v12, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    .restart local v8    # "pivotY":F
    :goto_6
    goto/16 :goto_1

    .line 180
    .end local v8    # "pivotY":F
    .end local v9    # "pivotYRel":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 181
    .restart local v9    # "pivotYRel":Z
    :cond_8
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    goto :goto_6

    .line 206
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "fromDegrees":F
    .restart local v5    # "outerDepth":I
    .restart local v8    # "pivotY":F
    .restart local v10    # "res":I
    .restart local v11    # "toDegrees":F
    .restart local v13    # "type":I
    :cond_9
    if-nez v3, :cond_a

    .line 207
    const-string v14, "drawable"

    const-string v15, "No drawable specified for <rotate>"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput-object v3, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput-boolean v7, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput v6, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput-boolean v9, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput v8, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput v4, v15, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput v4, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iput v11, v14, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 218
    if-eqz v3, :cond_b

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 221
    :cond_b
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 226
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mMutated:Z

    .line 242
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 254
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget v1, v1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v2, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget v2, v2, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iget-object v3, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget v3, v3, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    sub-float/2addr v2, v3

    int-to-float v3, p1

    const v4, 0x461c4000

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 258
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->invalidateSelf()V

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 264
    iget-object v1, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 265
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 266
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 272
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 275
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 285
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lorg/holoeverywhere/drawable/RotateDrawable;->mState:Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 290
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 296
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 299
    :cond_0
    return-void
.end method
