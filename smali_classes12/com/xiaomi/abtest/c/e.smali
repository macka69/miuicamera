.class public Lcom/xiaomi/abtest/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final n:Ljava/lang/String; = "FlowUnit"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

.field protected d:I

.field protected e:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/xiaomi/abtest/EnumType$DiversionType;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/xiaomi/abtest/c/a;

.field protected m:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;ILcom/xiaomi/abtest/EnumType$DiversionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

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

    move v0, p6

    iput v0, v8, Lcom/xiaomi/abtest/c/e;->m:I

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/xiaomi/abtest/c/e;->h:Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/abtest/c/e;->a:I

    iput-object p2, p0, Lcom/xiaomi/abtest/c/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/abtest/c/e;->c:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    iput p4, p0, Lcom/xiaomi/abtest/c/e;->d:I

    iput-object p5, p0, Lcom/xiaomi/abtest/c/e;->e:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    iput-object p6, p0, Lcom/xiaomi/abtest/c/e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/abtest/c/e;->g:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/c/e;->a:I

    return p0
.end method

.method public a(Lcom/xiaomi/abtest/EnumType$DiversionType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->h:Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-void
.end method

.method public a(Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->e:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-void
.end method

.method public a(Lcom/xiaomi/abtest/EnumType$FlowUnitType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->c:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    return-void
.end method

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

    const-string p0, "FlowUnit"

    const-string p1, "Base class FlowUnit has no traffic method"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/abtest/c/e;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->k:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(I)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->j:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public a(Lcom/xiaomi/abtest/b/b;)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->l:Lcom/xiaomi/abtest/c/a;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->c()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/abtest/c/a;->a(Ljava/util/Map;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlowUnit"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b(Lcom/xiaomi/abtest/b/b;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/abtest/c/f;->a:[I

    iget-object v1, p0, Lcom/xiaomi/abtest/c/e;->h:Lcom/xiaomi/abtest/EnumType$DiversionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "-"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x14

    new-array p1, p1, [B

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/abtest/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    array-length v0, p1

    iget p0, p0, Lcom/xiaomi/abtest/c/e;->m:I

    invoke-static {p1, v0, p0}, Lcom/xiaomi/abtest/d/a;->a([BII)I

    move-result p0

    sget-object p1, Lcom/xiaomi/abtest/b/a;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/abtest/c/e;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->c:Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    return-object p0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/abtest/c/e;->d:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->g:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/abtest/c/e;->d:I

    return p0
.end method

.method public e()Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->e:Lcom/xiaomi/abtest/EnumType$FlowUnitStatus;

    return-object p0
.end method

.method public f()Lcom/xiaomi/abtest/EnumType$DiversionType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->h:Lcom/xiaomi/abtest/EnumType$DiversionType;

    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    return-object p0
.end method

.method public h()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->j:Ljava/util/Set;

    return-object p0
.end method

.method public i()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->k:Ljava/util/Map;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/abtest/c/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->j:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/abtest/c/e;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/abtest/c/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/abtest/c/e;->c()Lcom/xiaomi/abtest/EnumType$FlowUnitType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const/4 p0, 0x3

    aput-object v2, v0, p0

    const/4 p0, 0x4

    aput-object v1, v0, p0

    const-string p0, "%d,%s,%s,params:[%s] bucketIds:[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
