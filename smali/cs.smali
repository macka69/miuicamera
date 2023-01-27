.class public Lcs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lcs;

.field static final b:Lcs;

.field private static volatile c:Z

.field private static volatile d:Lcs;


# instance fields
.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcs;-><init>([B)V

    sput-object v0, Lcs;->b:Lcs;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcs;
    .locals 2

    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_1

    const-class v1, Lcs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_0

    sget-object v0, Lcs;->b:Lcs;

    sput-object v0, Lcs;->d:Lcs;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Leh;I)Lcq;
    .locals 1

    iget-object p0, p0, Lcs;->e:Ljava/util/Map;

    new-instance v0, Lcr;

    invoke-direct {v0, p1, p2}, Lcr;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcq;

    return-object p0
.end method
