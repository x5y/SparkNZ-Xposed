.class public Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineExtendedValueDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c71e4ee6dcc154L


# instance fields
.field public message:Ljava/lang/String;

.field public screens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getScreens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->screens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->screens:Ljava/util/List;

    .line 41
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->screens:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setScreens(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "screens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->screens:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
