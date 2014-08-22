.class final Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnItemLongClickListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListView;

.field private wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ListView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->this$0:Lorg/holoeverywhere/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ListView;Lorg/holoeverywhere/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ListView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ListView$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;-><init>(Lorg/holoeverywhere/widget/ListView;)V

    return-void
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
    .line 106
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->this$0:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/holoeverywhere/widget/ListView;->performItemLongClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->wrapped:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$OnItemLongClickListenerWrapper;->this$0:Lorg/holoeverywhere/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setLongClickable(Z)V

    .line 114
    :cond_0
    return-void
.end method
