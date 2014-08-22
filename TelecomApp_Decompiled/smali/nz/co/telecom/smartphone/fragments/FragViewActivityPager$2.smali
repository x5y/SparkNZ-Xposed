.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 324
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 344
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 341
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text allFrag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text allFrag.getAdapter() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->applySearchFilter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$500(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Ljava/lang/String;)V

    .line 338
    return-void
.end method
