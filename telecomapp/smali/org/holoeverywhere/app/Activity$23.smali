.class Lorg/holoeverywhere/app/Activity$23;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V
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
.field final synthetic this$0:Lorg/holoeverywhere/app/Activity;

.field final synthetic val$color:I

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$23;->this$0:Lorg/holoeverywhere/app/Activity;

    iput-object p2, p0, Lorg/holoeverywhere/app/Activity$23;->val$title:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/holoeverywhere/app/Activity$23;->val$color:I

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 471
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$23;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 474
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$23;->val$title:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/holoeverywhere/app/Activity$23;->val$color:I

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 475
    return-void
.end method
