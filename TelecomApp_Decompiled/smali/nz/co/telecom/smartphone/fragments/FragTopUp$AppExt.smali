.class Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;
.super Ljava/lang/Object;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppExt"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/fragments/FragTopUp$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/FragTopUp$1;

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    return-void
.end method

.method private parseHTML(Ljava/lang/String;)V
    .locals 4
    .param p1, "htmlSourceCode"    # Ljava/lang/String;

    .prologue
    .line 808
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parseHTML TRANSACTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TRANSACTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parseHTML Response.Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Response.Status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parseHTML RESULT_READY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    const-string v1, "TRANSACTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Response.Status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v2, 0x308

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    .line 816
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResults()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_2
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHTML error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1102(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 821
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1302(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v2, 0x30c

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public readHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;->parseHTML(Ljava/lang/String;)V

    .line 805
    return-void
.end method
