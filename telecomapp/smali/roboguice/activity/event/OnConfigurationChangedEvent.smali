.class public Lroboguice/activity/event/OnConfigurationChangedEvent;
.super Ljava/lang/Object;
.source "OnConfigurationChangedEvent.java"


# instance fields
.field protected newConfig:Landroid/content/res/Configuration;

.field protected oldConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lroboguice/activity/event/OnConfigurationChangedEvent;->oldConfig:Landroid/content/res/Configuration;

    .line 18
    iput-object p2, p0, Lroboguice/activity/event/OnConfigurationChangedEvent;->newConfig:Landroid/content/res/Configuration;

    .line 19
    return-void
.end method


# virtual methods
.method public getNewConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lroboguice/activity/event/OnConfigurationChangedEvent;->newConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getOldConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lroboguice/activity/event/OnConfigurationChangedEvent;->oldConfig:Landroid/content/res/Configuration;

    return-object v0
.end method
