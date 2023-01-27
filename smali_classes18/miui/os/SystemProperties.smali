.class public Lmiui/os/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addChangeCallback(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lmiui/os/SystemProperties;

    invoke-static {v1}, Lcom/miui/internal/os/Native;->addPropertyChangeCallbackNative(Ljava/lang/Class;)V

    :cond_0
    sget-object v1, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected static callChangeCallbacks()V
    .locals 4

    sget-object v0, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/internal/os/Native;->getPropertyNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key.length > 31"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    invoke-static {p0}, Lcom/miui/internal/os/Native;->getPropertyNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getBooleanPropertyNative(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->getIntPropertyNative(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getLongPropertyNative(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeChangeCallback(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/os/SystemProperties;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static set(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "val.length > 91"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/internal/os/Native;->setPropertyNative(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static set(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
