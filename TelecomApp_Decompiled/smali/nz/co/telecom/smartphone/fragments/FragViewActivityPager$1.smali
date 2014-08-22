.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$1;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionSelected()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$400(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    .line 313
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
    .line 317
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
