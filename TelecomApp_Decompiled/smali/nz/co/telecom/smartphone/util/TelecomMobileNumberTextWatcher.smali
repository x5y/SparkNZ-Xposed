.class public Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;
.super Ljava/lang/Object;
.source "TelecomMobileNumberTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;->mFormatting:Z

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;->mFormatting:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "tfinal":Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 31
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;->mFormatting:Z

    .line 33
    .end local v0    # "tfinal":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 20
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 16
    return-void
.end method
