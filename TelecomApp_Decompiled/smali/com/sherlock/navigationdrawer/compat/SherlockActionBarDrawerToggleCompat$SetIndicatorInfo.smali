.class Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "SherlockActionBarDrawerToggleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    :try_start_0
    const-class v7, Lcom/actionbarsherlock/app/ActionBar;

    const-string v8, "setHomeAsUpIndicator"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/graphics/drawable/Drawable;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 103
    const-class v7, Lcom/actionbarsherlock/app/ActionBar;

    const-string v8, "setHomeActionContentDescription"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v7

    .line 112
    const v3, 0x102002c

    .line 113
    .local v3, "homeRes":I
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "home":Landroid/view/View;
    if-nez v2, :cond_1

    .line 116
    sget v7, Lcom/sherlock/navigationdrawer/R$id;->abs__home:I

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    sget v3, Lcom/sherlock/navigationdrawer/R$id;->abs__home:I

    .line 120
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 121
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 122
    .local v0, "childCount":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 127
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "first":Landroid/view/View;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 129
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x102002c

    if-ne v7, v8, :cond_2

    move-object v6, v5

    .line 131
    .local v6, "up":Landroid/view/View;
    :goto_1
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 133
    check-cast v6, Landroid/widget/ImageView;

    .end local v6    # "up":Landroid/view/View;
    iput-object v6, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    move-object v6, v1

    .line 129
    goto :goto_1
.end method
