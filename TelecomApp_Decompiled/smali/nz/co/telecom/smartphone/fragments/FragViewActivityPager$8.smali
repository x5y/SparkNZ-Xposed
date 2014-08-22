.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
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
    .line 471
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$1200(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$1200(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 476
    :cond_0
    return-void
.end method
