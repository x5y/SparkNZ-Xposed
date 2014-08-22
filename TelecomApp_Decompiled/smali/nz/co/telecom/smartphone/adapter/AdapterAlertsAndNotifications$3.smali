.class Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$3;
.super Ljava/lang/Object;
.source "AdapterAlertsAndNotifications.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    check-cast p1, Lorg/holoeverywhere/widget/Switch;

    .end local p1    # "buttonView":Landroid/widget/CompoundButton;
    const/4 v1, 0x1

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->performAlertChange(Lorg/holoeverywhere/widget/Switch;Z)V
    invoke-static {v0, p1, v1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lorg/holoeverywhere/widget/Switch;Z)V

    .line 360
    return-void
.end method
