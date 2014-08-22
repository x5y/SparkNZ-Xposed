.class Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;
.super Ljava/lang/Object;
.source "AdapterOverseasUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->showConfirmChangeUsageSelection(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

.field final synthetic val$confirmDialog:Landroid/app/Dialog;

.field final synthetic val$isClickedOK:[Z


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;[ZLandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;->val$isClickedOK:[Z

    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;->val$confirmDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;->val$isClickedOK:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 320
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;->val$confirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 321
    return-void
.end method
