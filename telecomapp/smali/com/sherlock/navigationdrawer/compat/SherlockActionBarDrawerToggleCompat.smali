.class public Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;
.super Ljava/lang/Object;
.source "SherlockActionBarDrawerToggleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SherlockActionBarDrawerToggleCompat"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sherlock/navigationdrawer/R$attr;->homeAsUpIndicator:I

    aput v2, v0, v1

    sput-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;->THEME_ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    sget-object v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;->THEME_ATTRS:[I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 90
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-object v1
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 7
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :cond_0
    move-object v2, p0

    .line 75
    check-cast v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;

    .line 76
    .local v2, "sii":Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 78
    :try_start_0
    check-cast p1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    :cond_1
    :goto_0
    return-object p0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SherlockActionBarDrawerToggleCompat"

    const-string v4, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 7
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    new-instance p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;

    .end local p0    # "info":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :cond_0
    move-object v2, p0

    .line 53
    check-cast v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;

    .line 54
    .local v2, "sii":Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 56
    :try_start_0
    check-cast p1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    :goto_0
    return-object p0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SherlockActionBarDrawerToggleCompat"

    const-string v4, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, v2, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v3, "SherlockActionBarDrawerToggleCompat"

    const-string v4, "Couldn\'t set home-as-up indicator"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
