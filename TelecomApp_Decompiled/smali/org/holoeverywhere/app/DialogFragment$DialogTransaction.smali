.class public final Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
.super Ljava/lang/Object;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogTransaction"
.end annotation


# instance fields
.field public dialogTag:Ljava/lang/String;

.field public fragmentManager:Landroid/support/v4/app/FragmentManager;

.field public transactionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
