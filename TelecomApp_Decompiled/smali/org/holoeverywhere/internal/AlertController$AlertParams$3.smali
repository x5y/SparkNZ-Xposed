.class Lorg/holoeverywhere/internal/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/internal/AlertController$AlertParams;->createListView(Lorg/holoeverywhere/internal/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

.field final synthetic val$dialog:Lorg/holoeverywhere/internal/AlertController;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Lorg/holoeverywhere/internal/AlertController;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->val$dialog:Lorg/holoeverywhere/internal/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->val$dialog:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lorg/holoeverywhere/internal/AlertController;->access$600(Lorg/holoeverywhere/internal/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 234
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-boolean v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$3;->val$dialog:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lorg/holoeverywhere/internal/AlertController;->access$600(Lorg/holoeverywhere/internal/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    :cond_0
    return-void
.end method
