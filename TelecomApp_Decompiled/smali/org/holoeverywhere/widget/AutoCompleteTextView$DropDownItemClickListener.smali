.class Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 39
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    # invokes: Lorg/holoeverywhere/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->access$000(Lorg/holoeverywhere/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    .line 40
    return-void
.end method
