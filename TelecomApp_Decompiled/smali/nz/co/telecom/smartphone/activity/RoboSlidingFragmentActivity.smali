.class public Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "RoboSlidingFragmentActivity.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

.field ignored:Lroboguice/inject/ContentViewListener;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected scopedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->scopedObjects:Ljava/util/HashMap;

    .line 56
    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p1, p2, p3}, Lroboguice/activity/event/OnActivityResultEvent;-><init>(IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 112
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/activity/event/OnConfigurationChangedEvent;

    invoke-direct {v2, v0, p1}, Lroboguice/activity/event/OnConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onContentChanged()V

    .line 119
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectViewMembers(Landroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnContentChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 60
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    .line 61
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/activity/event/OnCreateEvent;

    invoke-direct {v2, p1}, Lroboguice/activity/event/OnCreateEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnDestroyEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnDestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 109
    return-void

    .line 106
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    throw v0

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnNewIntentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 83
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnPauseEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnPauseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestart()V

    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnRestartEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnRestartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnResumeEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnResumeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStartEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnStartEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/RoboSlidingFragmentActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStopEvent;

    invoke-direct {v1}, Lroboguice/activity/event/OnStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    throw v0
.end method
