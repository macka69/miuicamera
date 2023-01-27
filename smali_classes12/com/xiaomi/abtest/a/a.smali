.class public Lcom/xiaomi/abtest/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ExpPlatformManager"

.field private static final b:Ljava/lang/String; = "id"

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "status"

.field private static final e:Ljava/lang/String; = "bucketIds"

.field private static final f:Ljava/lang/String; = "name"

.field private static final g:Ljava/lang/String; = "fid"

.field private static final h:Ljava/lang/String; = "fPath"

.field private static final i:Ljava/lang/String; = "xPath"

.field private static final j:Ljava/lang/String; = "conditionString"

.field private static final k:Ljava/lang/String; = "diversionType"

.field private static final l:Ljava/lang/String; = "hashSeed"

.field private static final m:Ljava/lang/String; = "parameters"

.field private static final n:Ljava/lang/String; = "children"

.field private static volatile w:Lcom/xiaomi/abtest/a/a;


# instance fields
.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/ExperimentInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/abtest/a/a;->o:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/abtest/a/a;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/abtest/a/a;->q:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/abtest/a/a;->s:I

    iput-boolean v0, p0, Lcom/xiaomi/abtest/a/a;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/abtest/a/a;->t:Z

    invoke-virtual {p0}, Lcom/xiaomi/abtest/a/a;->b()V

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->e()V

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->c()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/abtest/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/xiaomi/abtest/a/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/abtest/a/a;->w:Lcom/xiaomi/abtest/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/abtest/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/abtest/a/a;->w:Lcom/xiaomi/abtest/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/abtest/a/a;

    invoke-direct {v1}, Lcom/xiaomi/abtest/a/a;-><init>()V

    sput-object v1, Lcom/xiaomi/abtest/a/a;->w:Lcom/xiaomi/abtest/a/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/abtest/a/a;->w:Lcom/xiaomi/abtest/a/a;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/xiaomi/abtest/c/e;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v5

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;->valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    move-result-object v7

    sget-object v1, Lcom/xiaomi/abtest/a/f;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "conditionString"

    const-string v3, "bucketIds"

    const-string v6, "fPath"

    const-string v8, "xPath"

    const-string v9, "fid"

    const-string v10, "name"

    const-string v11, "id"

    const/4 v13, 0x1

    if-eq v1, v13, :cond_6

    const/4 v14, 0x2

    const-string v15, "ExpPlatformManager"

    const-string v4, "hashSeed"

    const-string v12, "diversionType"

    if-eq v1, v14, :cond_4

    const/4 v14, 0x3

    if-eq v1, v14, :cond_2

    const/4 v14, 0x4

    if-eq v1, v14, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/abtest/EnumType$DiversionType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$DiversionType;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "invalid diversionType:"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v12, Lcom/xiaomi/abtest/c/c;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v12

    move-object v4, v10

    move v6, v9

    move v8, v11

    move-object v9, v1

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/abtest/c/c;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;ILcom/xiaomi/abtest/EnumType$DiversionType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v12

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/xiaomi/abtest/c/d;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v1

    move v6, v9

    move-object v8, v12

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/abtest/c/d;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Ljava/util/TreeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/abtest/EnumType$DiversionType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$DiversionType;

    move-result-object v1

    if-nez v1, :cond_5

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v1, v12

    const-string v0, "invalid diversionType:%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    new-instance v13, Lcom/xiaomi/abtest/c/g;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v2, v13

    move-object v4, v10

    move v6, v9

    move-object v8, v1

    move v9, v11

    move-object v10, v14

    move-object v11, v15

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/abtest/c/g;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Lcom/xiaomi/abtest/EnumType$DiversionType;ILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v13

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    move v3, v12

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/xiaomi/abtest/c/b;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v1

    move v6, v9

    move-object v8, v13

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/abtest/c/b;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Ljava/util/TreeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    :goto_4
    const-string v1, "parameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v3}, Lcom/xiaomi/abtest/c/e;->a(Ljava/util/Map;)V

    const-string v1, "children"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v12, v1, :cond_9

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/abtest/a/a;->a(Lorg/json/JSONObject;)Lcom/xiaomi/abtest/c/e;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/c/e;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    return-object v4
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/abtest/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/abtest/a/e;-><init>(Lcom/xiaomi/abtest/a/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/abtest/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/abtest/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/ExperimentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "/ExpLayer/NonOverLapDomain/"

    const-string v2, "/ExpLayer/ExpDomain/"

    const-string v3, "/LaunchLayer/LaunchDomain/"

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/abtest/ExperimentInfo;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/abtest/ExperimentInfo;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/xiaomi/abtest/ExperimentInfo;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/abtest/ExperimentInfo;->setParams(Ljava/util/Map;)Lcom/xiaomi/abtest/ExperimentInfo;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/abtest/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/abtest/a/a;->t:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/abtest/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/abtest/a/a;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/abtest/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/abtest/a/a;->u:Z

    return p0
.end method

.method private c()V
    .locals 4

    iget v0, p0, Lcom/xiaomi/abtest/a/a;->s:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/abtest/a/a;->v:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/abtest/a/b;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/abtest/a/b;-><init>(Lcom/xiaomi/abtest/a/a;I)V

    iget-object p0, p0, Lcom/xiaomi/abtest/a/a;->v:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/abtest/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->e()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "expInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/abtest/a/a;->a(Lorg/json/JSONObject;)Lcom/xiaomi/abtest/c/e;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/abtest/a/a;->p:Ljava/util/Map;

    check-cast v5, Lcom/xiaomi/abtest/c/b;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "whitelist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-direct {v14}, Lcom/xiaomi/abtest/ExperimentInfo;-><init>()V

    const-string v15, "expId"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/xiaomi/abtest/ExperimentInfo;->expId:I

    const-string v15, "xPath"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/xiaomi/abtest/ExperimentInfo;->xpath:Ljava/lang/String;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v14, Lcom/xiaomi/abtest/ExperimentInfo;->params:Ljava/util/Map;

    const-string v15, "params"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v3

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v5

    iget-object v5, v14, Lcom/xiaomi/abtest/ExperimentInfo;->params:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_4

    :cond_1
    move-object/from16 p1, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-interface {v11, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_3

    :cond_2
    move-object/from16 p1, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto/16 :goto_2

    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v16, v3

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    iput-object v2, v0, Lcom/xiaomi/abtest/a/a;->q:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_5
    return-void

    :goto_6
    throw v0
.end method

.method static synthetic d(Lcom/xiaomi/abtest/a/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/a/a;->v:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/abtest/a/a;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->c()V

    return-void
.end method

.method private e()V
    .locals 1

    new-instance v0, Lcom/xiaomi/abtest/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/abtest/a/d;-><init>(Lcom/xiaomi/abtest/a/a;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/abtest/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/abtest/a/a;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "https://cdn.experiment.xiaomi.com/service/getExpConf?appName=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iput-object v0, p0, Lcom/xiaomi/abtest/a/a;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/abtest/a/a;->c(Ljava/lang/String;)V

    const-string p0, "abtest"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/h/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/abtest/b/b;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/abtest/b/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/ExperimentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/abtest/a/a;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/abtest/c/b;

    if-nez v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "no appDomain found for appId:%s,appName:%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExpPlatformManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/abtest/c/b;->a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/abtest/c/e;

    new-instance v3, Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-direct {v3}, Lcom/xiaomi/abtest/ExperimentInfo;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/abtest/c/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/abtest/ExperimentInfo;->setExpId(I)Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-virtual {v2}, Lcom/xiaomi/abtest/c/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/abtest/ExperimentInfo;->setXpath(Ljava/lang/String;)Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-virtual {v2}, Lcom/xiaomi/abtest/c/e;->i()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/abtest/ExperimentInfo;->setParams(Ljava/util/Map;)Lcom/xiaomi/abtest/ExperimentInfo;

    invoke-virtual {v2}, Lcom/xiaomi/abtest/c/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/abtest/a/a;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/abtest/a/a;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/xiaomi/abtest/a/a;->s:I

    if-eqz v0, :cond_0

    if-le v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/xiaomi/abtest/a/a;->s:I

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->d()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/abtest/a/a;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/abtest/a/a;->u:Z

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/abtest/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/abtest/a/c;-><init>(Lcom/xiaomi/abtest/a/a;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/abtest/a/a;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xiaomi/abtest/a/a;->e()V

    return-void
.end method
