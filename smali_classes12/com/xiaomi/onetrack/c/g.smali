.class public Lcom/xiaomi/onetrack/c/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:J = 0x0L

.field public static final b:J = 0x1L

.field public static final c:J = 0x2L

.field public static final d:Ljava/lang/String; = "eventName"

.field public static final e:Ljava/lang/String; = "data"

.field private static final f:Ljava/lang/String; = "NetworkAccessManager"

.field private static final g:Ljava/lang/String; = "networkAccess"

.field private static h:Ljava/lang/String; = "onetrack_netaccess_%s"

.field private static i:Ljava/text/SimpleDateFormat;

.field private static j:Z

.field private static volatile k:Z

.field private static volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/c/g;->i:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/onetrack/c/g;->j:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/onetrack/c/g;->k:Z

    sput-boolean v0, Lcom/xiaomi/onetrack/c/g;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/xiaomi/onetrack/a/d;)V
    .locals 2

    const-class v0, Lcom/xiaomi/onetrack/c/g;

    monitor-enter v0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/xiaomi/onetrack/c/g;->l:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/xiaomi/onetrack/c/g;->k:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/onetrack/c/g;->l:Z

    new-instance v1, Lcom/xiaomi/onetrack/c/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/c/i;-><init>(Lcom/xiaomi/onetrack/a/d;)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/c/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/onetrack/c/g;->j:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/onetrack/c/g;->j:Z

    return v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_allowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".ot_net_disallowed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkAccessStateEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "failed "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkAccessManager"

    invoke-static {v1, p0, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_disallowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static declared-synchronized c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/onetrack/c/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/g;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/c/g;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v4

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/onetrack/c/b;->a([B)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-static {v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    :goto_1
    invoke-static {v5}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v5, v4

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    :goto_2
    :try_start_6
    const-string v6, "NetworkAccessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cta getCacheData error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sput-boolean v3, Lcom/xiaomi/onetrack/c/g;->k:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    move-object v4, v2

    :goto_4
    :try_start_8
    invoke-static {v4}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/xiaomi/onetrack/c/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/g;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/c/g;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "eventName"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data"

    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    sput-boolean v3, Lcom/xiaomi/onetrack/c/g;->k:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    :goto_1
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v1

    :goto_2
    :try_start_5
    const-string v2, "NetworkAccessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cta doSaveData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/Closeable;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Z)V
    .locals 6

    const-class v0, Lcom/xiaomi/onetrack/c/g;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/xiaomi/onetrack/c/g;->i:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/onetrack/c/g;->h:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p0, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    array-length p0, v1

    if-nez p0, :cond_5

    sput-boolean v3, Lcom/xiaomi/onetrack/c/g;->k:Z

    goto :goto_3

    :cond_4
    :goto_2
    sput-boolean v3, Lcom/xiaomi/onetrack/c/g;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "NetworkAccessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cta removeObsoleteEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "networkAccess"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/onetrack/c/g;->l:Z

    return p0
.end method
