.class Lorg/holoeverywhere/app/ListActivity$1;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/ListActivity;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/ListActivity;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lorg/holoeverywhere/app/ListActivity$1;->this$0:Lorg/holoeverywhere/app/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 24
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity$1;->this$0:Lorg/holoeverywhere/app/ListActivity;

    move-object v1, p1

    check-cast v1, Lorg/holoeverywhere/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/app/ListActivity;->onListItemClick(Lorg/holoeverywhere/widget/ListView;Landroid/view/View;IJ)V

    .line 25
    return-void
.end method
