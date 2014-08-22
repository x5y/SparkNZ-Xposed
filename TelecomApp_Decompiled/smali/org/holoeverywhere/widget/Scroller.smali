.class public Lorg/holoeverywhere/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f800000

    .line 13
    const/high16 v8, 0x44480000

    sput v8, Lorg/holoeverywhere/widget/Scroller;->ALPHA:F

    .line 14
    const-wide/high16 v8, 0x3fe8000000000000L

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lorg/holoeverywhere/widget/Scroller;->DECELERATION_RATE:F

    .line 17
    const v8, 0x3f19999a

    sput v8, Lorg/holoeverywhere/widget/Scroller;->END_TENSION:F

    .line 21
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lorg/holoeverywhere/widget/Scroller;->SPLINE:[F

    .line 22
    const v8, 0x3ecccccd

    sput v8, Lorg/holoeverywhere/widget/Scroller;->START_TENSION:F

    .line 26
    const/4 v7, 0x0

    .line 27
    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 28
    int-to-float v8, v2

    const/high16 v9, 0x42c80000

    div-float v3, v8, v9

    .line 29
    .local v3, "t":F
    const/high16 v6, 0x3f800000

    .line 32
    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 33
    .local v5, "x":F
    const/high16 v8, 0x40400000

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 34
    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Lorg/holoeverywhere/widget/Scroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lorg/holoeverywhere/widget/Scroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 37
    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 46
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 47
    .local v1, "d":F
    sget-object v8, Lorg/holoeverywhere/widget/Scroller;->SPLINE:[F

    aput v1, v8, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    .line 41
    move v6, v5

    goto :goto_1

    .line 43
    :cond_1
    move v7, v5

    goto :goto_1

    .line 49
    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Lorg/holoeverywhere/widget/Scroller;->SPLINE:[F

    aput v12, v8, v13

    .line 50
    const/high16 v8, 0x41000000

    sput v8, Lorg/holoeverywhere/widget/Scroller;->sViscousFluidScale:F

    .line 51
    sput v12, Lorg/holoeverywhere/widget/Scroller;->sViscousFluidNormalize:F

    .line 52
    invoke-static {v12}, Lorg/holoeverywhere/widget/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lorg/holoeverywhere/widget/Scroller;->sViscousFluidNormalize:F

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 103
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 107
    iput-object p2, p0, Lorg/holoeverywhere/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mPpi:F

    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeceleration:F

    .line 111
    iput-boolean p3, p0, Lorg/holoeverywhere/widget/Scroller;->mFlywheel:Z

    .line 112
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 121
    const v0, 0x43c10b3d

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000

    .line 56
    sget v1, Lorg/holoeverywhere/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 57
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 58
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 64
    :goto_0
    sget v1, Lorg/holoeverywhere/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 65
    return p0

    .line 60
    :cond_0
    const v0, 0x3ebc5ab2

    .line 61
    .local v0, "start":F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 62
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 116
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 118
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000

    .line 125
    iget-boolean v10, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    if-eqz v10, :cond_1

    .line 126
    const/4 v9, 0x0

    .line 168
    :cond_0
    :goto_0
    return v9

    .line 128
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/holoeverywhere/widget/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 129
    .local v7, "timePassed":I
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    if-ge v7, v10, :cond_3

    .line 130
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mDurationReciprocal:F

    mul-float v8, v10, v11

    .line 133
    .local v8, "x":F
    iget-object v10, p0, Lorg/holoeverywhere/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    .line 134
    invoke-static {v8}, Lorg/holoeverywhere/widget/Scroller;->viscousFluid(F)F

    move-result v8

    .line 138
    :goto_1
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 139
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v10, p0, Lorg/holoeverywhere/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 142
    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 143
    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .line 144
    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .line 145
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .line 146
    .local v6, "t_sup":F
    sget-object v10, Lorg/holoeverywhere/widget/Scroller;->SPLINE:[F

    aget v0, v10, v3

    .line 147
    .local v0, "d_inf":F
    sget-object v10, Lorg/holoeverywhere/widget/Scroller;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 148
    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .line 150
    .local v2, "distanceCoef":F
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    iget v12, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 152
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 153
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 154
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    iget v12, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    .line 156
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    .line 157
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    .line 158
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    iget v11, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    if-ne v10, v11, :cond_0

    .line 159
    iput-boolean v9, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    goto/16 :goto_0

    .line 164
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    .line 165
    iget v10, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    iput v10, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    .line 166
    iput-boolean v9, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Scroller;->timePassed()I

    move-result v0

    .line 173
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    .line 174
    const/high16 v1, 0x3f800000

    iget v2, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/holoeverywhere/widget/Scroller;->mDurationReciprocal:F

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 176
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 25
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/Scroller;->getCurrVelocity()F

    move-result v12

    .line 182
    .local v12, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v5, v0

    .line 183
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 184
    .local v6, "dy":F
    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 185
    .local v7, "hyp":F
    div-float v10, v5, v7

    .line 186
    .local v10, "ndx":F
    div-float v11, v6, v7

    .line 187
    .local v11, "ndy":F
    mul-float v13, v10, v12

    .line 188
    .local v13, "oldVelocityX":F
    mul-float v14, v11, v12

    .line 189
    .local v14, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 191
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 192
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 195
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v7    # "hyp":F
    .end local v10    # "ndx":F
    .end local v11    # "ndy":F
    .end local v12    # "oldVel":F
    .end local v13    # "oldVelocityX":F
    .end local v14    # "oldVelocityY":F
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mMode:I

    .line 196
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 197
    mul-int v17, p3, p3

    mul-int v18, p4, p4

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 199
    .local v16, "velocity":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mVelocity:F

    .line 200
    sget v17, Lorg/holoeverywhere/widget/Scroller;->START_TENSION:F

    mul-float v17, v17, v16

    sget v18, Lorg/holoeverywhere/widget/Scroller;->ALPHA:F

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 202
    .local v8, "l":D
    const-wide v17, 0x408f400000000000L

    sget v19, Lorg/holoeverywhere/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0000000000000L

    sub-double v19, v19, v21

    div-double v19, v8, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    .line 204
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/holoeverywhere/widget/Scroller;->mStartTime:J

    .line 205
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    .line 206
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    .line 207
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1

    const/high16 v3, 0x3f800000

    .line 208
    .local v3, "coeffX":F
    :goto_0
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v4, 0x3f800000

    .line 209
    .local v4, "coeffY":F
    :goto_1
    sget v17, Lorg/holoeverywhere/widget/Scroller;->ALPHA:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sget v19, Lorg/holoeverywhere/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sget v21, Lorg/holoeverywhere/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0000000000000L

    sub-double v21, v21, v23

    div-double v19, v19, v21

    mul-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v15, v0

    .line 212
    .local v15, "totalDistance":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mMinX:I

    .line 213
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mMaxX:I

    .line 214
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mMinY:I

    .line 215
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mMaxY:I

    .line 216
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    .line 219
    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/Scroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    .line 222
    return-void

    .line 207
    .end local v3    # "coeffX":F
    .end local v4    # "coeffY":F
    .end local v15    # "totalDistance":I
    :cond_1
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v17, v16

    goto/16 :goto_0

    .line 208
    .restart local v3    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 226
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 229
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mVelocity:F

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    iget v2, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    iget v2, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 271
    iput p1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    .line 272
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaX:F

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 274
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 277
    iput p1, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    .line 278
    iget v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaY:F

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 280
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeceleration:F

    .line 284
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 287
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/Scroller;->startScroll(IIIII)V

    .line 288
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mMode:I

    .line 292
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinished:Z

    .line 293
    iput p5, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    .line 294
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/holoeverywhere/widget/Scroller;->mStartTime:J

    .line 295
    iput p1, p0, Lorg/holoeverywhere/widget/Scroller;->mStartX:I

    .line 296
    iput p2, p0, Lorg/holoeverywhere/widget/Scroller;->mStartY:I

    .line 297
    add-int v0, p1, p3

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalX:I

    .line 298
    add-int v0, p2, p4

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mFinalY:I

    .line 299
    int-to-float v0, p3

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaX:F

    .line 300
    int-to-float v0, p4

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDeltaY:F

    .line 301
    const/high16 v0, 0x3f800000

    iget v1, p0, Lorg/holoeverywhere/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/holoeverywhere/widget/Scroller;->mDurationReciprocal:F

    .line 302
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 305
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/holoeverywhere/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
