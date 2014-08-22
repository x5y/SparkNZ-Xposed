.class public Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;
.super Lorg/holoeverywhere/widget/LinearLayout;
.source "HoloListMenuItemView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Lorg/holoeverywhere/LayoutInflater;

.field private mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Lorg/holoeverywhere/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Lorg/holoeverywhere/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v1, Lorg/holoeverywhere/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTextAppearance:I

    .line 47
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    .line 49
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method private getInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->getInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    sget v1, Lorg/holoeverywhere/R$layout;->list_menu_item_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->getInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    sget v1, Lorg/holoeverywhere/R$layout;->list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->addView(Landroid/view/View;I)V

    .line 88
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->getInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    sget v1, Lorg/holoeverywhere/R$layout;->list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 94
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 68
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setCheckable(Z)V

    .line 71
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setShortcut(ZC)V

    .line 72
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setEnabled(Z)V

    .line 74
    return-void

    .line 68
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lorg/holoeverywhere/widget/LinearLayout;->onFinishInflate()V

    .line 101
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget v0, Lorg/holoeverywhere/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/TextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    .line 103
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 107
    :cond_0
    sget v0, Lorg/holoeverywhere/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/TextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mShortcutView:Lorg/holoeverywhere/widget/TextView;

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 115
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 117
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 120
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/LinearLayout;->onMeasure(II)V

    .line 121
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v3, 0x8

    .line 130
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->insertRadioButton()V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 145
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 154
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 155
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 158
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 163
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 147
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 148
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->insertCheckBox()V

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 151
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 157
    goto :goto_2

    .line 168
    :cond_7
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    .line 169
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 171
    :cond_8
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 181
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->insertRadioButton()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 193
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    return-void

    .line 187
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->insertCheckBox()V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    .line 198
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 203
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 224
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 202
    goto :goto_0

    .line 207
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 212
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->insertIconView()V

    .line 215
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 216
    :cond_6
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 216
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 228
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 231
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mShortcutView:Lorg/holoeverywhere/widget/TextView;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mShortcutView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mShortcutView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 238
    :cond_1
    return-void

    .line 228
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 242
    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mTitleView:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
