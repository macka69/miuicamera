.class public Lcom/xiaomi/abtest/c/g;
.super Lcom/xiaomi/abtest/c/e;


# static fields
.field private static final n:Ljava/lang/String; = "Layer"


# instance fields
.field private o:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field private p:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Lcom/xiaomi/abtest/EnumType$DiversionType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/abtest/c/e;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;ILcom/xiaomi/abtest/EnumType$DiversionType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_UNKNOWN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    iput-object v0, v10, Lcom/xiaomi/abtest/c/g;->o:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/abtest/b/b;",
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/abtest/c/e;->b(Lcom/xiaomi/abtest/b/b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/abtest/c/e;

    invoke-virtual {v1, v0}, Lcom/xiaomi/abtest/c/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/b/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/abtest/c/e;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "check condition failed for:%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layer"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Lcom/xiaomi/abtest/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    const-string v1, "Layer"

    if-nez v0, :cond_0

    const-string p0, "children haven\'t been initialized"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_DOMAIN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_EXPERIMENT:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_EXP_CONTAINER:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "added child must be TYPE_DOMAIN or TYPE_EXPERIMENT or TYPE_EXPERIMENT"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/abtest/c/g;->o:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    sget-object v2, Lcom/xiaomi/abtest/EnumType$FlowUnitType;->TYPE_UNKNOWN:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/abtest/c/g;->o:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    invoke-virtual {p1}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "child of layer must be "

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public a(Lcom/xiaomi/abtest/b/b;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
