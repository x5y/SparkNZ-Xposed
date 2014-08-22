.class Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/Spinner$DropdownPopup;-><init>(Lorg/holoeverywhere/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Lorg/holoeverywhere/widget/Spinner;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/Spinner$DropdownPopup;Lorg/holoeverywhere/widget/Spinner;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->val$this$0:Lorg/holoeverywhere/widget/Spinner;

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
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v0, p3}, Lorg/holoeverywhere/widget/Spinner;->setSelection(I)V

    .line 222
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget-object v0, v0, Lorg/holoeverywhere/widget/Spinner;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    # getter for: Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->access$000(Lorg/holoeverywhere/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/holoeverywhere/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup$1;->this$1:Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->dismiss()V

    .line 227
    return-void
.end method
