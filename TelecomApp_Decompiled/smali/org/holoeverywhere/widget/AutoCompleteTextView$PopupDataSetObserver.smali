.class Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    # getter for: Lorg/holoeverywhere/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->access$200(Lorg/holoeverywhere/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    new-instance v1, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    return-void
.end method
