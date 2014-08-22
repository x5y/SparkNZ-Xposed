.class public Lorg/holoeverywhere/internal/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/internal/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mButtonBehavior:I

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Lorg/holoeverywhere/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTheme:I

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/internal/AlertController$AlertParams;-><init>(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x7

    iput v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 62
    iput v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIconId:I

    .line 89
    iput-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 97
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 98
    iput p2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTheme:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCancelable:Z

    .line 100
    invoke-static {p1}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 101
    return-void
.end method

.method private createListView(Lorg/holoeverywhere/internal/AlertController;)V
    .locals 14
    .param p1, "dialog"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    .line 150
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mListLayout:I
    invoke-static {p1}, Lorg/holoeverywhere/internal/AlertController;->access$000(Lorg/holoeverywhere/internal/AlertController;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/holoeverywhere/widget/ListView;

    .line 153
    .local v6, "listView":Lorg/holoeverywhere/widget/ListView;
    iget-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 154
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 155
    new-instance v0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lorg/holoeverywhere/internal/AlertController;->access$100(Lorg/holoeverywhere/internal/AlertController;)I

    move-result v3

    const v4, 0x1020014

    iget-object v5, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;-><init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lorg/holoeverywhere/widget/ListView;)V

    .line 222
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnPrepareListViewListener:Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnPrepareListViewListener:Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Lorg/holoeverywhere/widget/ListView;)V

    .line 225
    :cond_0
    # setter for: Lorg/holoeverywhere/internal/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->access$402(Lorg/holoeverywhere/internal/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 226
    iget v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    # setter for: Lorg/holoeverywhere/internal/AlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lorg/holoeverywhere/internal/AlertController;->access$502(Lorg/holoeverywhere/internal/AlertController;I)I

    .line 227
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 228
    new-instance v1, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;-><init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Lorg/holoeverywhere/internal/AlertController;)V

    invoke-virtual {v6, v1}, Lorg/holoeverywhere/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lorg/holoeverywhere/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 257
    :cond_2
    iget-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lorg/holoeverywhere/widget/ListView;->setChoiceMode(I)V

    .line 262
    :cond_3
    :goto_2
    # setter for: Lorg/holoeverywhere/internal/AlertController;->mListView:Lorg/holoeverywhere/widget/ListView;
    invoke-static {p1, v6}, Lorg/holoeverywhere/internal/AlertController;->access$702(Lorg/holoeverywhere/internal/AlertController;Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/ListView;

    .line 263
    return-void

    .line 172
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lorg/holoeverywhere/internal/AlertController$AlertParams$2;

    iget-object v3, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/holoeverywhere/internal/AlertController$AlertParams$2;-><init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/internal/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 205
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lorg/holoeverywhere/internal/AlertController;->access$200(Lorg/holoeverywhere/internal/AlertController;)I

    move-result v9

    .line 207
    .local v9, "layout":I
    :goto_3
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 208
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 205
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v9    # "layout":I
    :cond_6
    # getter for: Lorg/holoeverywhere/internal/AlertController;->mListItemLayout:I
    invoke-static {p1}, Lorg/holoeverywhere/internal/AlertController;->access$300(Lorg/holoeverywhere/internal/AlertController;)I

    move-result v9

    goto :goto_3

    .line 208
    .restart local v9    # "layout":I
    :cond_7
    new-instance v0, Lorg/holoeverywhere/widget/ArrayAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v2, 0x1020014

    iget-object v3, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/holoeverywhere/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 212
    :cond_8
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v8, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x1

    new-array v12, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v12, v1

    const/4 v13, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 239
    .end local v9    # "layout":I
    :cond_9
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;-><init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Lorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/internal/AlertController;)V

    invoke-virtual {v6, v1}, Lorg/holoeverywhere/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 259
    :cond_a
    iget-boolean v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 260
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lorg/holoeverywhere/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lorg/holoeverywhere/internal/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lorg/holoeverywhere/internal/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/holoeverywhere/internal/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 125
    const/4 v0, -0x2

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/holoeverywhere/internal/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 128
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 129
    const/4 v0, -0x3

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/holoeverywhere/internal/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 132
    :cond_4
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setButtonBehavior(I)V

    .line 133
    iget-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setInverseBackgroundForced(Z)V

    .line 136
    :cond_5
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 137
    :cond_6
    invoke-direct {p0, p1}, Lorg/holoeverywhere/internal/AlertController$AlertParams;->createListView(Lorg/holoeverywhere/internal/AlertController;)V

    .line 139
    :cond_7
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 140
    iget-boolean v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 141
    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/internal/AlertController;->setView(Landroid/view/View;IIII)V

    .line 147
    :cond_8
    :goto_1
    return-void

    .line 107
    :cond_9
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 108
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    :cond_a
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_b
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 114
    iget v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setIcon(I)V

    goto :goto_0

    .line 144
    :cond_c
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/internal/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
