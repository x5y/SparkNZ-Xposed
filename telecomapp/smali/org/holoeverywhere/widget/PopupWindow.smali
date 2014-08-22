.class public Lorg/holoeverywhere/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;,
        Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lorg/holoeverywhere/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 176
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    sget v0, Lorg/holoeverywhere/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 124
    const/4 v7, -0x1

    iput v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    .line 127
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClippingEnabled:Z

    .line 131
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    .line 135
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 136
    const/4 v7, 0x0

    iput v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    .line 142
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 145
    new-instance v7, Lorg/holoeverywhere/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Lorg/holoeverywhere/widget/PopupWindow$1;-><init>(Lorg/holoeverywhere/widget/PopupWindow;)V

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 159
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOutsideTouchable:Z

    .line 163
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    .line 164
    const/4 v7, 0x1

    iput v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSoftInputMode:I

    .line 165
    const/4 v7, -0x1

    iput v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 166
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchable:Z

    .line 171
    const/16 v7, 0x3e8

    iput v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowLayoutType:I

    .line 191
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 192
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 193
    sget-object v7, Lorg/holoeverywhere/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 197
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 199
    .local v2, "animStyle":I
    sget v7, Lorg/holoeverywhere/R$style;->Holo_Animation_PopupWindow:I

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    .line 200
    iget-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Lorg/holoeverywhere/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 201
    iget-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lorg/holoeverywhere/drawable/StateListDrawable;

    .line 202
    .local v3, "background":Lorg/holoeverywhere/drawable/StateListDrawable;
    sget-object v7, Lorg/holoeverywhere/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Lorg/holoeverywhere/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 203
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Lorg/holoeverywhere/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 204
    .local v5, "count":I
    const/4 v4, -0x1

    .line 205
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 206
    if-eq v6, v1, :cond_3

    .line 207
    move v4, v6

    .line 211
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 212
    invoke-virtual {v3, v1}, Lorg/holoeverywhere/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {v3, v4}, Lorg/holoeverywhere/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Lorg/holoeverywhere/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    return-void

    .line 205
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Lorg/holoeverywhere/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, v0, v0}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 124
    iput v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    .line 127
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClippingEnabled:Z

    .line 131
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    .line 135
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 136
    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    .line 142
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 145
    new-instance v0, Lorg/holoeverywhere/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/PopupWindow$1;-><init>(Lorg/holoeverywhere/widget/PopupWindow;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 159
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOutsideTouchable:Z

    .line 163
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    .line 164
    iput v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSoftInputMode:I

    .line 165
    iput v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchable:Z

    .line 171
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowLayoutType:I

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 237
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 240
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/widget/PopupWindow;->setWidth(I)V

    .line 241
    invoke-virtual {p0, p3}, Lorg/holoeverywhere/widget/PopupWindow;->setHeight(I)V

    .line 242
    invoke-virtual {p0, p4}, Lorg/holoeverywhere/widget/PopupWindow;->setFocusable(Z)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/holoeverywhere/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lorg/holoeverywhere/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$700(Lorg/holoeverywhere/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;

    .prologue
    .line 31
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$800(Lorg/holoeverywhere/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/holoeverywhere/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 247
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 248
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/holoeverywhere/R$style;->Holo_Animation_DropDownUp:I

    .line 253
    :goto_0
    return v0

    .line 248
    :cond_0
    sget v0, Lorg/holoeverywhere/R$style;->Holo_Animation_DropDownDown:I

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 257
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 265
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 266
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 268
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 269
    or-int/lit8 p1, p1, 0x8

    .line 270
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    or-int/2addr p1, v2

    .line 276
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 277
    or-int/lit8 p1, p1, 0x10

    .line 279
    :cond_2
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 280
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 282
    :cond_3
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 283
    or-int/lit16 p1, p1, 0x200

    .line 285
    :cond_4
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 288
    :cond_5
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 289
    or-int/lit16 p1, p1, 0x100

    .line 291
    :cond_6
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 292
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 294
    :cond_7
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 295
    or-int/lit8 p1, p1, 0x20

    .line 297
    :cond_8
    return p1

    .line 273
    :cond_9
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 274
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 301
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 302
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 303
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidth:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 304
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeight:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 305
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 310
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 312
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 313
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    return-object v0

    .line 308
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I

    .prologue
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 339
    .local v1, "anchorHeight":I
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 340
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 341
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "onTop":Z
    const/16 v12, 0x33

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 344
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 345
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 346
    .local v2, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 347
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v9, v12, p4

    .line 348
    .local v9, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 349
    .local v8, "root":Landroid/view/View;
    iget v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v12, v9

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v13, :cond_0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v12, v13

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_2

    .line 351
    :cond_0
    iget-boolean v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v12, :cond_1

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v10

    .line 353
    .local v10, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v11

    .line 354
    .local v11, "scrollY":I
    new-instance v6, Landroid/graphics/Rect;

    iget v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v12, v10

    add-int v12, v12, p3

    iget v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 356
    .local v6, "r":Landroid/graphics/Rect;
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 358
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v10    # "scrollX":I
    .end local v11    # "scrollY":I
    :cond_1
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 359
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 360
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 361
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 362
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v12, v12, p4

    iget-object v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int v13, v13, p4

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_6

    const/4 v4, 0x1

    .line 364
    :goto_0
    if-eqz v4, :cond_7

    .line 365
    const/16 v12, 0x53

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 366
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v12

    iget-object v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 371
    :cond_2
    :goto_1
    iget-boolean v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v12, :cond_5

    .line 372
    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v12, v13

    .line 373
    .local v3, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v7, v12, v13

    .line 374
    .local v7, "right":I
    if-le v7, v3, :cond_3

    .line 375
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v13, v7, v3

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 377
    :cond_3
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_4

    .line 378
    iget v12, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 379
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 381
    :cond_4
    if-eqz v4, :cond_8

    .line 382
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p4

    iget v13, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    sub-int v5, v12, v13

    .line 383
    .local v5, "popupTop":I
    if-gez v5, :cond_5

    .line 384
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v12, v5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 390
    .end local v3    # "displayFrameWidth":I
    .end local v5    # "popupTop":I
    .end local v7    # "right":I
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v13, 0x10000000

    or-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 391
    return v4

    .line 362
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 368
    :cond_7
    iget-object v12, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 387
    .restart local v3    # "displayFrameWidth":I
    .restart local v7    # "right":I
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 456
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 459
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 502
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 503
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 507
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 508
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 509
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 511
    const/4 v0, -0x2

    .line 513
    :cond_2
    new-instance v3, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;-><init>(Lorg/holoeverywhere/widget/PopupWindow;Landroid/content/Context;)V

    .line 514
    .local v3, "popupViewContainer":Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 517
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    iput-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 523
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupWidth:I

    .line 524
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    .line 525
    return-void

    .line 521
    :cond_3
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 529
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 531
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 534
    :cond_0
    iput p2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I

    .line 535
    iput p3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I

    .line 536
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 691
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 692
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 693
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 696
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 698
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 700
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 701
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 784
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v8, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 788
    .local v8, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_7

    :cond_2
    const/4 v7, 0x1

    .line 789
    .local v7, "needsUpdate":Z
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    if-eqz v7, :cond_8

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsDropdown:Z

    if-nez v1, :cond_8

    .line 790
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lorg/holoeverywhere/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 795
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 796
    .local v9, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 797
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    .line 798
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 802
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_a

    .line 803
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 808
    :cond_5
    :goto_4
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 809
    .local v10, "x":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 810
    .local v11, "y":I
    if-eqz p2, :cond_b

    .line 811
    move/from16 v0, p4

    invoke-direct {p0, p1, v9, p3, v0}, Lorg/holoeverywhere/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 815
    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v1, :cond_6

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lorg/holoeverywhere/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 788
    .end local v7    # "needsUpdate":Z
    .end local v9    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 791
    .restart local v7    # "needsUpdate":Z
    :cond_8
    if-eqz v7, :cond_4

    .line 792
    iput p3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I

    .line 793
    move/from16 v0, p4

    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 800
    .restart local v9    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 805
    :cond_a
    move/from16 v0, p7

    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 813
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_b
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I

    iget v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v9, v1, v2}, Lorg/holoeverywhere/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 815
    :cond_c
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 828
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 829
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    .line 830
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 832
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 838
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsShowing:Z

    .line 321
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 323
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    :cond_0
    iput-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 334
    :cond_1
    return-void

    .line 325
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    :cond_2
    iput-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 424
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 425
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 426
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mDrawingLocation:[I

    .line 427
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 428
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 429
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 431
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 433
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 434
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 435
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 436
    .local v6, "returnedHeight":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 437
    iget-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 438
    iget-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 440
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 490
    iget v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 491
    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :cond_2
    iget v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 540
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 543
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mAnimationStyle:I

    .line 544
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 547
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 548
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClipToScreen:Z

    .line 556
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 557
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 551
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mClippingEnabled:Z

    .line 552
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 560
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 564
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 567
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mFocusable:Z

    .line 574
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 577
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeight:I

    .line 578
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 582
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 585
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mInputMethodMode:I

    .line 586
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInScreen:Z

    .line 590
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 594
    return-void
.end method

.method public setOnDismissListener(Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 597
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOnDismissListener:Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    .line 598
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mOutsideTouchable:Z

    .line 602
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 605
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSoftInputMode:I

    .line 606
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 609
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 610
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 617
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 618
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 621
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mNotTouchModal:Z

    .line 622
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mTouchable:Z

    .line 614
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 625
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidth:I

    .line 626
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 629
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    .line 630
    iput p2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    .line 631
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 634
    iput p1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowLayoutType:I

    .line 635
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, v0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 639
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    const/4 v2, 0x1

    .line 642
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 646
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsShowing:Z

    .line 647
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsDropdown:Z

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 649
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 650
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/holoeverywhere/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 651
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    .line 652
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 654
    :cond_2
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    .line 655
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 657
    :cond_3
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 658
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsShowing:Z

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mIsDropdown:Z

    .line 668
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 669
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 670
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 671
    if-nez p2, :cond_2

    .line 672
    const/16 p2, 0x33

    .line 674
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 675
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 676
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 677
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    .line 678
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 680
    :cond_3
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    .line 681
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 683
    :cond_4
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/holoeverywhere/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 688
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 704
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 709
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 710
    .local v3, "update":Z
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 711
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 712
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 713
    const/4 v3, 0x1

    .line 715
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 716
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 717
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 718
    const/4 v3, 0x1

    .line 720
    :cond_3
    if-eqz v3, :cond_0

    .line 721
    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 728
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/PopupWindow;->update(IIIIZ)V

    .line 729
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 732
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/PopupWindow;->update(IIIIZ)V

    .line 733
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 736
    if-eq p3, v7, :cond_0

    .line 737
    iput p3, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    .line 738
    invoke-virtual {p0, p3}, Lorg/holoeverywhere/widget/PopupWindow;->setWidth(I)V

    .line 740
    :cond_0
    if-eq p4, v7, :cond_1

    .line 741
    iput p4, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    .line 742
    invoke-virtual {p0, p4}, Lorg/holoeverywhere/widget/PopupWindow;->setHeight(I)V

    .line 744
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 780
    :cond_2
    :goto_0
    return-void

    .line 747
    :cond_3
    iget-object v6, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 748
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 749
    .local v5, "update":Z
    iget v6, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWidthMode:I

    .line 750
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 751
    iput v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 752
    const/4 v5, 0x1

    .line 754
    :cond_4
    iget v6, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mHeightMode:I

    .line 755
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 756
    iput v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 757
    const/4 v5, 0x1

    .line 759
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 760
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 761
    const/4 v5, 0x1

    .line 763
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 764
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 765
    const/4 v5, 0x1

    .line 767
    :cond_7
    invoke-direct {p0}, Lorg/holoeverywhere/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 768
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 769
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 770
    const/4 v5, 0x1

    .line 772
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lorg/holoeverywhere/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 773
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 774
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 775
    const/4 v5, 0x1

    .line 777
    :cond_9
    if-eqz v5, :cond_2

    .line 778
    iget-object v6, p0, Lorg/holoeverywhere/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 749
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_a
    iget v1, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 754
    .restart local v1    # "finalWidth":I
    :cond_b
    iget v0, p0, Lorg/holoeverywhere/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 819
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/holoeverywhere/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 820
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 823
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/holoeverywhere/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 824
    return-void
.end method
