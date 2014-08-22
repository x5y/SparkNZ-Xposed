.class public Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SherlockActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$1;,
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;,
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplHC;,
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplCompat;,
        Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;
    }
.end annotation


# static fields
.field private static final ID_HOME:I = 0x102002c

.field private static final IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Ljava/lang/Object;

.field private mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

.field private mThemeImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .local v0, "version":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 110
    new-instance v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplHC;

    invoke-direct {v1, v2}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>(Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$1;)V

    sput-object v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplCompat;

    invoke-direct {v1, v2}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImplCompat;-><init>(Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$1;)V

    sput-object v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "drawerImageRes"    # I
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 153
    iput-object p1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 154
    iput-object p2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 155
    iput p3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerImageResource:I

    .line 156
    iput p4, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 157
    iput p5, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 159
    sget-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    invoke-interface {v0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 161
    new-instance v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    .line 162
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffsetBy(F)V

    .line 163
    return-void
.end method


# virtual methods
.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 229
    sget-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerImageResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-virtual {p0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->syncState()V

    .line 232
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 299
    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    .line 303
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 283
    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    .line 287
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    const/high16 v3, 0x40000000

    const/high16 v2, 0x3f000000

    .line 264
    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->getOffset()F

    move-result v0

    .line 265
    .local v0, "glyphOffset":F
    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    .line 266
    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    invoke-virtual {v1, v0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 271
    return-void

    .line 268
    :cond_0
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 314
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const v2, 0x800003

    .line 244
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 251
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 200
    if-eqz p1, :cond_2

    .line 201
    sget-object v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x800003

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    .line 208
    :goto_1
    iput-boolean p1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 210
    :cond_0
    return-void

    .line 201
    :cond_1
    iget v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    .line 205
    :cond_2
    sget-object v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mThemeImage:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_1
.end method

.method public syncState()V
    .locals 6

    .prologue
    const v5, 0x800003

    .line 175
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    .line 181
    :goto_0
    iget-boolean v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    sget-object v1, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->IMPL:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;

    iget-object v2, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    :goto_1
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;

    .line 186
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mSlider:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle$SlideDrawable;->setOffset(F)V

    goto :goto_0

    .line 182
    :cond_2
    iget v0, p0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1
.end method
