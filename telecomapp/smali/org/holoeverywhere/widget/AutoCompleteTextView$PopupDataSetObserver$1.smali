.class Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    # getter for: Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->access$200(Lorg/holoeverywhere/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 82
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    # invokes: Lorg/holoeverywhere/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->access$300(Lorg/holoeverywhere/widget/AutoCompleteTextView;I)V

    .line 85
    :cond_0
    return-void
.end method
