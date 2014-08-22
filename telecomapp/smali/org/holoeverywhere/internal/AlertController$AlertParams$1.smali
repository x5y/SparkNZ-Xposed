.class Lorg/holoeverywhere/internal/AlertController$AlertParams$1;
.super Lorg/holoeverywhere/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/internal/AlertController$AlertParams;->createListView(Lorg/holoeverywhere/internal/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

.field final synthetic val$listView:Lorg/holoeverywhere/widget/ListView;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/internal/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lorg/holoeverywhere/widget/ListView;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p6, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;->val$listView:Lorg/holoeverywhere/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/holoeverywhere/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v2, v2, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;->this$0:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v2, v2, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 164
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lorg/holoeverywhere/internal/AlertController$AlertParams$1;->val$listView:Lorg/holoeverywhere/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/holoeverywhere/widget/ListView;->setItemChecked(IZ)V

    .line 168
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
