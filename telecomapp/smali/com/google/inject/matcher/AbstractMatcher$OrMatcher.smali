.class Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "AbstractMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/matcher/AbstractMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/matcher/AbstractMatcher",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/matcher/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;",
            "Lcom/google/inject/matcher/Matcher",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;, "Lcom/google/inject/matcher/AbstractMatcher$OrMatcher<TT;>;"
    .local p1, "a":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-TT;>;"
    .local p2, "b":Lcom/google/inject/matcher/Matcher;, "Lcom/google/inject/matcher/Matcher<-TT;>;"
    invoke-direct {p0}, Lcom/google/inject/matcher/AbstractMatcher;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    .line 70
    iput-object p2, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;, "Lcom/google/inject/matcher/AbstractMatcher$OrMatcher<TT;>;"
    instance-of v0, p1, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;

    iget-object v0, v0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;, "Lcom/google/inject/matcher/AbstractMatcher$OrMatcher<TT;>;"
    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;, "Lcom/google/inject/matcher/AbstractMatcher$OrMatcher<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;, "Lcom/google/inject/matcher/AbstractMatcher$OrMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->a:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;->b:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
