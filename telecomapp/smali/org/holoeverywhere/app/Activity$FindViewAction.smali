.class final Lorg/holoeverywhere/app/Activity$FindViewAction;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FindViewAction"
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
.field private mId:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lorg/holoeverywhere/app/Activity;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/app/Activity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->this$0:Lorg/holoeverywhere/app/Activity;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/app/Activity;Lorg/holoeverywhere/app/Activity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/app/Activity;
    .param p2, "x1"    # Lorg/holoeverywhere/app/Activity$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/holoeverywhere/app/Activity$FindViewAction;-><init>(Lorg/holoeverywhere/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lorg/holoeverywhere/app/Activity$FindViewAction;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity$FindViewAction;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lorg/holoeverywhere/app/Activity$FindViewAction;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity$FindViewAction;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$602(Lorg/holoeverywhere/app/Activity$FindViewAction;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/Activity$FindViewAction;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mId:I

    return p1
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$FindViewAction;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 46
    iget v0, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mId:I

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/addon/IAddonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->this$0:Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/app/Activity$FindViewAction;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
