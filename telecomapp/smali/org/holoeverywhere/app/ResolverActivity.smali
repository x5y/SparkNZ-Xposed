.class public abstract Lorg/holoeverywhere/app/ResolverActivity;
.super Lorg/holoeverywhere/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;,
        Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;,
        Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final PER_USER_RANGE:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Lorg/holoeverywhere/widget/Button;

.field private mAlwaysUseOption:Z

.field private mGrid:Lorg/holoeverywhere/widget/GridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mOnceButton:Lorg/holoeverywhere/widget/Button;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/holoeverywhere/app/AlertActivity;-><init>()V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/app/ResolverActivity;)Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$102(Lorg/holoeverywhere/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$200(Lorg/holoeverywhere/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;

    .prologue
    .line 45
    iget v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/holoeverywhere/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method public static final getAppId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 311
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method private getLauncherLargeIconDensity(Landroid/app/ActivityManager;)I
    .locals 8
    .param p1, "am"    # Landroid/app/ActivityManager;

    .prologue
    const/16 v5, 0x140

    .line 390
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 393
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 394
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 395
    .local v1, "density":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 397
    .local v0, "conf":Landroid/content/res/Configuration;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_2

    .line 398
    iget v4, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 403
    .local v4, "sw":I
    :goto_1
    const/16 v6, 0x258

    if-lt v4, v6, :cond_0

    .line 406
    sparse-switch v1, :sswitch_data_0

    .line 420
    int-to-float v5, v1

    const/high16 v6, 0x3fc00000

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v1, v5

    goto :goto_0

    .line 400
    .end local v4    # "sw":I
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 401
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .restart local v4    # "sw":I
    goto :goto_1

    .line 408
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :sswitch_0
    const/16 v1, 0xa0

    goto :goto_0

    .line 410
    :sswitch_1
    const/16 v1, 0xf0

    goto :goto_0

    :sswitch_2
    move v1, v5

    .line 412
    goto :goto_0

    :sswitch_3
    move v1, v5

    .line 414
    goto :goto_0

    .line 416
    :sswitch_4
    const/16 v1, 0x1e0

    goto :goto_0

    .line 418
    :sswitch_5
    const/16 v1, 0x280

    goto :goto_0

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method private getLauncherLargeIconSize(Landroid/app/ActivityManager;)I
    .locals 8
    .param p1, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 425
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 426
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    .line 456
    :cond_0
    :goto_0
    return v4

    .line 428
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 429
    .local v3, "res":Landroid/content/res/Resources;
    const/high16 v6, 0x1050000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 430
    .local v4, "size":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 432
    .local v0, "conf":Landroid/content/res/Configuration;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_2

    .line 433
    iget v5, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 438
    .local v5, "sw":I
    :goto_1
    const/16 v6, 0x258

    if-lt v5, v6, :cond_0

    .line 441
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 442
    .local v1, "density":I
    sparse-switch v1, :sswitch_data_0

    .line 456
    int-to-float v6, v4

    const/high16 v7, 0x3fc00000

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000

    add-float/2addr v6, v7

    float-to-int v4, v6

    goto :goto_0

    .line 435
    .end local v1    # "density":I
    .end local v5    # "sw":I
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 436
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .restart local v5    # "sw":I
    goto :goto_1

    .line 444
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "density":I
    :sswitch_0
    mul-int/lit16 v6, v4, 0xa0

    div-int/lit8 v4, v6, 0x78

    goto :goto_0

    .line 446
    :sswitch_1
    mul-int/lit16 v6, v4, 0xf0

    div-int/lit16 v4, v6, 0xa0

    goto :goto_0

    .line 448
    :sswitch_2
    mul-int/lit16 v6, v4, 0x140

    div-int/lit16 v4, v6, 0xf0

    goto :goto_0

    .line 450
    :sswitch_3
    mul-int/lit16 v6, v4, 0x140

    div-int/lit16 v4, v6, 0xf0

    goto :goto_0

    .line 452
    :sswitch_4
    mul-int/lit16 v6, v4, 0x1e0

    div-int/lit16 v4, v6, 0x140

    goto :goto_0

    .line 454
    :sswitch_5
    mul-int/lit16 v6, v4, 0x140

    mul-int/lit8 v6, v6, 0x2

    div-int/lit16 v4, v6, 0x1e0

    goto :goto_0

    .line 442
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isIsolated(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 315
    if-lez p0, :cond_0

    .line 316
    invoke-static {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getAppId(I)I

    move-result v0

    .line 317
    .local v0, "appId":I
    const v2, 0x182b8

    if-lt v0, v2, :cond_0

    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 319
    .end local v0    # "appId":I
    :cond_0
    return v1
.end method

.method public static final isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 324
    invoke-static {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Lorg/holoeverywhere/app/ResolverActivity;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 485
    return-object v0
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 351
    if-eqz p2, :cond_0

    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_2

    :cond_0
    move v0, v1

    .line 374
    :cond_1
    :goto_0
    return v0

    .line 354
    :cond_2
    invoke-static {p2}, Lorg/holoeverywhere/app/ResolverActivity;->isIsolated(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    if-ltz p3, :cond_3

    invoke-static {p2, p3}, Lorg/holoeverywhere/app/ResolverActivity;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 358
    goto :goto_0

    .line 360
    :cond_3
    if-nez p4, :cond_4

    .line 361
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: checkComponentPermission() owningUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_4
    if-nez p1, :cond_5

    move v0, v1

    .line 365
    goto :goto_0

    :cond_5
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 379
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 380
    iget v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    .line 382
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 463
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 464
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lorg/holoeverywhere/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 465
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 479
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 470
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 471
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/holoeverywhere/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 472
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 479
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 490
    .local v0, "id":I
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/GridView;->getCheckedItemPosition()I

    move-result v2

    sget v1, Lorg/holoeverywhere/R$id;->button_always:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lorg/holoeverywhere/app/ResolverActivity;->startSelected(IZ)V

    .line 491
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->dismiss()V

    .line 492
    return-void

    .line 490
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-direct {p0}, Lorg/holoeverywhere/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/holoeverywhere/R$string;->whichApplication:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/holoeverywhere/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 499
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 512
    move/from16 v0, p6

    iput-boolean v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 513
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$integer;->config_maxResolverActivityColumns:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mMaxColumns:I

    .line 514
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 515
    iget-object v9, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlertParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    .line 516
    .local v9, "ap":Lorg/holoeverywhere/internal/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v9, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 517
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 518
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-direct {p0, v8}, Lorg/holoeverywhere/app/ResolverActivity;->getLauncherLargeIconDensity(Landroid/app/ActivityManager;)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mIconDpi:I

    .line 519
    invoke-direct {p0, v8}, Lorg/holoeverywhere/app/ResolverActivity;->getLauncherLargeIconSize(Landroid/app/ActivityManager;)I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mIconSize:I

    .line 520
    new-instance v1, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    iget v7, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v2, p0

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;-><init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    .line 522
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v11

    .line 523
    .local v11, "count":I
    iget v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Lorg/holoeverywhere/app/ResolverActivity;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->finish()V

    .line 554
    :cond_1
    :goto_1
    return-void

    .line 507
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "ap":Lorg/holoeverywhere/internal/AlertController$AlertParams;
    .end local v11    # "count":I
    :catch_0
    move-exception v12

    .line 508
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 509
    const/4 v1, -0x1

    iput v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_0

    .line 526
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "ap":Lorg/holoeverywhere/internal/AlertController$AlertParams;
    .restart local v11    # "count":I
    :cond_2
    const/4 v1, 0x1

    if-le v11, v1, :cond_4

    .line 527
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$layout;->resolver_grid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 528
    iget-object v1, v9, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v2, Lorg/holoeverywhere/R$id;->resolver_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/GridView;

    iput-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    .line 529
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v1, p0}, Lorg/holoeverywhere/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    new-instance v2, Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;-><init>(Lorg/holoeverywhere/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 532
    if-eqz p6, :cond_3

    .line 533
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/GridView;->setChoiceMode(I)V

    .line 535
    :cond_3
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->resizeGrid()V

    .line 543
    :goto_2
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->setupAlert()V

    .line 544
    if-eqz p6, :cond_1

    .line 545
    sget v1, Lorg/holoeverywhere/R$id;->button_bar:I

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 546
    .local v10, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v10, :cond_6

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 548
    sget v1, Lorg/holoeverywhere/R$id;->button_always:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/Button;

    iput-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysButton:Lorg/holoeverywhere/widget/Button;

    .line 549
    sget v1, Lorg/holoeverywhere/R$id;->button_once:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/Button;

    iput-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mOnceButton:Lorg/holoeverywhere/widget/Button;

    goto :goto_1

    .line 536
    .end local v10    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_4
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 537
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 538
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->finish()V

    goto :goto_1

    .line 541
    :cond_5
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$string;->noApplications:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    .line 551
    .restart local v10    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_1
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 24
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 558
    if-eqz p3, :cond_b

    .line 559
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 564
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 565
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 566
    .local v7, "cat":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    .end local v7    # "cat":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    const/high16 v22, 0xfff0000

    and-int v7, v21, v22

    .line 571
    .local v7, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 572
    .local v9, "data":Landroid/net/Uri;
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_2

    .line 573
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 574
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 576
    :try_start_0
    invoke-virtual {v11, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 584
    const/high16 v21, 0x600000

    move/from16 v0, v21

    if-ne v7, v0, :cond_3

    const-string v21, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 587
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 589
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_5

    .line 590
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 591
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 592
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v21

    if-ltz v21, :cond_4

    .line 593
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v18

    .line 594
    .local v18, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    if-ltz v18, :cond_9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "port":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v16

    .line 601
    .local v16, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v16, :cond_7

    .line 602
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 603
    .local v17, "path":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 604
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 605
    .local v15, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 606
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 613
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v15    # "p":Landroid/os/PatternMatcher;
    .end local v16    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_b

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v21, v0

    # getter for: Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->access$500(Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    .line 615
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 616
    .local v20, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 617
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_a

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v21, v0

    # getter for: Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->access$500(Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    .line 619
    .local v19, "r":Landroid/content/pm/ResolveInfo;
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v20, v12

    .line 621
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v6, :cond_8

    .line 622
    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 617
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 577
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v19    # "r":Landroid/content/pm/ResolveInfo;
    .end local v20    # "set":[Landroid/content/ComponentName;
    .restart local v14    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 578
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v21, "ResolverActivity"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 594
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18    # "port":I
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 626
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v12    # "i":I
    .restart local v20    # "set":[Landroid/content/ComponentName;
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v7    # "cat":I
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "data":Landroid/net/Uri;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v20    # "set":[Landroid/content/ComponentName;
    :cond_b
    :goto_4
    if-eqz p2, :cond_c

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 636
    :cond_c
    return-void

    .line 628
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v7    # "cat":I
    .restart local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "data":Landroid/net/Uri;
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    .restart local v12    # "i":I
    .restart local v20    # "set":[Landroid/content/ComponentName;
    :catch_1
    move-exception v10

    .line 629
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 640
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 641
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    .line 642
    .local v1, "hasValidSelection":Z
    :goto_0
    iget-boolean v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_0

    iget v3, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_3

    .line 643
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysButton:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/Button;->setEnabled(Z)V

    .line 644
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mOnceButton:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/Button;->setEnabled(Z)V

    .line 645
    if-eqz v1, :cond_1

    .line 646
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/GridView;->smoothScrollToPosition(I)V

    .line 648
    :cond_1
    iput v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLastSelected:I

    .line 652
    :goto_1
    return-void

    .end local v1    # "hasValidSelection":Z
    :cond_2
    move v1, v2

    .line 641
    goto :goto_0

    .line 650
    .restart local v1    # "hasValidSelection":Z
    :cond_3
    invoke-virtual {p0, p3, v2}, Lorg/holoeverywhere/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertActivity;->onRestart()V

    .line 657
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 658
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 662
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 663
    iget-boolean v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 665
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 666
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lorg/holoeverywhere/app/ResolverActivity;->mLastSelected:I

    .line 667
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysButton:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/Button;->setEnabled(Z)V

    .line 668
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mOnceButton:Lorg/holoeverywhere/widget/Button;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/Button;->setEnabled(Z)V

    .line 669
    if-eqz v1, :cond_0

    .line 670
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/GridView;->setSelection(I)V

    .line 673
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 665
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertActivity;->onStop()V

    .line 678
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->finish()V

    .line 683
    :cond_0
    return-void
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 686
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 687
    .local v0, "itemCount":I
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/GridView;->setNumColumns(I)V

    .line 688
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 691
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 694
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 698
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 699
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 700
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lorg/holoeverywhere/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 701
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity;->finish()V

    .line 702
    return-void
.end method
