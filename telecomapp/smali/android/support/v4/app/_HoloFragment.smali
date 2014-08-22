.class public abstract Landroid/support/v4/app/_HoloFragment;
.super Landroid/support/v4/app/Fragment;
.source "_HoloFragment.java"

# interfaces
.implements Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;
.implements Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;
.implements Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
.implements Lorg/holoeverywhere/addon/IAddonAttacher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/Watson$OnPrepareOptionsMenuListener;",
        "Landroid/support/v4/app/Watson$OnCreateOptionsMenuListener;",
        "Landroid/support/v4/app/Watson$OnOptionsItemSelectedListener;",
        "Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;",
        "Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;",
        "Lorg/holoeverywhere/addon/IAddonAttacher",
        "<",
        "Lorg/holoeverywhere/addon/IAddonFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lorg/holoeverywhere/app/Activity;

.field mDetachChildFragments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/_HoloFragment;->mDetachChildFragments:Z

    return-void
.end method

.method private fixClassloader(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    const-class v0, Lorg/holoeverywhere/HoloEverywhere;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method


# virtual methods
.method public final getContainerId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/v4/app/_HoloFragment;->mContainerId:I

    return v0
.end method

.method public getContextMenuListener(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->getContextMenuListener(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSharedPreferences()Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getDefaultSharedPreferences()Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->getDefaultSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloFragment;->getLayoutInflater(Landroid/os/Bundle;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Lorg/holoeverywhere/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloFragment;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;
    .locals 1
    .param p1, "impl"    # Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/Activity;->getSharedPreferences(Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBarContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportActionBarContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActivity()Lorg/holoeverywhere/app/Activity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    return-object v0
.end method

.method public getSupportApplication()Lorg/holoeverywhere/app/Application;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportApplication()Lorg/holoeverywhere/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDetachChildFragments()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloFragment;->mDetachChildFragments:Z

    return v0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    instance-of v0, p1, Lorg/holoeverywhere/app/Activity;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HoloEverywhere.Fragment must be attached to HoloEverywhere.Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 126
    check-cast v0, Lorg/holoeverywhere/app/Activity;

    iput-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    .line 127
    check-cast p1, Lorg/holoeverywhere/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloFragment;->onAttach(Lorg/holoeverywhere/app/Activity;)V

    .line 128
    return-void
.end method

.method public onAttach(Lorg/holoeverywhere/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 132
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloFragment;->onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V

    .line 143
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 148
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/_HoloFragment;->onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 149
    return-void
.end method

.method public onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/Activity;->onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 155
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 160
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p0}, Landroid/support/v4/app/_HoloFragment;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/_HoloFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 161
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 166
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;

    iget-object v2, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-direct {v0, v2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "decorView":Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->setProvider(Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;)V

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/app/_HoloFragment;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p3}, Landroid/support/v4/app/_HoloFragment;->onCreateView(Lorg/holoeverywhere/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 178
    .end local v0    # "decorView":Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;
    :goto_0
    return-object v0

    .line 177
    .restart local v0    # "decorView":Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Lorg/holoeverywhere/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Lorg/holoeverywhere/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 189
    iget-object v2, p0, Landroid/support/v4/app/_HoloFragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/_HoloFragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/app/_HoloFragment;->mDetachChildFragments:Z

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Landroid/support/v4/app/_HoloFragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 192
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Landroid/support/v4/app/_HoloFragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v3, v3}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_0

    .line 198
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    check-cast p1, Lorg/holoeverywhere/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/_HoloFragment;->onInflate(Lorg/holoeverywhere/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onInflate(Lorg/holoeverywhere/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 223
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/_HoloFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 224
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 228
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloFragment;->onViewCreated(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public openContextMenu(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/support/v4/app/_HoloFragment;->fixClassloader(Landroid/os/Bundle;)V

    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 252
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1, p0}, Lorg/holoeverywhere/app/Activity;->registerForContextMenu(Landroid/view/View;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    goto :goto_0
.end method

.method public setDetachChildFragments(Z)V
    .locals 0
    .param p1, "detachChildFragments"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Landroid/support/v4/app/_HoloFragment;->mDetachChildFragments:Z

    .line 269
    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/Fragment$SavedState;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/support/v4/app/_HoloFragment;->fixClassloader(Landroid/os/Bundle;)V

    .line 276
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 277
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/support/v4/app/_HoloFragment;->fixClassloader(Landroid/os/Bundle;)V

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 285
    return-void
.end method

.method public abstract startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloFragment;->mActivity:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
