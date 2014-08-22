.class final Lorg/holoeverywhere/app/Activity$KeyEventAction;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
        "<",
        "Lorg/holoeverywhere/addon/IAddonActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lorg/holoeverywhere/app/Activity;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/app/Activity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$KeyEventAction;->this$0:Lorg/holoeverywhere/app/Activity;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/app/Activity;Lorg/holoeverywhere/app/Activity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p2, "x1"    # Lorg/holoeverywhere/app/Activity$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/holoeverywhere/app/Activity$KeyEventAction;-><init>(Lorg/holoeverywhere/app/Activity;)V

    return-void
.end method

.method static synthetic access$402(Lorg/holoeverywhere/app/Activity$KeyEventAction;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity$KeyEventAction;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$KeyEventAction;->mEvent:Landroid/view/KeyEvent;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$KeyEventAction;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$KeyEventAction;->mEvent:Landroid/view/KeyEvent;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/addon/IAddonActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public post()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$KeyEventAction;->this$0:Lorg/holoeverywhere/app/Activity;

    iget-object v1, p0, Lorg/holoeverywhere/app/Activity$KeyEventAction;->mEvent:Landroid/view/KeyEvent;

    # invokes: Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, v1}, Lorg/holoeverywhere/app/Activity;->access$001(Lorg/holoeverywhere/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
