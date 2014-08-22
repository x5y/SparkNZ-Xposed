.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;
.super Ljava/lang/Object;
.source "FragBuyExtraComponents.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->handleBuyExtraResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 356
    const/4 v0, 0x1

    return v0
.end method
