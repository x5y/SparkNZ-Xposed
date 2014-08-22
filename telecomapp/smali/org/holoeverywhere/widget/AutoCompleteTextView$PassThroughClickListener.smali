.class Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$802(Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    # invokes: Lorg/holoeverywhere/widget/AutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->access$100(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V

    .line 68
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 71
    :cond_0
    return-void
.end method
