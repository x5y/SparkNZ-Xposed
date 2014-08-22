.class public abstract Lorg/holoeverywhere/app/Activity;
.super Landroid/support/v4/app/_HoloActivity;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/Activity$KeyEventAction;,
        Lorg/holoeverywhere/app/Activity$FindViewAction;,
        Lorg/holoeverywhere/app/Activity$Addons;
    }
.end annotation


# static fields
.field public static final ADDON_ROBOGUICE:Ljava/lang/String; = "Roboguice"

.field public static final ADDON_SHERLOCK:Ljava/lang/String; = "Sherlock"

.field public static final ADDON_SLIDER:Ljava/lang/String; = "Slider"

.field public static final ADDON_SLIDING_MENU:Ljava/lang/String; = "Slider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADDON_TABBER:Ljava/lang/String; = "Tabber"


# instance fields
.field private final mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/addon/IAddonBasicAttacher",
            "<",
            "Lorg/holoeverywhere/addon/IAddonActivity;",
            "Lorg/holoeverywhere/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedByThemeManager:Z

.field private final mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

.field private final mKeyEventAction:Lorg/holoeverywhere/app/Activity$KeyEventAction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/_HoloActivity;-><init>()V

    .line 78
    new-instance v0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/Activity;->mCreatedByThemeManager:Z

    .line 81
    new-instance v0, Lorg/holoeverywhere/app/Activity$FindViewAction;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/app/Activity$FindViewAction;-><init>(Lorg/holoeverywhere/app/Activity;Lorg/holoeverywhere/app/Activity$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/Activity;->mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

    .line 82
    new-instance v0, Lorg/holoeverywhere/app/Activity$KeyEventAction;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/app/Activity$KeyEventAction;-><init>(Lorg/holoeverywhere/app/Activity;Lorg/holoeverywhere/app/Activity$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/Activity;->mKeyEventAction:Lorg/holoeverywhere/app/Activity$KeyEventAction;

    return-void
.end method

.method static synthetic access$001(Lorg/holoeverywhere/app/Activity;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1001(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Menu;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Lorg/holoeverywhere/app/Activity;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1201(Lorg/holoeverywhere/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method static synthetic access$1301(Lorg/holoeverywhere/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method static synthetic access$301(Lorg/holoeverywhere/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method static synthetic access$701(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Menu;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Lorg/holoeverywhere/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onHomePressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Lorg/holoeverywhere/app/Activity;ILandroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MenuItem;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonActivity;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonActivity;

    return-object v0
.end method

.method public addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonActivity;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonActivity;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonActivity;

    return-object v0
.end method

.method public bridge synthetic addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonActivity;

    move-result-object v0

    return-object v0
.end method

.method public addon(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/util/Collection;)V

    .line 92
    return-void
.end method

.method public addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonActivity;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    return-object v0
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/holoeverywhere/app/Activity$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$1;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 116
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mKeyEventAction:Lorg/holoeverywhere/app/Activity$KeyEventAction;

    # setter for: Lorg/holoeverywhere/app/Activity$KeyEventAction;->mEvent:Landroid/view/KeyEvent;
    invoke-static {v0, p1}, Lorg/holoeverywhere/app/Activity$KeyEventAction;->access$402(Lorg/holoeverywhere/app/Activity$KeyEventAction;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 121
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mKeyEventAction:Lorg/holoeverywhere/app/Activity$KeyEventAction;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

    const/4 v1, 0x0

    # setter for: Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/holoeverywhere/app/Activity$FindViewAction;->access$502(Lorg/holoeverywhere/app/Activity$FindViewAction;Landroid/view/View;)Landroid/view/View;

    .line 127
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

    # setter for: Lorg/holoeverywhere/app/Activity$FindViewAction;->mId:I
    invoke-static {v0, p1}, Lorg/holoeverywhere/app/Activity$FindViewAction;->access$602(Lorg/holoeverywhere/app/Activity$FindViewAction;I)I

    .line 128
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 129
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mFindViewAction:Lorg/holoeverywhere/app/Activity$FindViewAction;

    # getter for: Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;
    invoke-static {v0}, Lorg/holoeverywhere/app/Activity$FindViewAction;->access$500(Lorg/holoeverywhere/app/Activity$FindViewAction;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public instanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 145
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :goto_0
    return-object p1

    .line 141
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, ":holoeverywhere:instancestate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, ":holoeverywhere:instancestate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 145
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isAddonAttached(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->isAddonAttached(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isCreatedByThemeManager()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/holoeverywhere/app/Activity;->mCreatedByThemeManager:Z

    return v0
.end method

.method public lockAttaching()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->lockAttaching()V

    .line 160
    return-void
.end method

.method public obtainAddonsList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->obtainAddonsList()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onActionModeFinished(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 169
    return-void
.end method

.method public onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 173
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/_HoloActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    new-instance v0, Lorg/holoeverywhere/app/Activity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/holoeverywhere/app/Activity$2;-><init>(Lorg/holoeverywhere/app/Activity;IILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 184
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 189
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Landroid/support/v4/app/_HoloActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    new-instance v1, Lorg/holoeverywhere/app/Activity$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/holoeverywhere/app/Activity$3;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 196
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onContentChanged()V

    .line 201
    new-instance v0, Lorg/holoeverywhere/app/Activity$4;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$4;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity;->instanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 212
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":holoeverywhere:createbythememanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/holoeverywhere/app/Activity;->mCreatedByThemeManager:Z

    .line 214
    iget-object v1, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getSupportApplication()Lorg/holoeverywhere/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->inhert(Lorg/holoeverywhere/addon/IAddonAttacher;)V

    .line 215
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->forceInit(Landroid/os/Bundle;)V

    .line 216
    new-instance v1, Lorg/holoeverywhere/app/Activity$5;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/app/Activity$5;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 222
    invoke-super {p0, v0}, Landroid/support/v4/app/_HoloActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    new-instance v1, Lorg/holoeverywhere/app/Activity$6;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/app/Activity$6;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 229
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 233
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 238
    new-instance v0, Lorg/holoeverywhere/app/Activity$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Activity$7;-><init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lorg/holoeverywhere/app/Activity$8;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$8;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 259
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onDestroy()V

    .line 260
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lorg/holoeverywhere/app/Activity$9;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$9;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 280
    new-instance v0, Lorg/holoeverywhere/app/Activity$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Activity$10;-><init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 295
    new-instance v0, Lorg/holoeverywhere/app/Activity$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Activity$11;-><init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/support/v4/app/_HoloActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 311
    new-instance v0, Lorg/holoeverywhere/app/Activity$12;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/app/Activity$12;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 317
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 321
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 326
    new-instance v0, Lorg/holoeverywhere/app/Activity$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Activity$13;-><init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 332
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 333
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lorg/holoeverywhere/app/Activity$14;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$14;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 343
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onPause()V

    .line 344
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity;->instanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    new-instance v1, Lorg/holoeverywhere/app/Activity$15;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/app/Activity$15;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 355
    invoke-super {p0, v0}, Landroid/support/v4/app/_HoloActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 356
    return-void
.end method

.method protected onPostInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "config"    # Landroid/support/v4/app/_HoloActivity$Holo;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->lockAttaching()V

    .line 361
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onPostResume()V

    .line 366
    new-instance v0, Lorg/holoeverywhere/app/Activity$16;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$16;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 372
    return-void
.end method

.method protected onPreInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "config"    # Landroid/support/v4/app/_HoloActivity$Holo;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/holoeverywhere/app/Activity$Addons;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/holoeverywhere/app/Activity$Addons;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/app/Activity$Addons;

    invoke-interface {v4}, Lorg/holoeverywhere/app/Activity$Addons;->value()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 378
    .local v0, "addon":Ljava/lang/String;
    const-string v4, "Sherlock"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    iput-boolean v6, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    .line 377
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const-string v4, "Slider"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    iput-boolean v6, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    goto :goto_1

    .line 382
    :cond_1
    const-string v4, "Roboguice"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    iput-boolean v6, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    goto :goto_1

    .line 384
    :cond_2
    const-string v4, "Tabber"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 385
    iput-boolean v6, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    goto :goto_1

    .line 387
    :cond_3
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonActivity;

    goto :goto_1

    .line 391
    .end local v0    # "addon":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 395
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 401
    new-instance v0, Lorg/holoeverywhere/app/Activity$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/holoeverywhere/app/Activity$17;-><init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/View;Landroid/view/Menu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lorg/holoeverywhere/app/Activity$18;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$18;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 422
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onRestart()V

    .line 423
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onResume()V

    .line 428
    new-instance v0, Lorg/holoeverywhere/app/Activity$19;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$19;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 434
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/support/v4/app/_HoloActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 439
    new-instance v0, Lorg/holoeverywhere/app/Activity$20;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/app/Activity$20;-><init>(Lorg/holoeverywhere/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 445
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onStart()V

    .line 450
    new-instance v0, Lorg/holoeverywhere/app/Activity$21;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$21;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 456
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lorg/holoeverywhere/app/Activity$22;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$22;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 466
    invoke-super {p0}, Landroid/support/v4/app/_HoloActivity;->onStop()V

    .line 467
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 471
    new-instance v0, Lorg/holoeverywhere/app/Activity$23;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Activity$23;-><init>(Lorg/holoeverywhere/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 477
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 478
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lorg/holoeverywhere/app/Activity$24;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$24;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 493
    return-void
.end method

.method public performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
            "<",
            "Lorg/holoeverywhere/addon/IAddonActivity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "callback":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<Lorg/holoeverywhere/addon/IAddonActivity;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public requestWindowFeature(J)V
    .locals 2
    .param p1, "featureIdLong"    # J

    .prologue
    .line 502
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->requestWindowFeature(J)V

    .line 503
    long-to-int v0, p1

    .line 504
    .local v0, "featureId":I
    new-instance v1, Lorg/holoeverywhere/app/Activity$25;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/app/Activity$25;-><init>(Lorg/holoeverywhere/app/Activity;I)V

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 515
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 519
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setProgress(I)V

    .line 526
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setProgressBarIndeterminate(Z)V

    .line 531
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setProgressBarIndeterminateVisibility(Z)V

    .line 536
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setProgressBarVisibility(Z)V

    .line 541
    return-void
.end method

.method public setSupportSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setSecondaryProgress(I)V

    .line 546
    return-void
.end method

.method public setUiOptions(I)V
    .locals 2
    .param p1, "uiOptions"    # I

    .prologue
    .line 549
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->isAddonAttached(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setUiOptions(I)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setUiOptions(I)V

    goto :goto_0
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 557
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->isAddonAttached(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->setUiOptions(II)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setUiOptions(II)V

    goto :goto_0
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 566
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lorg/holoeverywhere/app/Activity$26;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Activity$26;-><init>(Lorg/holoeverywhere/app/Activity;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Activity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 582
    return-void
.end method
