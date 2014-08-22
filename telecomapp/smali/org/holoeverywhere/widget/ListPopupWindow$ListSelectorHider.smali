.class Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;
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
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ListPopupWindow$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$ListSelectorHider;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->clearListSelection()V

    .line 72
    return-void
.end method
