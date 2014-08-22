.class Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;
.super Ljava/lang/Object;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppExt"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Lnz/co/telecom/smartphone/fragments/FragPayBill$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/FragPayBill$1;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    return-void
.end method

.method private parseHTML(Ljava/lang/String;)V
    .locals 4
    .param p1, "htmlSourceCode"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parseHTML TRANSACTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name=\"Redirect\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

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

    .line 298
    :cond_0
    const-string v1, "name=\"Redirect\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v2, 0x327

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 301
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResults()V
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$400(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

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

    .line 305
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v2, 0x328

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public readHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;->parseHTML(Ljava/lang/String;)V

    .line 290
    return-void
.end method
