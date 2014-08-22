.class public Lorg/holoeverywhere/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;,
        Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;,
        Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;,
        Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;,
        Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lorg/holoeverywhere/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    sget v1, Lorg/holoeverywhere/R$attr;->listPopupWindowStyle:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    sget v0, Lorg/holoeverywhere/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 150
    iput v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    .line 156
    iput v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    .line 157
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHideSelector:Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;

    .line 162
    const v0, 0x7fffffff

    iput v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 166
    iput v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptPosition:I

    .line 168
    new-instance v0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    .line 169
    new-instance v0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mScrollListener:Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTouchInterceptor:Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 187
    new-instance v0, Lorg/holoeverywhere/widget/PopupWindow;

    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    .line 188
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setInputMethodMode(I)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 193
    const/16 v17, 0x0

    .line 194
    .local v17, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 195
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 196
    .local v8, "context":Landroid/content/Context;
    new-instance v1, Lorg/holoeverywhere/widget/ListPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/holoeverywhere/widget/ListPopupWindow$1;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 205
    new-instance v3, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Lorg/holoeverywhere/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/holoeverywhere/widget/ListPopupWindow$2;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mScrollListener:Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 237
    .local v9, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 238
    .local v13, "hintView":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 239
    new-instance v11, Lorg/holoeverywhere/widget/LinearLayout;

    invoke-direct {v11, v8}, Lorg/holoeverywhere/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .local v11, "hintContainer":Lorg/holoeverywhere/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lorg/holoeverywhere/widget/LinearLayout;->setOrientation(I)V

    .line 242
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 244
    .local v12, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 254
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 260
    .local v20, "widthSpec":I
    const/4 v10, 0x0

    .line 261
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 262
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    .line 266
    move-object v9, v11

    .line 268
    .end local v10    # "heightSpec":I
    .end local v11    # "hintContainer":Lorg/holoeverywhere/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v1, v9}, Lorg/holoeverywhere/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 279
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 280
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 281
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v3

    .line 284
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 290
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v14, 0x1

    .line 291
    .local v14, "ignoreBottomDecorations":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v14}, Lorg/holoeverywhere/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v16

    .line 293
    .local v16, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 295
    :cond_5
    add-int v1, v16, v18

    .line 319
    :goto_5
    return v1

    .line 205
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "ignoreBottomDecorations":Z
    .end local v16    # "maxHeight":I
    .end local v18    # "padding":I
    .restart local v8    # "context":Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v11    # "hintContainer":Lorg/holoeverywhere/widget/LinearLayout;
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {v11, v13}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 250
    :pswitch_1
    invoke-virtual {v11, v13}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v11, v9, v12}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 270
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v11    # "hintContainer":Lorg/holoeverywhere/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 271
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 272
    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 273
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    goto/16 :goto_2

    .line 288
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 290
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 298
    .restart local v14    # "ignoreBottomDecorations":Z
    .restart local v16    # "maxHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 310
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 314
    .local v2, "childWidthSpec":I
    :goto_6
    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/holoeverywhere/widget/ListPopupWindow;->measureHeightOfChildren(IIIII)I

    move-result v15

    .line 316
    .local v15, "listContent":I
    if-lez v15, :cond_b

    .line 317
    add-int v17, v17, v18

    .line 319
    :cond_b
    add-int v1, v15, v17

    goto :goto_5

    .line 300
    .end local v2    # "childWidthSpec":I
    .end local v15    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 303
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 305
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 308
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 369
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 371
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 372
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 373
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 374
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 376
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 378
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 380
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 381
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 382
    .local v6, "returnedHeight":I
    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 383
    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 384
    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 386
    :cond_1
    return v6
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 456
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 457
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v6

    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 492
    :cond_0
    :goto_0
    return v4

    .line 460
    :cond_1
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v6

    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v7

    add-int v5, v6, v7

    .line 462
    .local v5, "returnedHeight":I
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v2

    .line 465
    .local v2, "dividerHeight":I
    :goto_1
    const/4 v4, 0x0

    .line 468
    .local v4, "prevHeightWithoutPartialChild":I
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 p3, v6, -0x1

    .line 469
    :cond_2
    move v3, p2

    .local v3, "i":I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 470
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v6, v3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 471
    .local v1, "child":Landroid/view/View;
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    iget-object v6, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 475
    :cond_3
    invoke-direct {p0, v1, v3, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->measureScrapChild(Landroid/view/View;II)V

    .line 476
    if-lez v3, :cond_4

    .line 477
    add-int/2addr v5, v2

    .line 479
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 480
    if-lt v5, p4, :cond_7

    .line 481
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v5, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 462
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "dividerHeight":I
    .end local v3    # "i":I
    .end local v4    # "prevHeightWithoutPartialChild":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 487
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "i":I
    .restart local v4    # "prevHeightWithoutPartialChild":I
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 489
    move v4, v5

    .line 469
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "child":Landroid/view/View;
    :cond_9
    move v4, v5

    .line 492
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 499
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 500
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 502
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_0
    iget-object v4, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 510
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 512
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 513
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 519
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 520
    return-void

    .line 516
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 654
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 656
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 657
    check-cast v0, Landroid/view/ViewGroup;

    .line 658
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 661
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 324
    .local v0, "list":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 325
    const/4 v1, 0x1

    # setter for: Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->access$802(Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 327
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 329
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->dismiss()V

    .line 333
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->removePromptView()V

    .line 334
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 335
    iput-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 336
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Lorg/holoeverywhere/widget/ListView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const-wide/high16 v0, -0x8000000000000000L

    .line 404
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const/4 v0, -0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0x13

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 523
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 524
    const/16 v8, 0x3e

    if-eq p1, v8, :cond_6

    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v8}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v8

    if-gez v8, :cond_0

    const/16 v8, 0x42

    if-eq p1, v8, :cond_6

    const/16 v8, 0x17

    if-eq p1, v8, :cond_6

    .line 527
    :cond_0
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v8}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    .line 529
    .local v3, "curIndex":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v8}, Lorg/holoeverywhere/widget/PopupWindow;->isAboveAnchor()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    .line 530
    .local v1, "below":Z
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 531
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v4, 0x7fffffff

    .line 532
    .local v4, "firstItem":I
    const/high16 v5, -0x80000000

    .line 533
    .local v5, "lastItem":I
    if-eqz v0, :cond_1

    .line 534
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 535
    const/4 v4, 0x0

    .line 536
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 545
    :cond_1
    if-eqz v1, :cond_2

    if-ne p1, v9, :cond_2

    if-le v3, v4, :cond_3

    :cond_2
    if-nez v1, :cond_5

    if-ne p1, v10, :cond_5

    if-lt v3, v5, :cond_5

    .line 549
    :cond_3
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->clearListSelection()V

    .line 550
    iget-object v7, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v7, v6}, Lorg/holoeverywhere/widget/PopupWindow;->setInputMethodMode(I)V

    .line 551
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 585
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "below":Z
    .end local v3    # "curIndex":I
    .end local v4    # "firstItem":I
    .end local v5    # "lastItem":I
    :goto_1
    :sswitch_0
    return v6

    .restart local v3    # "curIndex":I
    :cond_4
    move v1, v7

    .line 529
    goto :goto_0

    .line 554
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "below":Z
    .restart local v4    # "firstItem":I
    .restart local v5    # "lastItem":I
    :cond_5
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    # setter for: Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v7}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->access$802(Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 556
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v8, p1, p2}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 562
    .local v2, "consumed":Z
    if-eqz v2, :cond_7

    .line 563
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/holoeverywhere/widget/PopupWindow;->setInputMethodMode(I)V

    .line 564
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v8}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 565
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 566
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "below":Z
    .end local v2    # "consumed":Z
    .end local v3    # "curIndex":I
    .end local v4    # "firstItem":I
    .end local v5    # "lastItem":I
    :cond_6
    move v6, v7

    .line 585
    goto :goto_1

    .line 574
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "below":Z
    .restart local v2    # "consumed":Z
    .restart local v3    # "curIndex":I
    .restart local v4    # "firstItem":I
    .restart local v5    # "lastItem":I
    :cond_7
    if-eqz v1, :cond_8

    if-ne p1, v10, :cond_8

    .line 575
    if-ne v3, v5, :cond_6

    goto :goto_1

    .line 578
    :cond_8
    if-nez v1, :cond_6

    if-ne p1, v9, :cond_6

    if-ne v3, v4, :cond_6

    goto :goto_1

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 590
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v2

    .line 593
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 595
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 597
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 599
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 600
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v2, v3

    .line 602
    goto :goto_0

    .line 603
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 606
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_4

    .line 607
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 609
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->dismiss()V

    move v2, v3

    .line 611
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 619
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 620
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 621
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 622
    sparse-switch p1, :sswitch_data_0

    .line 631
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    .line 625
    .restart local v0    # "consumed":Z
    :sswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 631
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 635
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 638
    .local v1, "list":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 641
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 644
    .end local v1    # "list":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 646
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 651
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 664
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 665
    new-instance v0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 669
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 670
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 673
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 676
    :cond_2
    return-void

    .line 666
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 679
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 680
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setAnimationStyle(I)V

    .line 684
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 687
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 691
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 692
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 693
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 694
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 701
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 702
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 706
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 709
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    .line 710
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 713
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 714
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setInputMethodMode(I)V

    .line 718
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 721
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 722
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 725
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 726
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mModal:Z

    .line 730
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setFocusable(Z)V

    .line 731
    return-void
.end method

.method public setOnDismissListener(Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 734
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setOnDismissListener(Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;)V

    .line 735
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 739
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 740
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 744
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 745
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 748
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptPosition:I

    .line 749
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 752
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 753
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->removePromptView()V

    .line 756
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 757
    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 760
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 763
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    .line 764
    .local v0, "list":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 765
    const/4 v1, 0x0

    # setter for: Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->access$802(Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 766
    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 767
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 771
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/PopupWindow;->setSoftInputMode(I)V

    .line 775
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 778
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 780
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 783
    iput p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    .line 784
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 787
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 788
    .local v6, "height":I
    const/4 v4, 0x0

    .line 789
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 790
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 791
    .local v7, "noInputMethod":Z
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lorg/holoeverywhere/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 792
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 793
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    .line 794
    const/4 v4, -0x1

    .line 800
    :goto_1
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    .line 801
    if-eqz v7, :cond_4

    move v5, v6

    .line 803
    :goto_2
    if-eqz v7, :cond_6

    .line 804
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lorg/holoeverywhere/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 817
    :goto_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget-boolean v3, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 819
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 855
    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    .line 791
    goto :goto_0

    .line 795
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    .line 796
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    .line 798
    :cond_3
    iget v4, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    .line 801
    goto :goto_2

    :cond_5
    move v0, v2

    .line 804
    goto :goto_3

    .line 808
    :cond_6
    iget-object v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lorg/holoeverywhere/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    .line 812
    :cond_8
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 813
    move v5, v6

    goto :goto_4

    .line 815
    :cond_9
    iget v5, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    .line 817
    goto :goto_5

    .line 822
    :cond_b
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    .line 823
    const/4 v4, -0x1

    .line 831
    :goto_8
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    .line 832
    const/4 v5, -0x1

    .line 840
    :goto_9
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 841
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 842
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget-boolean v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 844
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mTouchInterceptor:Lorg/holoeverywhere/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 845
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lorg/holoeverywhere/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 847
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 848
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 849
    :cond_c
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->clearListSelection()V

    .line 851
    :cond_d
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mHideSelector:Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 825
    :cond_e
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    .line 826
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/holoeverywhere/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 828
    :cond_f
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lorg/holoeverywhere/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 834
    :cond_10
    iget v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    .line 835
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v0, v6}, Lorg/holoeverywhere/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    .line 837
    :cond_11
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;

    iget v8, p0, Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lorg/holoeverywhere/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_12
    move v1, v2

    .line 842
    goto :goto_a
.end method
