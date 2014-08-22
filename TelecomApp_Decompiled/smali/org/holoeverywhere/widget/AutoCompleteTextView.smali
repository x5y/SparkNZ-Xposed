.class public Lorg/holoeverywhere/widget/AutoCompleteTextView;
.super Lorg/holoeverywhere/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/AutoCompleteTextView$1;,
        Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;,
        Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;,
        Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;,
        Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;
    }
.end annotation


# static fields
.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Lorg/holoeverywhere/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    sget v0, Lorg/holoeverywhere/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 109
    iput v6, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 117
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 121
    iput-object v7, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    .line 134
    new-instance v3, Lorg/holoeverywhere/widget/ListPopupWindow;

    sget v4, Lorg/holoeverywhere/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {v3, p1, p2, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    .line 136
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 137
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v3, v5}, Lorg/holoeverywhere/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 138
    sget-object v3, Lorg/holoeverywhere/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mThreshold:I

    .line 143
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 147
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 151
    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 154
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setWidth(I)V

    .line 157
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setHeight(I)V

    .line 160
    const/4 v3, 0x2

    sget v4, Lorg/holoeverywhere/R$layout;->simple_dropdown_hint:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintResource:I

    .line 163
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    new-instance v4, Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v4, p0, v7}, Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getInputType()I

    move-result v2

    .line 167
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    if-ne v3, v5, :cond_0

    .line 168
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    .line 169
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 171
    :cond_0
    const/4 v1, 0x0

    .line 172
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 178
    new-instance v3, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v3, p0, v7}, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    new-instance v3, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v3, p0, v7}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V

    iput-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPassThroughClickListener:Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 180
    iget-object v3, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPassThroughClickListener:Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v3}, Lorg/holoeverywhere/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->onLoadEntries([Ljava/lang/CharSequence;)V

    .line 184
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/AutoCompleteTextView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 187
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 188
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 192
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 193
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 194
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 195
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 196
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 198
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 199
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v8

    .line 201
    add-int/lit8 v8, v8, 0x1

    .line 195
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-eq v8, v2, :cond_2

    .line 205
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 206
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    move-object v1, v9

    .line 210
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 213
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 359
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 500
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    if-gez p2, :cond_1

    .line 503
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 507
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 508
    const-string v0, "AutoCompleteTextView"

    const-string v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 512
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 513
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 515
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 516
    iget-object v6, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    .line 517
    .local v6, "list":Lorg/holoeverywhere/widget/ListPopupWindow;
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 518
    :cond_3
    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 519
    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 520
    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 522
    :cond_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Lorg/holoeverywhere/widget/ListPopupWindow;->getListView()Lorg/holoeverywhere/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 526
    .end local v6    # "list":Lorg/holoeverywhere/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_5
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 711
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 712
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 713
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 716
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 718
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->clearListSelection()V

    .line 217
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->dismiss()V

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 231
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 243
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 249
    :cond_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 267
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 269
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->showDropDown()V

    .line 273
    :cond_1
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getInputMethodMode()I

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

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->performItemClick(I)Z

    .line 366
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 371
    invoke-super {p0}, Lorg/holoeverywhere/widget/EditText;->onDetachedFromWindow()V

    .line 372
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 376
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/EditText;->onDisplayHint(I)V

    .line 377
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 389
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 394
    invoke-super {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 395
    if-nez p1, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performValidation()V

    .line 398
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 401
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0xb

    const/4 v0, 0x1

    .line 406
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Lorg/holoeverywhere/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 417
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    :cond_3
    iput p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 422
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 423
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 424
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->clearListSelection()V

    goto :goto_0

    .line 412
    .end local v0    # "handled":Z
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    :cond_4
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_1

    .line 410
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 433
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 434
    const/4 v1, 0x0

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 438
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 440
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 441
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 445
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 446
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 447
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 450
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 451
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 456
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x1

    .line 462
    iget-object v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Lorg/holoeverywhere/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 463
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 464
    sparse-switch p1, :sswitch_data_0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 476
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performCompletion()V

    .line 479
    :cond_2
    :goto_0
    return v1

    .line 468
    :sswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    :cond_3
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performCompletion()V

    goto :goto_0

    .line 479
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLoadEntries([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 483
    new-instance v0, Lorg/holoeverywhere/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$layout;->simple_dropdown_item_1line:I

    invoke-direct {v0, v1, v2, p1}, Lorg/holoeverywhere/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 485
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 489
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/EditText;->onWindowFocusChanged(Z)V

    .line 490
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 493
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 496
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 497
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 533
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 540
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 546
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->clearComposingText()V

    .line 547
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 549
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 550
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mObserver:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 554
    new-instance v0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mObserver:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 558
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 559
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 561
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mObserver:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 565
    :goto_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mObserver:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 563
    :cond_2
    iput-object v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 569
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 570
    if-eqz p1, :cond_1

    .line 571
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintView:Lorg/holoeverywhere/widget/TextView;

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintResource:I

    invoke-static {v1, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/TextView;

    .line 575
    .local v0, "hintView":Lorg/holoeverywhere/widget/TextView;
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iput-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintView:Lorg/holoeverywhere/widget/TextView;

    .line 577
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 585
    .end local v0    # "hintView":Lorg/holoeverywhere/widget/TextView;
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 583
    iput-object v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mHintView:Lorg/holoeverywhere/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 589
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 592
    iput p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 593
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 594
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 598
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 601
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 610
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 611
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setHeight(I)V

    .line 615
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 619
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 623
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setWidth(I)V

    .line 627
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 630
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 631
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 636
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->showDropDown()V

    .line 639
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setSelection(I)V

    .line 644
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 648
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPassThroughClickListener:Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;

    # setter for: Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->access$802(Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 649
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 652
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 653
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 656
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 657
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 660
    if-eqz p2, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 664
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 670
    if-gtz p1, :cond_0

    .line 671
    const/4 p1, 0x1

    .line 674
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mThreshold:I

    .line 675
    return-void
.end method

.method public setValidator(Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 678
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mValidator:Lorg/holoeverywhere/widget/AutoCompleteTextView$Validator;

    .line 679
    return-void
.end method

.method public showDropDown()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 684
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    iget v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 686
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 692
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 694
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 696
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 698
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->getListView()Lorg/holoeverywhere/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setOverScrollMode(I)V

    .line 700
    :cond_2
    return-void

    .line 689
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->postShow()V

    .line 704
    return-void
.end method
