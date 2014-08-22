.class public Lcom/google/inject/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field public static final NO_SCOPE:Lcom/google/inject/Scope;

.field private static final NULL:Ljava/lang/Object;

.field public static final SINGLETON:Lcom/google/inject/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/inject/Scopes$1;

    invoke-direct {v0}, Lcom/google/inject/Scopes$1;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    .line 113
    new-instance v0, Lcom/google/inject/Scopes$2;

    invoke-direct {v0}, Lcom/google/inject/Scopes$2;-><init>()V

    sput-object v0, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/inject/Scopes;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public static isSingleton(Lcom/google/inject/Binding;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    :goto_0
    new-instance v4, Lcom/google/inject/Scopes$3;

    invoke-direct {v4}, Lcom/google/inject/Scopes$3;-><init>()V

    invoke-interface {p0, v4}, Lcom/google/inject/Binding;->acceptScopingVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 151
    .local v3, "singleton":Z
    if-eqz v3, :cond_0

    .line 152
    const/4 v4, 0x1

    .line 171
    :goto_1
    return v4

    .line 155
    :cond_0
    instance-of v4, p0, Lcom/google/inject/internal/LinkedBindingImpl;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 156
    check-cast v2, Lcom/google/inject/internal/LinkedBindingImpl;

    .line 157
    .local v2, "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v1

    .line 158
    .local v1, "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v2}, Lcom/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 160
    goto :goto_0

    .line 162
    .end local v1    # "injector":Lcom/google/inject/Injector;
    .end local v2    # "linkedBinding":Lcom/google/inject/internal/LinkedBindingImpl;, "Lcom/google/inject/internal/LinkedBindingImpl<*>;"
    :cond_1
    instance-of v4, p0, Lcom/google/inject/spi/ExposedBinding;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 163
    check-cast v0, Lcom/google/inject/spi/ExposedBinding;

    .line 164
    .local v0, "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v1

    .line 165
    .restart local v1    # "injector":Lcom/google/inject/Injector;
    if-eqz v1, :cond_2

    .line 166
    invoke-interface {v0}, Lcom/google/inject/spi/ExposedBinding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object p0

    .line 167
    goto :goto_0

    .line 171
    .end local v0    # "exposedBinding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<*>;"
    .end local v1    # "injector":Lcom/google/inject/Injector;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
