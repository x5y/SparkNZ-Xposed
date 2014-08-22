.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 346
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 348
    if-eqz p2, :cond_0

    .line 349
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$700(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$700(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    goto :goto_0
.end method
