.class public Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;
.super Landroid/widget/BaseAdapter;
.source "AdapterMyUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllUsageMeters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mUsageMeterViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/widget/UsageMeterView;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private parentFA:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)V
    .locals 2
    .param p1, "parentFA"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "lineExtendedDTO"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mUsageMeterViewCache:Ljava/util/Map;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mViews:Landroid/util/SparseArray;

    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;

    .line 53
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getUsageMeterGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    .line 61
    :goto_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->orderUsageMeters()V

    .line 62
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getUsageMeterGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private buildView(ILandroid/view/ViewGroup;ZLandroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isForHeader"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;

    .line 158
    .local v3, "serverUsageMeter":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->getUsageType()Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "usageType":Ljava/lang/String;
    if-nez p4, :cond_1

    .line 162
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03005f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, "result":Landroid/view/View;
    new-instance v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;)V

    .line 165
    .local v9, "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;
    const v10, 0x7f09018e

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->button:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 166
    const v10, 0x7f09018d

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 167
    const v10, 0x7f09015f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    .line 169
    invoke-virtual {v2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    :goto_0
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->button:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v10, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->button:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v10, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    if-eqz p3, :cond_2

    .line 181
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :cond_0
    return-object v2

    .line 171
    .end local v2    # "result":Landroid/view/View;
    .end local v9    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;
    :cond_1
    move-object/from16 v2, p4

    .line 172
    .restart local v2    # "result":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;

    .restart local v9    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;
    goto :goto_0

    .line 186
    :cond_2
    const v10, 0x7f09015b

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 187
    .local v0, "detailsHeader":Landroid/view/ViewGroup;
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->getUsageMeters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 192
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;->getUsageMeters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 197
    .local v5, "usageMeter":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "usageMapKey":Ljava/lang/String;
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mUsageMeterViewCache:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/UsageMeterView;

    .line 200
    .local v7, "usageMeterViewCached":Lnz/co/telecom/smartphone/widget/UsageMeterView;
    const/4 v6, 0x0

    .line 205
    .local v6, "usageMeterView":Lnz/co/telecom/smartphone/widget/UsageMeterView;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_3

    .line 207
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    move-object v6, v7

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    new-instance v6, Lnz/co/telecom/smartphone/widget/UsageMeterView;

    .end local v6    # "usageMeterView":Lnz/co/telecom/smartphone/widget/UsageMeterView;
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10, v1}, Lnz/co/telecom/smartphone/widget/UsageMeterView;-><init>(Landroid/content/Context;I)V

    .line 213
    .restart local v6    # "usageMeterView":Lnz/co/telecom/smartphone/widget/UsageMeterView;
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mUsageMeterViewCache:Ljava/util/Map;

    invoke-interface {v10, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setTitle(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getUsageLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageLabel(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getPeriodEndLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setPeriodEndLabel(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getRemainingLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setRemainingLabel(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getLineAmountUsed()F

    move-result v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setSelfUsage(F)V

    .line 221
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getAmountUsed()F

    move-result v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setTotalUsage(F)V

    .line 223
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getSecondCap()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 224
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getCap()F

    move-result v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageSoftLimit(F)V

    .line 225
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getSecondCap()F

    move-result v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageHardLimit(F)V

    .line 231
    :goto_3
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getPeriodEnd()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setPeriodEnd(Ljava/util/Date;)V

    .line 233
    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->setUsageType(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6, v5}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->usageMeters:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->invalidate()V

    .line 239
    new-instance v10, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;

    invoke-direct {v10, p0}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)V

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 227
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageSoftLimit(F)V

    .line 228
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getCap()F

    move-result v10

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageHardLimit(F)V

    goto :goto_3
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 279
    :cond_0
    const/4 v2, 0x0

    .line 290
    :goto_0
    return-object v2

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 283
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 288
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method private orderUsageMeters()V
    .locals 4

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "tmpAllUsageMeters":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;>;"
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;

    .line 72
    .local v2, "usageMetre":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "usageMetre":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;
    :cond_0
    iput-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    int-to-long v0, p1

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->getItem(I)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mAllUsageMeters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isForHeader"    # Z

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 126
    .local v2, "result":Landroid/view/View;
    :try_start_0
    invoke-direct {p0, p1, p3, p4, p2}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->buildView(ILandroid/view/ViewGroup;ZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 128
    if-eqz p4, :cond_0

    .line 129
    invoke-direct {p0, p1, p3, p4, p2}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->buildView(ILandroid/view/ViewGroup;ZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 142
    .end local v2    # "result":Landroid/view/View;
    .local v3, "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 133
    .end local v3    # "result":Landroid/view/View;
    .restart local v2    # "result":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 134
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 135
    :cond_1
    invoke-direct {p0, p1, p3, p4, p2}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->buildView(ILandroid/view/ViewGroup;ZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 136
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v3, v2

    .line 142
    .end local v2    # "result":Landroid/view/View;
    .restart local v3    # "result":Landroid/view/View;
    goto :goto_0

    .line 138
    .end local v3    # "result":Landroid/view/View;
    .restart local v2    # "result":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lnz/co/telecom/smartphone/util/StackTraceLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f09018e

    const/4 v4, 0x4

    .line 91
    sget-object v1, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clicked in tracker adapter view.getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 94
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;

    instance-of v1, v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 96
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 97
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 100
    .end local v0    # "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method
