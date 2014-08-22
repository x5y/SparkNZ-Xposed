.class public abstract Landroid/support/v4/app/_HoloActivity;
.super Landroid/support/v4/app/Watson;
.source "_HoloActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
.implements Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;
.implements Lorg/holoeverywhere/ThemeManager$SuperStartActivity;
.implements Lorg/holoeverywhere/addon/IAddonAttacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;,
        Landroid/support/v4/app/_HoloActivity$HoloThemeException;,
        Landroid/support/v4/app/_HoloActivity$Holo;,
        Landroid/support/v4/app/_HoloActivity$ActivityDecorView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Watson;",
        "Lorg/holoeverywhere/ThemeManager$SuperStartActivity;",
        "Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;",
        "Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;",
        "Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;",
        "Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;",
        "Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeFinishedListener;",
        "Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;",
        "Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;",
        "Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;",
        "Lorg/holoeverywhere/addon/IAddonAttacher",
        "<",
        "Lorg/holoeverywhere/addon/IAddonActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIG_KEY:Ljava/lang/String; = "holo:config:activity"


# instance fields
.field private mActionBarContext:Landroid/content/Context;

.field private mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

.field private mContextMenuListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

.field private mInited:Z

.field private mLastThemeResourceId:I

.field private mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

.field private final mOnWindowFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Watson;-><init>()V

    .line 167
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity;->mInited:Z

    .line 168
    iput v0, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/app/_HoloActivity;)Lorg/holoeverywhere/internal/WindowDecorView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/_HoloActivity;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    return-object v0
.end method

.method private requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "layoutRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 571
    iget-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    if-eqz v2, :cond_0

    .line 595
    :goto_0
    return v1

    .line 574
    :cond_0
    new-instance v2, Landroid/support/v4/app/_HoloActivity$ActivityDecorView;

    invoke-direct {v2, p0}, Landroid/support/v4/app/_HoloActivity$ActivityDecorView;-><init>(Landroid/support/v4/app/_HoloActivity;)V

    iput-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    .line 575
    iget-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/internal/WindowDecorView;->setId(I)V

    .line 576
    iget-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/internal/WindowDecorView;->setProvider(Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;)V

    .line 577
    if-eqz p1, :cond_2

    .line 578
    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v1, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 584
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/support/v4/app/_HoloActivity$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/_HoloActivity$1;-><init>(Landroid/support/v4/app/_HoloActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/support/v4/app/_HoloActivity;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 595
    const/4 v1, 0x0

    goto :goto_0

    .line 579
    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    if-lez p3, :cond_1

    .line 580
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getThemedLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v2, p3, v3, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 175
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/_HoloActivity;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->onContentChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;

    .prologue
    .line 182
    iget-object v4, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    monitor-enter v4

    .line 183
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 187
    .local v2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    if-nez v2, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 202
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 191
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    .restart local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;

    .line 192
    .local v1, "iListener":Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
    if-nez v1, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 196
    :cond_2
    if-ne v1, p1, :cond_0

    .line 197
    monitor-exit v4

    .line 203
    .end local v1    # "iListener":Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :goto_1
    return-void

    .line 200
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected createConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloActivity;->onCreateConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    .line 209
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Landroid/support/v4/app/_HoloActivity$Holo;->defaultConfig()Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    return-object v0
.end method

.method protected forceInit(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity;->mInited:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "holo:config:activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "holo:config:activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/_HoloActivity$Holo;

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    .line 223
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/_HoloActivity;->onInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getConfig()Landroid/support/v4/app/_HoloActivity$Holo;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    return-object v0
.end method

.method public getContextMenuListener(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    goto :goto_0
.end method

.method public getDefaultSharedPreferences()Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .prologue
    .line 243
    invoke-static {p0, p1}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->getDefaultSharedPreferences(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getLastThemeResourceId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    return v0
.end method

.method public bridge synthetic getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 252
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 262
    invoke-static {p0, p1, p2}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->wrap(Landroid/content/Context;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 257
    invoke-static {p0, p1, p2, p3}, Lorg/holoeverywhere/preference/PreferenceManagerHelper;->wrap(Landroid/content/Context;Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
.end method

.method public getSupportActionBarContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mActionBarContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 272
    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getThemeType(Landroid/content/Context;)I

    move-result v0

    .line 273
    .local v0, "theme":I
    sget v1, Lorg/holoeverywhere/ThemeManager;->LIGHT:I

    if-eq v0, v1, :cond_0

    .line 274
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    .line 276
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(IZ)I

    move-result v0

    .line 277
    iget v1, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    if-ne v1, v0, :cond_2

    .line 278
    iput-object p0, p0, Landroid/support/v4/app/_HoloActivity;->mActionBarContext:Landroid/content/Context;

    .line 283
    .end local v0    # "theme":I
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mActionBarContext:Landroid/content/Context;

    return-object v1

    .line 280
    .restart local v0    # "theme":I
    :cond_2
    new-instance v1, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mActionBarContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getSupportApplication()Lorg/holoeverywhere/app/Application;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lorg/holoeverywhere/app/Application;->getLastInstance()Lorg/holoeverywhere/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    .line 296
    :goto_0
    return-object v0

    .line 295
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getSupportActionBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p0, p1}, Lorg/holoeverywhere/SystemServiceManager;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->getDefaultTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloActivity;->setTheme(I)V

    .line 309
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Watson;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getThemedLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mUserHandler:Landroid/os/Handler;

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mUserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getWindowDecorView()Lorg/holoeverywhere/internal/WindowDecorView;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->supportInvalidateOptionsMenu()V

    .line 330
    return-void
.end method

.method public isDecorViewInited()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity;->mInited:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->finish()V

    .line 346
    :cond_0
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 350
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloActivity;->onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 355
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    if-eqz v0, :cond_0

    .line 356
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    .end local p1    # "item":Lcom/actionbarsherlock/view/MenuItem;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;->unwrap()Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/app/Watson;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 359
    :goto_0
    return v0

    .restart local p1    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 364
    instance-of v0, p1, Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    check-cast p1, Landroid/view/ContextMenu;

    .end local p1    # "menu":Landroid/view/Menu;
    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloActivity;->onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V

    .line 370
    :goto_0
    return-void

    .line 368
    .restart local p1    # "menu":Landroid/view/Menu;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;

    .prologue
    .line 374
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    if-eqz v0, :cond_0

    .line 375
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    .end local p1    # "menu":Lcom/actionbarsherlock/view/ContextMenu;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->unwrap()Landroid/view/ContextMenu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/app/Watson;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 377
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloActivity;->forceInit(Landroid/os/Bundle;)V

    .line 382
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onCreate(Landroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method protected onCreateConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    const-string v1, "holo:config:activity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "holo:config:activity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/_HoloActivity$Holo;

    .line 388
    .local v0, "config":Landroid/support/v4/app/_HoloActivity$Holo;
    if-eqz v0, :cond_0

    .line 392
    .end local v0    # "config":Landroid/support/v4/app/_HoloActivity$Holo;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/support/v4/app/_HoloActivity$Holo;->defaultConfig()Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 398
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/_HoloActivity;->onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 399
    return-void
.end method

.method public onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 405
    instance-of v2, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    if-eqz v2, :cond_0

    .line 406
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    .end local p1    # "menu":Lcom/actionbarsherlock/view/ContextMenu;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->unwrap()Landroid/view/ContextMenu;

    move-result-object v1

    .line 407
    .local v1, "nativeMenu":Landroid/view/ContextMenu;
    invoke-super {p0, v1, p2, p3}, Landroid/support/v4/app/Watson;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 408
    instance-of v2, p2, Lcom/actionbarsherlock/internal/view/menu/ContextMenuCallbackGetter;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 409
    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ContextMenuCallbackGetter;

    invoke-interface {v2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuCallbackGetter;->getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v0

    .line 411
    .local v0, "l":Landroid/view/View$OnCreateContextMenuListener;
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, v1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 416
    .end local v0    # "l":Landroid/view/View$OnCreateContextMenuListener;
    .end local v1    # "nativeMenu":Landroid/view/ContextMenu;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Landroid/support/v4/app/Watson;->onDestroy()V

    .line 426
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->removeInstance(Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method protected onInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "config"    # Landroid/support/v4/app/_HoloActivity$Holo;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 438
    iget-boolean v5, p0, Landroid/support/v4/app/_HoloActivity;->mInited:Z

    if-eqz v5, :cond_0

    .line 439
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This instance was already inited"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 441
    :cond_0
    iput-boolean v6, p0, Landroid/support/v4/app/_HoloActivity;->mInited:Z

    .line 442
    if-nez p1, :cond_1

    .line 443
    invoke-virtual {p0, p2}, Landroid/support/v4/app/_HoloActivity;->createConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object p1

    .line 445
    :cond_1
    if-nez p1, :cond_2

    .line 446
    invoke-static {}, Landroid/support/v4/app/_HoloActivity$Holo;->defaultConfig()Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object p1

    .line 448
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->onPreInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V

    .line 449
    iget-boolean v5, p1, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreApplicationInstanceCheck:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    instance-of v5, v5, Lorg/holoeverywhere/app/Application;

    if-nez v5, :cond_4

    .line 450
    const-string v3, "Application instance isn\'t HoloEverywhere.\n"

    .line 451
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/app/Application;

    if-ne v5, v6, :cond_3

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Put attr \'android:name=\"org.holoeverywhere.app.Application\"\' in <application> tag of AndroidManifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    :goto_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 455
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Please sure that you extend "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from a org.holoeverywhere.app.Application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 460
    .end local v3    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/holoeverywhere/LayoutInflater;->setFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 461
    instance-of v5, p0, Lorg/holoeverywhere/app/Activity;

    if-eqz v5, :cond_e

    move-object v1, p0

    .line 462
    check-cast v1, Lorg/holoeverywhere/app/Activity;

    .line 463
    .local v1, "activity":Lorg/holoeverywhere/app/Activity;
    iget-boolean v5, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    if-eqz v5, :cond_5

    .line 464
    const-string v5, "Roboguice"

    invoke-virtual {v1, v5}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonActivity;

    .line 466
    :cond_5
    iget-boolean v5, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    if-eqz v5, :cond_6

    .line 467
    const-string v5, "Slider"

    invoke-virtual {v1, v5}, Lorg/holoeverywhere/app/Activity;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonActivity;

    .line 469
    :cond_6
    iget-boolean v5, p1, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    if-eqz v5, :cond_7

    .line 470
    invoke-virtual {v1}, Lorg/holoeverywhere/app/Activity;->addonSherlock()Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    .line 472
    :cond_7
    # getter for: Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;
    invoke-static {p1}, Landroid/support/v4/app/_HoloActivity$Holo;->access$000(Landroid/support/v4/app/_HoloActivity$Holo;)Lorg/holoeverywhere/util/SparseIntArray;

    move-result-object v4

    .line 473
    .local v4, "windowFeatures":Lorg/holoeverywhere/util/SparseIntArray;
    if-eqz v4, :cond_9

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/holoeverywhere/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 475
    invoke-virtual {v4, v2}, Lorg/holoeverywhere/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-lez v5, :cond_8

    .line 476
    invoke-virtual {v4, v2}, Lorg/holoeverywhere/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {p0, v8, v9}, Landroid/support/v4/app/_HoloActivity;->requestWindowFeature(J)V

    .line 474
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    .end local v2    # "i":I
    :cond_9
    iget v5, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    if-nez v5, :cond_a

    move v5, v6

    :goto_2
    invoke-static {v1, v5}, Lorg/holoeverywhere/ThemeManager;->applyTheme(Lorg/holoeverywhere/app/Activity;Z)V

    .line 481
    iget-boolean v5, p1, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreThemeCheck:Z

    if-nez v5, :cond_b

    invoke-static {p0}, Lorg/holoeverywhere/ThemeManager;->getThemeType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_b

    .line 482
    new-instance v5, Landroid/support/v4/app/_HoloActivity$HoloThemeException;

    invoke-direct {v5, v1}, Landroid/support/v4/app/_HoloActivity$HoloThemeException;-><init>(Landroid/support/v4/app/_HoloActivity;)V

    throw v5

    :cond_a
    move v5, v7

    .line 480
    goto :goto_2

    .line 484
    :cond_b
    const/4 v5, 0x2

    new-array v5, v5, [I

    const v8, 0x10102e4

    aput v8, v5, v7

    sget v8, Lorg/holoeverywhere/R$attr;->windowActionBarOverlay:I

    aput v8, v5, v6

    invoke-virtual {p0, v5}, Landroid/support/v4/app/_HoloActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 488
    :cond_c
    const-wide/16 v5, 0x9

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/app/_HoloActivity;->requestWindowFeature(J)V

    .line 490
    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "activity":Lorg/holoeverywhere/app/Activity;
    .end local v4    # "windowFeatures":Lorg/holoeverywhere/util/SparseIntArray;
    :cond_e
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/_HoloActivity;->onPostInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V

    .line 493
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->lockAttaching()V

    .line 494
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 498
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->onHomePressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 506
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0}, Landroid/support/v4/app/_HoloActivity;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    .line 507
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onPostCreate(Landroid/os/Bundle;)V

    .line 508
    return-void
.end method

.method protected onPostInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "config"    # Landroid/support/v4/app/_HoloActivity$Holo;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 512
    return-void
.end method

.method protected onPreInit(Landroid/support/v4/app/_HoloActivity$Holo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "config"    # Landroid/support/v4/app/_HoloActivity$Holo;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 516
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 525
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 526
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "holo:config:activity"

    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mConfig:Landroid/support/v4/app/_HoloActivity$Holo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 529
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 533
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->onWindowFocusChanged(Z)V

    .line 534
    iget-object v4, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    monitor-enter v4

    .line 535
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/_HoloActivity;->mOnWindowFocusChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 537
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 539
    .local v2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    if-nez v2, :cond_0

    .line 540
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 550
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 543
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;>;"
    .restart local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;

    .line 544
    .local v1, "iListener":Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
    if-nez v1, :cond_1

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v1, p1}, Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 550
    .end local v1    # "iListener":Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/_HoloActivity$OnWindowFocusChangeListener;>;"
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 555
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->registerForContextMenu(Landroid/view/View;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-virtual {p0, p1, p0}, Landroid/support/v4/app/_HoloActivity;->registerForContextMenu(Landroid/view/View;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    goto :goto_0
.end method

.method public registerForContextMenu(Landroid/view/View;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .prologue
    .line 563
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v0}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    .line 566
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 568
    return-void
.end method

.method public requestWindowFeature(J)V
    .locals 2
    .param p1, "featureId"    # J

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloActivity;->createConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/_HoloActivity$Holo;->requestWindowFeature(I)V

    .line 600
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-direct {p0, v0, v0, p1}, Landroid/support/v4/app/_HoloActivity;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/WindowDecorView;->removeAllViewsInLayout()V

    .line 606
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getThemedLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 607
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->onContentChanged()V

    .line 609
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 613
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/_HoloActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 618
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/_HoloActivity;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/WindowDecorView;->removeAllViewsInLayout()V

    .line 620
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->onContentChanged()V

    .line 623
    :cond_0
    return-void
.end method

.method public abstract setSupportProgress(I)V
.end method

.method public abstract setSupportProgressBarIndeterminate(Z)V
.end method

.method public abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setSupportProgressBarVisibility(Z)V
.end method

.method public abstract setSupportSecondaryProgress(I)V
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/_HoloActivity;->setTheme(IZ)V

    .line 638
    return-void
.end method

.method public declared-synchronized setTheme(IZ)V
    .locals 4
    .param p1, "resid"    # I
    .param p2, "modifyGlobal"    # Z

    .prologue
    .line 641
    monitor-enter p0

    const/high16 v2, 0x1000000

    if-le p1, v2, :cond_1

    .line 642
    :try_start_0
    iget v2, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    if-eq v2, p1, :cond_0

    .line 643
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mActionBarContext:Landroid/content/Context;

    .line 644
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/app/_HoloActivity;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    .line 645
    iput p1, p0, Landroid/support/v4/app/_HoloActivity;->mLastThemeResourceId:I

    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->setTheme(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 648
    :cond_1
    :try_start_1
    sget v2, Lorg/holoeverywhere/ThemeManager;->COLOR_SCHEME_MASK:I

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 649
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;Z)I

    move-result v1

    .line 650
    .local v1, "theme":I
    if-nez v1, :cond_2

    .line 651
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 652
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 653
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/holoeverywhere/ThemeManager;->getTheme(Landroid/content/Intent;Z)I

    move-result v1

    .line 656
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    sget v2, Lorg/holoeverywhere/ThemeManager;->COLOR_SCHEME_MASK:I

    and-int/2addr v1, v2

    .line 657
    if-eqz v1, :cond_3

    .line 658
    or-int/2addr p1, v1

    .line 661
    .end local v1    # "theme":I
    :cond_3
    invoke-static {p1, p2}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(IZ)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/app/_HoloActivity;->setTheme(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/_HoloActivity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 671
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 676
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 677
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, p2}, Landroid/support/v4/app/_HoloActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/_HoloActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 685
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/app/_HoloActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 691
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/_HoloActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 697
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 702
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->ALWAYS_USE_PARENT_THEME:Z

    if-eqz v0, :cond_0

    .line 703
    invoke-static {p0, p1, p2, p3}, Lorg/holoeverywhere/ThemeManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/_HoloActivity;->superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public superGetSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 711
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public superGetSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public superStartActivity(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 724
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Watson;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Watson;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 733
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 734
    invoke-super {p0}, Landroid/support/v4/app/Watson;->invalidateOptionsMenu()V

    .line 736
    :cond_0
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 740
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_1

    .line 741
    invoke-super {p0, p1}, Landroid/support/v4/app/Watson;->unregisterForContextMenu(Landroid/view/View;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
