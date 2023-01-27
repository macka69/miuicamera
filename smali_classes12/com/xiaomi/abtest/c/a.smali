.class public Lcom/xiaomi/abtest/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/abtest/c/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Condition"


# instance fields
.field private b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/abtest/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/abtest/c/a;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/xiaomi/abtest/c/a;

    invoke-direct {p0}, Lcom/xiaomi/abtest/c/a;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/abtest/c/a;->c:Ljava/util/ArrayList;

    const-string v2, "relation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->valueOf(Ljava/lang/String;)Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    const-string v2, "filters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/abtest/c/a$a;

    invoke-direct {v5}, Lcom/xiaomi/abtest/c/a$a;-><init>()V

    const-string v6, "propertyName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    const-string v6, "propertyValue"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    const-string v6, "operator"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->valueOf(I)Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    move-result-object v4

    iput-object v4, v5, Lcom/xiaomi/abtest/c/a$a;->b:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    sget-object v6, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_IN:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v4, v6, :cond_2

    iget-object v4, v5, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    array-length v7, v4

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v4, v8

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iput-object v6, v5, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/abtest/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Condition"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()Lcom/xiaomi/abtest/EnumType$ConditionRelation;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    return-object p0
.end method

.method public a(Lcom/xiaomi/abtest/EnumType$ConditionRelation;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/abtest/c/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/abtest/c/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/abtest/c/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    sget-object v2, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->OR:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    if-ne v1, v2, :cond_1f

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/abtest/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/abtest/c/a$a;

    iget-object v5, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    return v0

    :cond_3
    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->b:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_EQ:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v6, v7, :cond_4

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_8

    :cond_4
    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    const-string v8, "null"

    const-string v9, "%s value type not match, get:%s but need:%s"

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ne v6, v7, :cond_8

    invoke-static {v5}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v5, v7

    if-lez v4, :cond_b

    :goto_2
    move v4, v3

    goto/16 :goto_8

    :cond_5
    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_2

    :cond_6
    new-array p0, v11, [Ljava/lang/Object;

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    aput-object p1, p0, v0

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_3
    aput-object v8, p0, v3

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v10

    invoke-static {v9, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_GE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v6, v7, :cond_e

    invoke-static {v5}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v5, v7

    if-ltz v4, :cond_b

    goto :goto_2

    :cond_9
    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_c

    if-eqz v1, :cond_a

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    move v1, v3

    goto :goto_4

    :cond_a
    move v1, v0

    :cond_b
    :goto_4
    move v4, v0

    goto/16 :goto_8

    :cond_c
    new-array p0, v11, [Ljava/lang/Object;

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    aput-object p1, p0, v0

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_5
    aput-object v8, p0, v3

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v10

    invoke-static {v9, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LT:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v6, v7, :cond_12

    invoke-static {v5}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gez v4, :cond_b

    goto/16 :goto_2

    :cond_f
    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_10

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_b

    goto/16 :goto_2

    :cond_10
    new-array p0, v11, [Ljava/lang/Object;

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    aput-object p1, p0, v0

    if-nez v5, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_6
    aput-object v8, p0, v3

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v10

    invoke-static {v9, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_LE:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v6, v7, :cond_16

    invoke-static {v5}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_b

    goto/16 :goto_2

    :cond_13
    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_14

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_b

    goto/16 :goto_2

    :cond_14
    new-array p0, v11, [Ljava/lang/Object;

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    aput-object p1, p0, v0

    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_7
    aput-object v8, p0, v3

    iget-object p1, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v10

    invoke-static {v9, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    sget-object v7, Lcom/xiaomi/abtest/EnumType$ConditionOperator;->OP_IN:Lcom/xiaomi/abtest/EnumType$ConditionOperator;

    if-ne v6, v7, :cond_1d

    iget-object v6, v4, Lcom/xiaomi/abtest/c/a$a;->c:Ljava/lang/Object;

    instance-of v7, v6, Ljava/util/HashSet;

    if-eqz v7, :cond_1c

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/xiaomi/abtest/c/a$a;->a:Ljava/lang/String;

    aput-object v4, v8, v0

    aput-object v5, v8, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v10

    const-string v4, "%s contains %s:%s\n"

    invoke-virtual {v7, v4, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v4, v6

    :goto_8
    if-nez v4, :cond_17

    iget-object v5, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    sget-object v6, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    if-ne v5, v6, :cond_17

    return v0

    :cond_17
    if-ne v4, v3, :cond_18

    iget-object v5, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    sget-object v6, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->OR:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    if-ne v5, v6, :cond_18

    return v3

    :cond_18
    iget-object v5, p0, Lcom/xiaomi/abtest/c/a;->b:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    sget-object v6, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->AND:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    if-ne v5, v6, :cond_1b

    if-eqz v1, :cond_1a

    if-eqz v4, :cond_1a

    :cond_19
    :goto_9
    move v1, v3

    goto/16 :goto_1

    :cond_1a
    move v1, v0

    goto/16 :goto_1

    :cond_1b
    sget-object v6, Lcom/xiaomi/abtest/EnumType$ConditionRelation;->OR:Lcom/xiaomi/abtest/EnumType$ConditionRelation;

    if-ne v5, v6, :cond_2

    if-nez v1, :cond_19

    if-eqz v4, :cond_1a

    goto :goto_9

    :cond_1c
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "operator is IN, but property value is not a SET"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "invalid operator"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    return v1

    :cond_1f
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "invalid relation"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/abtest/c/a$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method
