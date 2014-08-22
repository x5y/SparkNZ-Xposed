.class Lorg/holoeverywhere/internal/AlertController$AlertParams$4;
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

.field final synthetic val$listView:Lorg/holoeverywhere/widget/ListView;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Lorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/internal/AlertController;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->val$listView:Lorg/holoeverywhere/widget/ListView;

    iput-object p3, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->val$dialog:Lorg/holoeverywhere/internal/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->val$listView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v1, p3}, Lorg/holoeverywhere/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->val$dialog:Lorg/holoeverywhere/internal/AlertController;

    # getter for: Lorg/holoeverywhere/internal/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lorg/holoeverywhere/internal/AlertController;->access$600(Lorg/holoeverywhere/internal/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$4;->val$listView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v2, p3}, Lorg/holoeverywhere/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 251
    return-void
.end method
