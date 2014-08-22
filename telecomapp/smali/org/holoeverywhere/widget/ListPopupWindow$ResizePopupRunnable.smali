.class Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ListPopupWindow$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    iget v1, v1, Lorg/holoeverywhere/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$000(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->setInputMethodMode(I)V

    .line 131
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 133
    :cond_0
    return-void
.end method
