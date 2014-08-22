.class public Lorg/holoeverywhere/internal/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/internal/AlertController$ButtonHandler;,
        Lorg/holoeverywhere/internal/AlertController$AlertParams;,
        Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mButtonBehavior:I

.field private mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Lorg/holoeverywhere/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Lorg/holoeverywhere/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Lorg/holoeverywhere/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDecorViewInstaller:Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Lorg/holoeverywhere/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Lorg/holoeverywhere/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Lorg/holoeverywhere/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/internal/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "decorViewInstaller"    # Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;

    .prologue
    const/4 v2, -0x1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v1, 0x7

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonBehavior:I

    .line 319
    new-instance v1, Lorg/holoeverywhere/internal/AlertController$1;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/internal/AlertController$1;-><init>(Lorg/holoeverywhere/internal/AlertController;)V

    iput-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 373
    iput v2, p0, Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I

    .line 381
    iput v2, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    .line 397
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingSpecified:Z

    .line 407
    iput-object p4, p0, Lorg/holoeverywhere/internal/AlertController;->mDecorViewInstaller:Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;

    .line 408
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mContext:Landroid/content/Context;

    .line 409
    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 410
    iput-object p3, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    .line 411
    new-instance v1, Lorg/holoeverywhere/internal/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lorg/holoeverywhere/internal/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mHandler:Landroid/os/Handler;

    .line 412
    const/4 v1, 0x0

    sget-object v2, Lorg/holoeverywhere/R$styleable;->AlertDialog:[I

    sget v3, Lorg/holoeverywhere/R$attr;->alertDialogStyle:I

    sget v4, Lorg/holoeverywhere/R$style;->Holo_AlertDialog:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 415
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    sget v2, Lorg/holoeverywhere/R$layout;->alert_dialog_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mAlertDialogLayout:I

    .line 417
    const/16 v1, 0xc

    sget v2, Lorg/holoeverywhere/R$layout;->select_dialog_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mListLayout:I

    .line 419
    const/16 v1, 0xd

    sget v2, Lorg/holoeverywhere/R$layout;->select_dialog_multichoice_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mMultiChoiceItemLayout:I

    .line 422
    const/16 v1, 0xf

    sget v2, Lorg/holoeverywhere/R$layout;->select_dialog_singlechoice_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mSingleChoiceItemLayout:I

    .line 425
    const/16 v1, 0xb

    sget v2, Lorg/holoeverywhere/R$layout;->select_dialog_item_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/internal/AlertController;->mListItemLayout:I

    .line 428
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 429
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/internal/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/internal/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1000(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/internal/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/internal/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$402(Lorg/holoeverywhere/internal/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$502(Lorg/holoeverywhere/internal/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$600(Lorg/holoeverywhere/internal/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$702(Lorg/holoeverywhere/internal/AlertController;Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;
    .param p1, "x1"    # Lorg/holoeverywhere/widget/ListView;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    return-object p1
.end method

.method static synthetic access$800(Lorg/holoeverywhere/internal/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonBehavior:I

    return v0
.end method

.method static synthetic access$900(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    :goto_0
    return v2

    .line 294
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 295
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 297
    check-cast v1, Landroid/view/ViewGroup;

    .line 298
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 299
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 300
    add-int/lit8 v0, v0, -0x1

    .line 301
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 302
    invoke-static {p0}, Lorg/holoeverywhere/internal/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 306
    goto :goto_0
.end method

.method private centerButton(Lorg/holoeverywhere/widget/Button;)V
    .locals 6
    .param p1, "button"    # Lorg/holoeverywhere/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 432
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 434
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 435
    const/high16 v3, 0x3f000000

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 436
    invoke-virtual {p1, v1}, Lorg/holoeverywhere/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v3, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lorg/holoeverywhere/R$id;->leftSpacer:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lorg/holoeverywhere/R$id;->rightSpacer:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 443
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_1
    return-void
.end method

.method private setBackground(Lorg/holoeverywhere/widget/LinearLayout;Lorg/holoeverywhere/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .param p1, "topPanel"    # Lorg/holoeverywhere/widget/LinearLayout;
    .param p2, "contentPanel"    # Lorg/holoeverywhere/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 490
    const/16 v19, 0x7

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_full_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 492
    .local v9, "fullDark":I
    const/16 v19, 0x11

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_top_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 494
    .local v16, "topDark":I
    const/16 v19, 0x4

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_middle_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 496
    .local v7, "centerDark":I
    const/16 v19, 0x1

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_bottom_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 498
    .local v4, "bottomDark":I
    const/16 v19, 0x6

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_full_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 500
    .local v8, "fullBright":I
    const/16 v19, 0x10

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_top_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 502
    .local v15, "topBright":I
    const/16 v19, 0x3

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_middle_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 505
    .local v6, "centerBright":I
    const/16 v19, 0x0

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_bottom_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 508
    .local v3, "bottomBright":I
    const/16 v19, 0x2

    sget v20, Lorg/holoeverywhere/R$drawable;->dialog_bottom_holo_dark:I

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 511
    .local v5, "bottomMedium":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 512
    .local v18, "views":[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 513
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 514
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 516
    .local v10, "lastLight":Z
    const/4 v13, 0x0

    .line 517
    .local v13, "pos":I
    if-eqz p6, :cond_0

    .line 518
    aput-object p1, v18, v13

    .line 519
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 520
    add-int/lit8 v13, v13, 0x1

    .line 522
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/holoeverywhere/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Lorg/holoeverywhere/widget/LinearLayout;
    :cond_1
    aput-object p2, v18, v13

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 525
    add-int/lit8 v13, v13, 0x1

    .line 526
    if-eqz p3, :cond_2

    .line 527
    aput-object p3, v18, v13

    .line 528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/internal/AlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 529
    add-int/lit8 v13, v13, 0x1

    .line 531
    :cond_2
    if-eqz p4, :cond_3

    .line 532
    aput-object p7, v18, v13

    .line 533
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 535
    :cond_3
    const/4 v14, 0x0

    .line 536
    .local v14, "setView":Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 537
    aget-object v17, v18, v13

    .line 538
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_5

    .line 536
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 524
    .end local v14    # "setView":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 541
    .restart local v14    # "setView":Z
    .restart local v17    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 542
    if-nez v14, :cond_8

    .line 543
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 549
    :goto_4
    const/4 v14, 0x1

    .line 551
    :cond_6
    move-object/from16 v11, v17

    .line 552
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 543
    goto :goto_3

    .line 546
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 554
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 555
    if-eqz v14, :cond_f

    .line 556
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 564
    .end local v8    # "fullBright":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/holoeverywhere/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/holoeverywhere/widget/ListView;->setItemChecked(IZ)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/holoeverywhere/widget/ListView;->setSelection(I)V

    .line 571
    :cond_c
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v8    # "fullBright":I
    :cond_d
    move v5, v3

    .line 556
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 560
    :cond_f
    if-eqz v10, :cond_10

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8    # "fullBright":I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 641
    const/4 v2, 0x1

    .line 642
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 643
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 644
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 645
    .local v3, "whichButtons":I
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lorg/holoeverywhere/R$id;->button1:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/widget/Button;

    iput-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    .line 646
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v7}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 654
    :goto_0
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lorg/holoeverywhere/R$id;->button2:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/widget/Button;

    iput-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    .line 655
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v7}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 664
    :goto_1
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lorg/holoeverywhere/R$id;->button3:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/widget/Button;

    iput-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    .line 665
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v7}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 674
    :goto_2
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/holoeverywhere/internal/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 675
    if-ne v3, v2, :cond_4

    .line 676
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/internal/AlertController;->centerButton(Lorg/holoeverywhere/widget/Button;)V

    .line 683
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 650
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v5}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 652
    or-int/2addr v3, v2

    goto :goto_0

    .line 659
    :cond_2
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v5}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 662
    or-int/2addr v3, v0

    goto :goto_1

    .line 669
    :cond_3
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lorg/holoeverywhere/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v4, v5}, Lorg/holoeverywhere/widget/Button;->setVisibility(I)V

    .line 672
    or-int/2addr v3, v1

    goto :goto_2

    .line 677
    :cond_4
    if-ne v3, v0, :cond_5

    .line 678
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/internal/AlertController;->centerButton(Lorg/holoeverywhere/widget/Button;)V

    goto :goto_3

    .line 679
    :cond_5
    if-ne v3, v1, :cond_0

    .line 680
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/internal/AlertController;->centerButton(Lorg/holoeverywhere/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 683
    goto :goto_4
.end method

.method private setupContent(Lorg/holoeverywhere/widget/LinearLayout;)V
    .locals 5
    .param p1, "contentPanel"    # Lorg/holoeverywhere/widget/LinearLayout;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 687
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lorg/holoeverywhere/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 688
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 689
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lorg/holoeverywhere/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/TextView;

    iput-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    .line 690
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 698
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lorg/holoeverywhere/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 700
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual {p1, v4}, Lorg/holoeverywhere/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Lorg/holoeverywhere/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Lorg/holoeverywhere/widget/LinearLayout;

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 713
    const/4 v1, 0x1

    .line 714
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 715
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 719
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lorg/holoeverywhere/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 721
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 723
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 724
    .local v0, "hasTextTitle":Z
    :cond_2
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lorg/holoeverywhere/R$id;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 725
    if-eqz v0, :cond_5

    .line 726
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lorg/holoeverywhere/R$id;->alertTitle:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/widget/TextView;

    iput-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    .line 727
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    iget-object v5, p0, Lorg/holoeverywhere/internal/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 729
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 731
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/holoeverywhere/internal/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 732
    :cond_4
    iget v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 733
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    iget-object v5, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/holoeverywhere/widget/TextView;->setPadding(IIII)V

    .line 737
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 740
    :cond_5
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lorg/holoeverywhere/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 741
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    invoke-virtual {p1, v9}, Lorg/holoeverywhere/widget/LinearLayout;->setVisibility(I)V

    .line 744
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 751
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->contentPanel:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/LinearLayout;

    .line 752
    .local v2, "contentPanel":Lorg/holoeverywhere/widget/LinearLayout;
    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController;->setupContent(Lorg/holoeverywhere/widget/LinearLayout;)V

    .line 753
    invoke-direct {p0}, Lorg/holoeverywhere/internal/AlertController;->setupButtons()Z

    move-result v4

    .line 754
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->topPanel:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/LinearLayout;

    .line 755
    .local v1, "topPanel":Lorg/holoeverywhere/widget/LinearLayout;
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lorg/holoeverywhere/R$styleable;->AlertDialog:[I

    sget v12, Lorg/holoeverywhere/R$attr;->alertDialogStyle:I

    sget v13, Lorg/holoeverywhere/R$style;->Holo_AlertDialog:I

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 757
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lorg/holoeverywhere/internal/AlertController;->setupTitle(Lorg/holoeverywhere/widget/LinearLayout;)Z

    move-result v6

    .line 758
    .local v6, "hasTitle":Z
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->buttonPanel:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 759
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    .line 760
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :cond_0
    const/4 v3, 0x0

    .line 764
    .local v3, "customPanel":Lorg/holoeverywhere/widget/FrameLayout;
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 765
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->customPanel:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Lorg/holoeverywhere/widget/FrameLayout;
    check-cast v3, Lorg/holoeverywhere/widget/FrameLayout;

    .line 766
    .restart local v3    # "customPanel":Lorg/holoeverywhere/widget/FrameLayout;
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->custom:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lorg/holoeverywhere/widget/FrameLayout;

    .line 767
    .local v8, "custom":Lorg/holoeverywhere/widget/FrameLayout;
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Lorg/holoeverywhere/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 770
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingLeft:I

    iget v10, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingTop:I

    iget v11, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingRight:I

    iget v12, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Lorg/holoeverywhere/widget/FrameLayout;->setPadding(IIII)V

    .line 773
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    if-eqz v0, :cond_2

    .line 774
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 780
    .end local v8    # "custom":Lorg/holoeverywhere/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 781
    const/4 v9, 0x0

    .line 782
    .local v9, "divider":Landroid/view/View;
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    if-eqz v0, :cond_6

    .line 783
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->titleDivider:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 788
    :goto_1
    if-eqz v9, :cond_4

    .line 789
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9    # "divider":Landroid/view/View;
    :cond_4
    move-object v0, p0

    .line 792
    invoke-direct/range {v0 .. v7}, Lorg/holoeverywhere/internal/AlertController;->setBackground(Lorg/holoeverywhere/widget/LinearLayout;Lorg/holoeverywhere/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 794
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 795
    return-void

    .line 777
    :cond_5
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->customPanel:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 785
    .restart local v9    # "divider":Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lorg/holoeverywhere/R$id;->titleDividerTop:I

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 310
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 311
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lorg/holoeverywhere/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 313
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Lorg/holoeverywhere/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Lorg/holoeverywhere/widget/ListView;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 465
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 466
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lorg/holoeverywhere/internal/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mDecorViewInstaller:Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/internal/AlertController;->mAlertDialogLayout:I

    invoke-static {v1, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 476
    :goto_0
    invoke-direct {p0}, Lorg/holoeverywhere/internal/AlertController;->setupView()V

    .line 477
    return-void

    .line 474
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mDecorViewInstaller:Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/holoeverywhere/internal/AlertController;->mAlertDialogLayout:I

    invoke-interface {v0, v1, v2}, Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;->installDecorView(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 480
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 484
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 575
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 576
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 578
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :pswitch_0
    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 581
    iput-object p4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 594
    :goto_0
    return-void

    .line 584
    :pswitch_1
    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 585
    iput-object p4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 588
    :pswitch_2
    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 589
    iput-object p4, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonBehavior(I)V
    .locals 0
    .param p1, "buttonBehavior"    # I

    .prologue
    .line 597
    iput p1, p0, Lorg/holoeverywhere/internal/AlertController;->mButtonBehavior:I

    .line 598
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 601
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 602
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 612
    iput p1, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    .line 613
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 614
    if-lez p1, :cond_1

    .line 615
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/holoeverywhere/internal/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    if-nez p1, :cond_0

    .line 617
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 605
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 606
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 623
    iput-boolean p1, p0, Lorg/holoeverywhere/internal/AlertController;->mForceInverseBackground:Z

    .line 624
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 627
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 628
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mMessageView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 634
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 635
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 798
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingSpecified:Z

    .line 800
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 804
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController;->mView:Landroid/view/View;

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingSpecified:Z

    .line 806
    iput p2, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingLeft:I

    .line 807
    iput p3, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingTop:I

    .line 808
    iput p4, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingRight:I

    .line 809
    iput p5, p0, Lorg/holoeverywhere/internal/AlertController;->mViewSpacingBottom:I

    .line 810
    return-void
.end method
