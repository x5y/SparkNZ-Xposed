.class Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF$1;
.super Lorg/holoeverywhere/app/TabSwipeController;
.source "AddonTabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->createController()Lorg/holoeverywhere/app/TabSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/actionbarsherlock/app/ActionBar;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/support/v4/app/FragmentManager;
    .param p4, "x2"    # Lcom/actionbarsherlock/app/ActionBar;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF$1;->this$0:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    invoke-direct {p0, p2, p3, p4}, Lorg/holoeverywhere/app/TabSwipeController;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/actionbarsherlock/app/ActionBar;)V

    return-void
.end method


# virtual methods
.method protected onHandleTabs()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF$1;->this$0:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->onHandleTabs()V

    .line 206
    return-void
.end method
