.class Landroid/support/v4/app/_HoloActivity$1;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "_HoloActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/_HoloActivity;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Landroid/support/v4/app/_HoloActivity;

.field final synthetic val$p:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Landroid/support/v4/app/_HoloActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Landroid/support/v4/app/_HoloActivity$1;->this$0:Landroid/support/v4/app/_HoloActivity;

    iput-object p2, p0, Landroid/support/v4/app/_HoloActivity$1;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 584
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/app/_HoloActivity$1;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$1;->this$0:Landroid/support/v4/app/_HoloActivity;

    # getter for: Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;
    invoke-static {v0}, Landroid/support/v4/app/_HoloActivity;->access$200(Landroid/support/v4/app/_HoloActivity;)Lorg/holoeverywhere/internal/WindowDecorView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity$1;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonActivity;->installDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public justPost()V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$1;->this$0:Landroid/support/v4/app/_HoloActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/_HoloActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/_HoloActivity$1;->this$0:Landroid/support/v4/app/_HoloActivity;

    # getter for: Landroid/support/v4/app/_HoloActivity;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;
    invoke-static {v1}, Landroid/support/v4/app/_HoloActivity;->access$200(Landroid/support/v4/app/_HoloActivity;)Lorg/holoeverywhere/internal/WindowDecorView;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/_HoloActivity$1;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    return-void
.end method
