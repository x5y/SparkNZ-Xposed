.class Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$2;
.super Ljava/lang/Object;
.source "AdapterOverseasUsage.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 237
    .local v0, "rb":Landroid/widget/RadioButton;
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->showConfirmChangeUsageSelection(Landroid/widget/RadioButton;)V
    invoke-static {v1, v0}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Landroid/widget/RadioButton;)V

    .line 238
    return-void
.end method
