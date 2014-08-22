.class public Lorg/holoeverywhere/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mToggleWhenClick:Z

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lorg/holoeverywhere/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    sget v0, Lorg/holoeverywhere/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 68
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 80
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 81
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 85
    sget-object v4, Lorg/holoeverywhere/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 90
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 91
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mThumbTextPadding:I

    .line 93
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchMinWidth:I

    .line 95
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchPadding:I

    .line 97
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lorg/holoeverywhere/widget/Switch;->mToggleWhenClick:Z

    .line 98
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 99
    .local v1, "appearance":I
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, p1, v1}, Lorg/holoeverywhere/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 104
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    .line 105
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mMinFlingVelocity:I

    .line 106
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->refreshDrawableState()V

    .line 107
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 108
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 115
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 119
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 120
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 122
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lorg/holoeverywhere/widget/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 175
    iget v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 187
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 188
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTop:I

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 189
    .local v3, "thumbTop":I
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 190
    .local v1, "thumbLeft":I
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 192
    .local v2, "thumbRight":I
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 193
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

    invoke-interface {v0, p1, p0}, Lorg/holoeverywhere/text/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 211
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 208
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 531
    return-void

    .line 521
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 522
    goto :goto_0

    .line 524
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 525
    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 571
    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 573
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 574
    if-eqz v0, :cond_3

    .line 576
    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 577
    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 578
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/holoeverywhere/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 579
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 583
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 587
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 572
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 579
    goto :goto_1

    .line 581
    :cond_2
    invoke-direct {p0}, Lorg/holoeverywhere/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 585
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/holoeverywhere/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 127
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 128
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->invalidate()V

    .line 135
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 140
    .local v0, "padding":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget v1, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 143
    :cond_0
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isToggleWhenClick()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/Switch;->mToggleWhenClick:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 203
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 204
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 205
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 218
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 219
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lorg/holoeverywhere/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 222
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    move-object/from16 v0, p0

    iget v7, v0, Lorg/holoeverywhere/widget/Switch;->mSwitchLeft:I

    .line 229
    .local v7, "switchLeft":I
    move-object/from16 v0, p0

    iget v10, v0, Lorg/holoeverywhere/widget/Switch;->mSwitchTop:I

    .line 230
    .local v10, "switchTop":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/holoeverywhere/widget/Switch;->mSwitchRight:I

    .line 231
    .local v8, "switchRight":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/holoeverywhere/widget/Switch;->mSwitchBottom:I

    .line 232
    .local v2, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v7, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 235
    .local v1, "saveState":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v4, v7, v14

    .line 237
    .local v4, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v6, v10, v14

    .line 238
    .local v6, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int v5, v8, v14

    .line 239
    .local v5, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v14

    .line 240
    .local v3, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 242
    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    const/high16 v15, 0x3f000000

    add-float/2addr v14, v15

    float-to-int v12, v14

    .line 243
    .local v12, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int v14, v4, v14

    add-int v11, v14, v12

    .line 244
    .local v11, "thumbLeft":I
    add-int v14, v4, v12

    move-object/from16 v0, p0

    iget v15, v0, Lorg/holoeverywhere/widget/Switch;->mThumbWidth:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int v13, v14, v15

    .line 245
    .local v13, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v11, v10, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/Switch;->getDrawableState()[I

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setColor(I)V

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/Switch;->getDrawableState()[I

    move-result-object v15

    iput-object v15, v14, Landroid/text/TextPaint;->drawableState:[I

    .line 252
    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/widget/Switch;->getTargetCheckedState()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/holoeverywhere/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 253
    .local v9, "switchText":Landroid/text/Layout;
    :goto_0
    add-int v14, v11, v13

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    add-int v15, v6, v3

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    return-void

    .line 252
    .end local v9    # "switchText":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/holoeverywhere/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 262
    const-class v0, Lorg/holoeverywhere/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 268
    const-class v3, Lorg/holoeverywhere/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 270
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 272
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 269
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 275
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 284
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 285
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/holoeverywhere/widget/Switch;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    .line 286
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 287
    .local v2, "switchRight":I
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 288
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 289
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 290
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 293
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getPaddingTop()I

    move-result v3

    .line 294
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 306
    :goto_1
    iput v1, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchLeft:I

    .line 307
    iput v3, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTop:I

    .line 308
    iput v0, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchBottom:I

    .line 309
    iput v2, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchRight:I

    .line 310
    return-void

    .line 285
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 297
    .restart local v0    # "switchBottom":I
    .restart local v1    # "switchLeft":I
    .restart local v2    # "switchRight":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 299
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 300
    goto :goto_1

    .line 302
    :sswitch_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 303
    iget v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 315
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 316
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 317
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 318
    .local v1, "heightSize":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    .line 319
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Lorg/holoeverywhere/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 321
    :cond_0
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v8, :cond_1

    .line 322
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Lorg/holoeverywhere/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v8

    iput-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 324
    :cond_1
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 325
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/holoeverywhere/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 326
    .local v2, "maxTextWidth":I
    iget v8, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v9, v2, 0x2

    iget v10, p0, Lorg/holoeverywhere/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/holoeverywhere/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 328
    .local v5, "switchWidth":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 329
    .local v4, "switchHeight":I
    iget v8, p0, Lorg/holoeverywhere/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    iput v8, p0, Lorg/holoeverywhere/widget/Switch;->mThumbWidth:I

    .line 330
    sparse-switch v6, :sswitch_data_0

    .line 340
    :goto_0
    sparse-switch v0, :sswitch_data_1

    .line 350
    :goto_1
    iput v5, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchWidth:I

    .line 351
    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchHeight:I

    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 353
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getMeasuredHeight()I

    move-result v3

    .line 354
    .local v3, "measuredHeight":I
    if-ge v3, v4, :cond_2

    .line 355
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0, v8, v4}, Lorg/holoeverywhere/widget/Switch;->setMeasuredDimension(II)V

    .line 357
    :cond_2
    return-void

    .line 332
    .end local v3    # "measuredHeight":I
    :sswitch_0
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 333
    goto :goto_0

    .line 335
    :sswitch_1
    move v7, v5

    .line 336
    goto :goto_0

    .line 342
    :sswitch_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    goto :goto_1

    .line 345
    :sswitch_3
    move v1, v4

    .line 346
    goto :goto_1

    .line 330
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 340
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 362
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    return-void

    .line 362
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 370
    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 371
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    .line 373
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 374
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 375
    .local v3, "y":F
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2, v3}, Lorg/holoeverywhere/widget/Switch;->hitThumb(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    iput v4, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    .line 377
    iput v2, p0, Lorg/holoeverywhere/widget/Switch;->mTouchX:F

    .line 378
    iput v3, p0, Lorg/holoeverywhere/widget/Switch;->mTouchY:F

    goto :goto_1

    .line 383
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 387
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 388
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 389
    .restart local v3    # "y":F
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/holoeverywhere/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 391
    :cond_2
    iput v7, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    .line 392
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 393
    iput v2, p0, Lorg/holoeverywhere/widget/Switch;->mTouchX:F

    .line 394
    iput v3, p0, Lorg/holoeverywhere/widget/Switch;->mTouchY:F

    goto :goto_1

    .line 400
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 401
    .restart local v2    # "x":F
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchX:F

    sub-float v0, v2, v5

    .line 402
    .local v0, "dx":F
    const/4 v5, 0x0

    iget v6, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    add-float/2addr v6, v0

    invoke-direct {p0}, Lorg/holoeverywhere/widget/Switch;->getThumbScrollRange()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 404
    .local v1, "newPos":F
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_1

    .line 405
    iput v1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    .line 406
    iput v2, p0, Lorg/holoeverywhere/widget/Switch;->mTouchX:F

    .line 407
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->invalidate()V

    goto :goto_1

    .line 415
    .end local v0    # "dx":F
    .end local v1    # "newPos":F
    .end local v2    # "x":F
    :pswitch_5
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    if-ne v5, v4, :cond_3

    iget-boolean v5, p0, Lorg/holoeverywhere/widget/Switch;->mToggleWhenClick:Z

    if-eqz v5, :cond_3

    .line 416
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->toggle()V

    .line 417
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 418
    iput v6, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    .line 419
    iget-object v5, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 423
    :cond_3
    :pswitch_6
    iget v5, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    if-ne v5, v7, :cond_4

    .line 424
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 427
    :cond_4
    iput v6, p0, Lorg/holoeverywhere/widget/Switch;->mTouchMode:I

    .line 428
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 383
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 438
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/holoeverywhere/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbPosition:F

    .line 439
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->invalidate()V

    .line 440
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 443
    iput p1, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchMinWidth:I

    .line 444
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 445
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 448
    iput p1, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchPadding:I

    .line 449
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 450
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 453
    sget-object v6, Lorg/holoeverywhere/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 458
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 460
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 461
    iput-object v2, p0, Lorg/holoeverywhere/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 465
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 467
    .local v4, "ts":I
    if-eqz v4, :cond_0

    .line 468
    int-to-float v6, v4

    iget-object v7, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 470
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 474
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 476
    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 478
    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 479
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 481
    .local v0, "allCaps":Z
    if-eqz v0, :cond_2

    .line 482
    new-instance v6, Lorg/holoeverywhere/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/holoeverywhere/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

    .line 483
    iget-object v6, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

    invoke-interface {v6, v10}, Lorg/holoeverywhere/text/TransformationMethod;->setLengthChangesAllowed(Z)V

    .line 487
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 488
    return-void

    .line 463
    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lorg/holoeverywhere/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 485
    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/holoeverywhere/widget/Switch;->mSwitchTransformationMethod:Lorg/holoeverywhere/text/TransformationMethod;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 491
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 492
    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 493
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 494
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->invalidate()V

    .line 496
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 499
    if-lez p2, :cond_4

    .line 500
    if-nez p1, :cond_1

    .line 501
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 505
    :goto_0
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 506
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 507
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 508
    .local v0, "need":I
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 509
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 515
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 503
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 506
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 509
    goto :goto_2

    .line 511
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 512
    iget-object v2, p0, Lorg/holoeverywhere/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 513
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/holoeverywhere/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 535
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 536
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/holoeverywhere/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 540
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 541
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 544
    iput-object p1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 545
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 546
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 553
    iput p1, p0, Lorg/holoeverywhere/widget/Switch;->mThumbTextPadding:I

    .line 554
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 555
    return-void
.end method

.method public setToggleWhenClick(Z)V
    .locals 0
    .param p1, "mToggleWhenClick"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/Switch;->mToggleWhenClick:Z

    .line 559
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 562
    iput-object p1, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 563
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->requestLayout()V

    .line 564
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
