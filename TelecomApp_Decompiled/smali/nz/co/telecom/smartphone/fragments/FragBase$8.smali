.class Lnz/co/telecom/smartphone/fragments/FragBase$8;
.super Ljava/lang/Object;
.source "FragBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

.field final synthetic val$isClickedOK:[Z

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;[ZLandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$8;->val$isClickedOK:[Z

    iput-object p3, p0, Lnz/co/telecom/smartphone/fragments/FragBase$8;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 808
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$8;->val$isClickedOK:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 809
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$8;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 810
    return-void
.end method
