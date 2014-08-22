.class Lorg/holoeverywhere/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$2;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$2;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mDropDownList:Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$300(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 222
    .local v0, "dropDownList":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    # setter for: Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;->access$802(Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 226
    .end local v0    # "dropDownList":Lorg/holoeverywhere/widget/ListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
