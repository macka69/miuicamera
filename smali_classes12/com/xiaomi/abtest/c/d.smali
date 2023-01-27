.class public Lcom/xiaomi/abtest/c/d;
.super Lcom/xiaomi/abtest/c/e;


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

    move-object v0, p6

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->j:Ljava/util/Set;

    invoke-static/range {p7 .. p7}, Lcom/xiaomi/abtest/c/a;->a(Ljava/lang/String;)Lcom/xiaomi/abtest/c/a;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->l:Lcom/xiaomi/abtest/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/abtest/b/b;",
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
