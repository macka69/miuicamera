.class final Lep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lep;


# instance fields
.field private final b:Let;

.field private final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lep;

    invoke-direct {v0}, Lep;-><init>()V

    sput-object v0, Lep;->a:Lep;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    iput-object v0, p0, Lep;->b:Let;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Les;
    .locals 9

    const-class v0, Lde;

    const-string v1, "messageType"

    invoke-static {p1, v1}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les;

    if-nez v2, :cond_6

    iget-object v2, p0, Lep;->b:Let;

    invoke-static {p1}, Leu;->a(Ljava/lang/Class;)V

    check-cast v2, Ldz;

    iget-object v2, v2, Ldz;->a:Lef;

    invoke-interface {v2, p1}, Lef;->b(Ljava/lang/Class;)Lee;

    move-result-object v3

    invoke-interface {v3}, Lee;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leu;->c:Lfh;

    sget-object v2, Lct;->a:Lej;

    invoke-interface {v3}, Lee;->b()Leh;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lel;->a(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Leu;->a:Lfh;

    invoke-static {}, Lct;->a()Lej;

    move-result-object v2

    invoke-interface {v3}, Lee;->b()Leh;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lel;->a(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Ldz;->a(Lee;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v4, Len;->b:Lfs;

    sget-object v5, Ldv;->b:Ldv;

    sget-object v6, Leu;->c:Lfh;

    sget-object v7, Lct;->a:Lej;

    sget-object v8, Led;->b:Lff;

    invoke-static/range {v3 .. v8}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v4, Len;->b:Lfs;

    sget-object v5, Ldv;->b:Ldv;

    sget-object v6, Leu;->c:Lfh;

    const/4 v7, 0x0

    sget-object v8, Led;->b:Lff;

    invoke-static/range {v3 .. v8}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ldz;->a(Lee;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Len;->a:Lfs;

    sget-object v5, Ldv;->a:Ldv;

    sget-object v6, Leu;->a:Lfh;

    invoke-static {}, Lct;->a()Lej;

    move-result-object v7

    sget-object v8, Led;->a:Lff;

    invoke-static/range {v3 .. v8}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v4, Len;->a:Lfs;

    sget-object v5, Ldv;->a:Ldv;

    sget-object v6, Leu;->b:Lfh;

    const/4 v7, 0x0

    sget-object v8, Led;->a:Lff;

    invoke-static/range {v3 .. v8}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {p1, v1}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schema"

    invoke-static {v2, v0}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Les;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    return-object p0

    :cond_6
    :goto_2
    return-object v2
.end method

.method public final a(Ljava/lang/Object;)Les;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lep;->a(Ljava/lang/Class;)Les;

    move-result-object p0

    return-object p0
.end method
