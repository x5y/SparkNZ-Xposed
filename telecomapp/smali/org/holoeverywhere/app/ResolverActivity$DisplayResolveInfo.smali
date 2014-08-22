.class final Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lorg/holoeverywhere/app/ResolverActivity;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 57
    iput-object p3, p0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 58
    iput-object p4, p0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 59
    iput-object p5, p0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 60
    return-void
.end method
