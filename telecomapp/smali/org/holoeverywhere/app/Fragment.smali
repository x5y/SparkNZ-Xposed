.class public Lorg/holoeverywhere/app/Fragment;
.super Landroid/support/v4/app/_HoloFragment;
.source "Fragment.java"


# instance fields
.field private final mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/addon/IAddonBasicAttacher",
            "<",
            "Lorg/holoeverywhere/addon/IAddonFragment;",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Lorg/holoeverywhere/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/_HoloFragment;-><init>()V

    .line 66
    new-instance v0, Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lorg/holoeverywhere/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/holoeverywhere/app/Fragment;->instantiate(Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static instantiate(Ljava/lang/Class;)Lorg/holoeverywhere/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/holoeverywhere/app/Fragment;->instantiate(Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/Fragment;

    .line 27
    .local v1, "fragment":Lorg/holoeverywhere/app/Fragment;, "TT;"
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 29
    invoke-virtual {v1, p1}, Lorg/holoeverywhere/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    return-object v1

    .line 32
    .end local v1    # "fragment":Lorg/holoeverywhere/app/Fragment;, "TT;"
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": make sure class name exists, is public, and has an"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " empty constructor that is public"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Fragment;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Fragment;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonFragment;

    move-result-object v0

    return-object v0
.end method

.method public addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonFragment;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonFragment;

    return-object v0
.end method

.method public addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonFragment;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/addon/IAddonFragment;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddonFragment;

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
    .line 78
    .local p1, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->addon(Ljava/util/Collection;)V

    .line 79
    return-void
.end method

.method public getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mLayoutInflater:Lorg/holoeverywhere/LayoutInflater;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Fragment;->getSupportActivity()Lorg/holoeverywhere/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/LayoutInflater;->obtainFragmentChildInflater(Lorg/holoeverywhere/app/Fragment;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mLayoutInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mLayoutInflater:Lorg/holoeverywhere/LayoutInflater;

    return-object v0
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
    .line 97
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/addon/IAddon;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->isAddonAttached(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public lockAttaching()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->lockAttaching()V

    .line 103
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
    .line 107
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->obtainAddonsList()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/_HoloFragment;->onAttach(Lorg/holoeverywhere/app/Activity;)V

    .line 113
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->reset()V

    .line 114
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->inhert(Lorg/holoeverywhere/addon/IAddonAttacher;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Fragment;->lockAttaching()V

    .line 120
    new-instance v0, Lorg/holoeverywhere/app/Fragment$1;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/app/Fragment$1;-><init>(Lorg/holoeverywhere/app/Fragment;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Fragment;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/_HoloFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v0, Lorg/holoeverywhere/app/Fragment$2;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/app/Fragment$2;-><init>(Lorg/holoeverywhere/app/Fragment;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Fragment;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 133
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/holoeverywhere/app/Fragment$3;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/Fragment$3;-><init>(Lorg/holoeverywhere/app/Fragment;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Fragment;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 143
    invoke-super {p0}, Landroid/support/v4/app/_HoloFragment;->onDestroyView()V

    .line 144
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/_HoloFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lorg/holoeverywhere/app/Fragment$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/holoeverywhere/app/Fragment$4;-><init>(Lorg/holoeverywhere/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Fragment;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    .line 155
    return-void
.end method

.method public performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
            "<",
            "Lorg/holoeverywhere/addon/IAddonFragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "callback":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<Lorg/holoeverywhere/addon/IAddonFragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment;->mAttacher:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher;->performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Fragment;->getSupportActivity()Lorg/holoeverywhere/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Activity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
