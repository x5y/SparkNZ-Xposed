.class public Lnz/co/telecom/smartphone/adapter/AdapterMenuList;
.super Landroid/widget/BaseAdapter;
.source "AdapterMenuList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;
    }
.end annotation


# static fields
.field protected static dataServicesController:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field protected mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

.field protected mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

.field menu:[Ljava/lang/String;

.field protected myPassword:Ljava/lang/String;

.field private showAlertsNotifications:Z

.field private showPayBill:Z

.field private showViewActivities:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->dataServicesController:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->myPassword:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showAlertsNotifications:Z

    .line 35
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showPayBill:Z

    .line 36
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showViewActivities:Z

    .line 41
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->menu:[Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .line 45
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->myPassword:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->menu:[Ljava/lang/String;

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->menu:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lnz/co/telecom/smartphone/util/AndroidUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->menu:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->menu:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 69
    move-object v1, p2

    .line 70
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 71
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMenuList;)V

    .line 72
    .local v0, "holder":Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030040

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 74
    const v2, 0x7f090119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuCheckBox:Landroid/widget/CheckBox;

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 81
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 83
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v6, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextSize(IF)V

    .line 85
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 87
    iget-object v3, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_1
    return-object v1

    .line 77
    .end local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;

    .restart local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;
    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 96
    :pswitch_1
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 101
    :pswitch_2
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 106
    :pswitch_3
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showPayBill:Z

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto :goto_1

    .line 116
    :pswitch_4
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 121
    :pswitch_5
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showViewActivities:Z

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 127
    :cond_2
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 131
    :pswitch_6
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 135
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMenuList;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 151
    :pswitch_7
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 156
    :pswitch_8
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showAlertsNotifications:Z

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 162
    :cond_3
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 166
    :pswitch_9
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 171
    :pswitch_a
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 176
    :pswitch_b
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v6, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextSize(IF)V

    .line 178
    iget-object v2, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShowAlertsNotifications(Z)V
    .locals 0
    .param p1, "showAlertsNotifications"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showAlertsNotifications:Z

    .line 188
    return-void
.end method

.method public setShowPayBill(Z)V
    .locals 0
    .param p1, "showPayBill"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showPayBill:Z

    .line 192
    return-void
.end method

.method public setShowViewActivities(Z)V
    .locals 0
    .param p1, "showViewActivities"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->showViewActivities:Z

    .line 196
    return-void
.end method
