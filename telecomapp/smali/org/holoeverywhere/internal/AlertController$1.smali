.class Lorg/holoeverywhere/internal/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/internal/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/internal/AlertController;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/internal/AlertController;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private needToDismiss(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonBehavior:I
    invoke-static {v0}, Lorg/holoeverywhere/internal/AlertController;->access$800(Lorg/holoeverywhere/internal/AlertController;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private send(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 327
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonPositive:Lorg/holoeverywhere/widget/Button;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$900(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 328
    const/4 v0, -0x1

    .line 336
    .local v0, "button":I
    :goto_0
    const/4 v1, 0x0

    .line 337
    .local v1, "dismiss":Z
    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_1
    if-eqz v1, :cond_0

    .line 352
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1500(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lorg/holoeverywhere/internal/AlertController;->access$600(Lorg/holoeverywhere/internal/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 355
    .end local v0    # "button":I
    .end local v1    # "dismiss":Z
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonNegative:Lorg/holoeverywhere/widget/Button;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1000(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 330
    const/4 v0, -0x2

    .restart local v0    # "button":I
    goto :goto_0

    .line 331
    .end local v0    # "button":I
    :cond_2
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonNeutral:Lorg/holoeverywhere/widget/Button;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1100(Lorg/holoeverywhere/internal/AlertController;)Lorg/holoeverywhere/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 332
    const/4 v0, -0x3

    .restart local v0    # "button":I
    goto :goto_0

    .line 339
    .restart local v1    # "dismiss":Z
    :pswitch_0
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1200(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController$1;->send(Landroid/os/Message;)V

    .line 340
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController$1;->needToDismiss(I)Z

    move-result v1

    .line 341
    goto :goto_1

    .line 343
    :pswitch_1
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1300(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController$1;->send(Landroid/os/Message;)V

    .line 344
    invoke-direct {p0, v4}, Lorg/holoeverywhere/internal/AlertController$1;->needToDismiss(I)Z

    move-result v1

    .line 345
    goto :goto_1

    .line 347
    :pswitch_2
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$1;->this$0:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lorg/holoeverywhere/internal/AlertController;->access$1400(Lorg/holoeverywhere/internal/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController$1;->send(Landroid/os/Message;)V

    .line 348
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/internal/AlertController$1;->needToDismiss(I)Z

    move-result v1

    goto :goto_1

    .line 337
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
