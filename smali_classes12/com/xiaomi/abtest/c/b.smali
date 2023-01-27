.class public Lcom/xiaomi/abtest/c/b;
.super Lcom/xiaomi/abtest/c/e;


# static fields
.field private static final n:Ljava/lang/String; = "Domain"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Ljava/util/TreeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/abtest/EnumType$FlowUnitType;",
            "I",
            "Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/abtest/c/e;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    move-object v0, p6

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->j:Ljava/util/Set;

    invoke-static/range {p7 .. p7}, Lcom/xiaomi/abtest/c/a;->a(Ljava/lang/String;)Lcom/xiaomi/abtest/c/a;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->l:Lcom/xiaomi/abtest/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/abtest/b/b;",
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/abtest/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/abtest/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    const-string v1, "Domain"

    if-nez v0, :cond_0

    const-string p0, "children haven\'t been initialized"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_LAYER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "added child must be TYPE_LAYER"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
