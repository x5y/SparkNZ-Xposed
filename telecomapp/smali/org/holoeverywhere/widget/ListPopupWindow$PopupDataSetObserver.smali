.class Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ListPopupWindow$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 81
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->dismiss()V

    .line 86
    return-void
.end method
