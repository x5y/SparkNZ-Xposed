.class public abstract Lcom/google/inject/internal/BindingImpl;
.super Ljava/lang/Object;
.source "BindingImpl.java"

# interfaces
.implements Lcom/google/inject/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Binding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final internalFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile provider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final scoping:Lcom/google/inject/internal/Scoping;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V
    .locals 0
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .param p5, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/inject/internal/BindingImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 41
    iput-object p2, p0, Lcom/google/inject/internal/BindingImpl;->key:Lcom/google/inject/Key;

    .line 42
    iput-object p3, p0, Lcom/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/google/inject/internal/BindingImpl;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    .line 44
    iput-object p5, p0, Lcom/google/inject/internal/BindingImpl;->scoping:Lcom/google/inject/internal/Scoping;

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p3, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/google/inject/internal/BindingImpl;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    .line 49
    iput-object v0, p0, Lcom/google/inject/internal/BindingImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 50
    iput-object p1, p0, Lcom/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/inject/internal/BindingImpl;->key:Lcom/google/inject/Key;

    .line 52
    iput-object p3, p0, Lcom/google/inject/internal/BindingImpl;->scoping:Lcom/google/inject/internal/Scoping;

    .line 53
    return-void
.end method


# virtual methods
.method public acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingScopingVisitor",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/BindingScopingVisitor;, "Lcom/google/inject/spi/BindingScopingVisitor<TV;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Scoping;->acceptVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/ElementVisitor;, "Lcom/google/inject/spi/ElementVisitor<TV;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInjector()Lcom/google/inject/internal/InjectorImpl;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    return-object v0
.end method

.method public getInternalFactory()Lcom/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getProvider()Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->provider:Lcom/google/inject/Provider;

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProvider() not supported for module bindings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingImpl;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/BindingImpl;->provider:Lcom/google/inject/Provider;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->provider:Lcom/google/inject/Provider;

    return-object v0
.end method

.method public getScoping()Lcom/google/inject/internal/Scoping;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->scoping:Lcom/google/inject/internal/Scoping;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public isConstant()Z
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    instance-of v0, p0, Lcom/google/inject/spi/InstanceBinding;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    new-instance v0, Lcom/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/google/inject/Binding;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/inject/internal/BindingImpl;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    const-string v1, "scope"

    iget-object v2, p0, Lcom/google/inject/internal/BindingImpl;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/inject/internal/BindingImpl;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .param p1, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
