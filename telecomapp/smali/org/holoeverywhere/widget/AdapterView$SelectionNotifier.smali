.class Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/AdapterView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/AdapterView;Lorg/holoeverywhere/widget/AdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/AdapterView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/AdapterView$1;

    .prologue
    .line 81
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;-><init>(Lorg/holoeverywhere/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;, "Lorg/holoeverywhere/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    # invokes: Lorg/holoeverywhere/widget/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/AdapterView;->access$200(Lorg/holoeverywhere/widget/AdapterView;)V

    .line 90
    iget-object v0, p0, Lorg/holoeverywhere/widget/AdapterView$SelectionNotifier;->this$0:Lorg/holoeverywhere/widget/AdapterView;

    # invokes: Lorg/holoeverywhere/widget/AdapterView;->performAccessibilityActionsOnSelected()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/AdapterView;->access$300(Lorg/holoeverywhere/widget/AdapterView;)V

    goto :goto_0
.end method
