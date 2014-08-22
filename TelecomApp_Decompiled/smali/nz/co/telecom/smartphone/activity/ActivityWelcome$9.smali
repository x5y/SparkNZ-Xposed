.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

.field final synthetic val$errorMessageForDisplay:Ljava/lang/String;

.field final synthetic val$errorMessageTitleForDisplay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->val$errorMessageTitleForDisplay:Ljava/lang/String;

    iput-object p3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->val$errorMessageForDisplay:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 797
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 798
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v5, v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, "myDialogView":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 801
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 802
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 804
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 812
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    invoke-virtual {v3, v7}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 820
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->val$errorMessageTitleForDisplay:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->val$errorMessageForDisplay:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 823
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 824
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 826
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 827
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v5, v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method
