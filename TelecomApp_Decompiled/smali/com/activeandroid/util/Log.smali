.class public final Lcom/activeandroid/util/Log;
.super Ljava/lang/Object;


# static fields
.field private static sEnabled:Z

.field private static sTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ActiveAndroid"

    sput-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return-void
.end method

.method public static varargs t(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "test"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
