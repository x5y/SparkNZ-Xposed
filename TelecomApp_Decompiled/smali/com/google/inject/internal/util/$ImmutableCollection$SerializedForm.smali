.class Lcom/google/inject/internal/util/$ImmutableCollection$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/util/$ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    .line 247
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/inject/internal/util/$ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/google/inject/internal/util/$ImmutableCollection;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/inject/internal/util/$ImmutableCollection$ArrayImmutableCollection;

    iget-object v0, p0, Lcom/google/inject/internal/util/$ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/util/$ImmutableCollection$ArrayImmutableCollection;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method
