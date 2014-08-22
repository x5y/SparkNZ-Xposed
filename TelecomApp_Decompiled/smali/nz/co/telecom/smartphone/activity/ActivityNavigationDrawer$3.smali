.class Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;
.super Ljava/lang/Object;
.source "ActivityNavigationDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->displayExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 250
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 251
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->finish()V

    .line 252
    return-void
.end method
