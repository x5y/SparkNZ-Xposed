.class Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplCompat;
.super Ljava/lang/Object;
.source "SherlockActionBarDrawerToggle.java"

# interfaces
.implements Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionBarDrawerToggleImplCompat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 80
    invoke-static {p1, p2, p3}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "themeImage"    # Landroid/graphics/drawable/Drawable;
    .param p4, "contentDescRes"    # I

    .prologue
    .line 74
    invoke-static {p1, p2, p3, p4}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggleCompat;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
