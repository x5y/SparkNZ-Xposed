.class Lnz/co/telecom/smartphone/fragments/FragTopUp$11;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$11;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$11;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1150
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$11;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1151
    return-void
.end method
