.class public Lorg/holoeverywhere/drawable/StateListDrawable;
.super Lorg/holoeverywhere/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/drawable/StateListDrawable$1;,
        Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z = true


# instance fields
.field private mMutated:Z

.field private final mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, v0}, Lorg/holoeverywhere/drawable/StateListDrawable;-><init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;-><init>()V

    .line 75
    new-instance v0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;-><init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Lorg/holoeverywhere/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 76
    .local v0, "as":Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    iput-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    .line 77
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/drawable/StateListDrawable;->setConstantState(Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;)V

    .line 78
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/drawable/StateListDrawable;->onStateChange([I)Z

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Lorg/holoeverywhere/drawable/StateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lorg/holoeverywhere/drawable/StateListDrawable$1;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/drawable/StateListDrawable;-><init>(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 85
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/drawable/StateListDrawable;->onStateChange([I)Z

    .line 87
    :cond_0
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    # invokes: Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, p1}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->access$100(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    return v0
.end method

.method getStateListState()Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
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
    .line 148
    sget-object v14, Lorg/holoeverywhere/R$styleable;->StateListDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 150
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v15}, Lorg/holoeverywhere/drawable/DrawableContainer;->setVisible(ZZ)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->setEnterFadeDuration(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->setExitFadeDuration(I)V

    .line 159
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/holoeverywhere/drawable/StateListDrawable;->setDither(Z)V

    .line 160
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v7, v14, 0x1

    .line 165
    .local v7, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .local v3, "depth":I
    if-ge v3, v7, :cond_1

    const/4 v14, 0x3

    if-eq v13, v14, :cond_8

    .line 167
    :cond_1
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 170
    if-gt v3, v7, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 173
    const/4 v5, 0x0

    .line 175
    .local v5, "drawableRes":I
    const/4 v8, 0x0

    .line 176
    .local v8, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 177
    .local v10, "numAttrs":I
    new-array v12, v10, [I

    .line 178
    .local v12, "states":[I
    const/4 v6, 0x0

    .local v6, "i":I
    move v9, v8

    .end local v8    # "j":I
    .local v9, "j":I
    :goto_1
    if-ge v6, v10, :cond_2

    .line 179
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v11

    .line 180
    .local v11, "stateResId":I
    if-nez v11, :cond_3

    .line 191
    .end local v11    # "stateResId":I
    :cond_2
    invoke-static {v12, v9}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v12

    .line 193
    if-eqz v5, :cond_6

    .line 194
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 206
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    invoke-virtual {v14, v12, v4}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 183
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "stateResId":I
    :cond_3
    const v14, 0x1010199

    if-ne v11, v14, :cond_4

    .line 184
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v14}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    move v8, v9

    .line 178
    .end local v9    # "j":I
    .end local v11    # "stateResId":I
    .restart local v8    # "j":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    .end local v8    # "j":I
    .restart local v9    # "j":I
    goto :goto_1

    .line 186
    .restart local v11    # "stateResId":I
    :cond_4
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "j":I
    .restart local v8    # "j":I
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v14

    if-eqz v14, :cond_5

    .end local v11    # "stateResId":I
    :goto_4
    aput v11, v12, v9

    goto :goto_3

    .restart local v11    # "stateResId":I
    :cond_5
    neg-int v11, v11

    goto :goto_4

    .line 196
    .end local v8    # "j":I
    .end local v11    # "stateResId":I
    .restart local v9    # "j":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_6

    .line 198
    const/4 v14, 0x2

    if-eq v13, v14, :cond_7

    .line 199
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "child tag defining a drawable"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 204
    :cond_7
    invoke-static/range {p1 .. p3}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 208
    .end local v3    # "depth":I
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawableRes":I
    .end local v6    # "i":I
    .end local v9    # "j":I
    .end local v10    # "numAttrs":I
    .end local v12    # "states":[I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/drawable/StateListDrawable;->getState()[I

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/holoeverywhere/drawable/StateListDrawable;->onStateChange([I)Z

    .line 209
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 219
    iget-object v1, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    iget-object v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v1, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mMutated:Z

    .line 222
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 227
    iget-object v1, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    # invokes: Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, p1}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->access$100(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 228
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 229
    iget-object v1, p0, Lorg/holoeverywhere/drawable/StateListDrawable;->mStateListState:Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    # invokes: Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, v2}, Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;->access$100(Lorg/holoeverywhere/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 231
    :cond_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/holoeverywhere/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method
