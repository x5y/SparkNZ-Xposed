.class Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;
.super Ljava/lang/Object;
.source "AdapterMenuList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMenuList;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v0, p2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setAutoSignin(Z)V

    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-interface {v0, v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 147
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->myPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    goto :goto_0
.end method
