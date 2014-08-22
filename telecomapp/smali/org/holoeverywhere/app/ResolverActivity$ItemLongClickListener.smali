.class Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/ResolverActivity;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mAdapter:Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v1}, Lorg/holoeverywhere/app/ResolverActivity;->access$000(Lorg/holoeverywhere/app/ResolverActivity;)Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 67
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lorg/holoeverywhere/app/ResolverActivity$ItemLongClickListener;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 68
    const/4 v1, 0x1

    return v1
.end method
