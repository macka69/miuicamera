.class public Lmiuix/animation/controller/AnimState;
.super Ljava/lang/Object;
.source "AnimState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/AnimState$StateValue;
    }
.end annotation


# static fields
.field public static final FLAG_DELTA:J = 0x1L

.field public static final FLAG_INIT:J = 0x2L

.field private static STEP:I = 0x64

.field public static final VIEW_POS:I

.field public static final VIEW_SIZE:I = 0xf4240


# instance fields
.field private mGlobalConfig:Lmiuix/animation/base/AnimConfig;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/controller/AnimState$StateValue;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x64

    const v1, 0xf4240

    add-int/2addr v0, v1

    sput v0, Lmiuix/animation/controller/AnimState;->VIEW_POS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag mustn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addPropertyTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    instance-of v0, p2, Lmiuix/animation/property/IIntValueProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p1, v0}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p1

    new-array v0, v1, [J

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    new-array v0, v1, [J

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_0
    return-void
.end method

.method public static alignState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)V
    .locals 4

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    invoke-direct {p2, v1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object v2

    iget v2, v2, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    const v3, 0x49742400    # 1000000.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    sget v3, Lmiuix/animation/controller/AnimState;->VIEW_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->contains(Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, v1}, Lmiuix/animation/controller/AnimState;->addPropertyTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private append(Lmiuix/animation/controller/AnimState;)V
    .locals 4

    iget-object v0, p1, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p1, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    new-instance v2, Lmiuix/animation/controller/AnimState$StateValue;

    iget-object v3, p1, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState$StateValue;-><init>(Lmiuix/animation/controller/AnimState$StateValue;)V

    iget-object v3, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;F[J)Lmiuix/animation/controller/AnimState;
    .locals 1

    new-instance v0, Lmiuix/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;I[J)Lmiuix/animation/controller/AnimState;
    .locals 1

    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/animation/controller/AnimState$StateValue;->setValue(F)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-wide p2, p3, p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/controller/AnimState$StateValue;->setFlags(J)Lmiuix/animation/controller/AnimState$StateValue;

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 2

    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState$StateValue;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState$StateValue;-><init>()V

    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/animation/controller/AnimState$StateValue;->setIntValue(I)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-wide p2, p3, p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/controller/AnimState$StateValue;->setFlags(J)Lmiuix/animation/controller/AnimState$StateValue;

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_1
    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs addConfig([Lmiuix/animation/base/AnimConfig;)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    iget-object v4, v3, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {v4}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-direct {p0, v7}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object v7

    iput-object v3, v7, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iput-object v3, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public enable(Lmiuix/animation/property/FloatProperty;Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p0, :cond_0

    iput-boolean p2, p0, Lmiuix/animation/controller/AnimState$StateValue;->enable:Z

    :cond_0
    return-void
.end method

.method public get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p0, :cond_0

    iget v0, p0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    invoke-static {p1, p2, v0}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    return p1

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public getAllConfig(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getGlobalConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState$StateValue;

    iget-object v0, v0, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimConfig;
    .locals 1

    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p0

    iget-object v0, p0, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0, p1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/property/FloatProperty;)V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->config:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public getFlags(Lmiuix/animation/property/FloatProperty;)J
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p0

    iget-wide p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    return-wide p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    new-instance v0, Lmiuix/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->getFloat(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    return p0
.end method

.method public getFloat(Lmiuix/animation/property/FloatProperty;)F
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p0, :cond_0

    iget p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->value:F

    goto :goto_0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return p0
.end method

.method public getGlobalConfig()Lmiuix/animation/base/AnimConfig;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/AnimState;->getInt(Lmiuix/animation/property/FloatProperty;)I

    move-result p0

    return p0
.end method

.method public getInt(Lmiuix/animation/property/FloatProperty;)I
    .locals 2

    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p0, :cond_1

    iget p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->intValue:I

    return p0

    :cond_1
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public hasFlags(Lmiuix/animation/property/FloatProperty;J)Z
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->getStateValue(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState$StateValue;

    move-result-object p0

    iget-wide p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->flags:J

    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/AnimState$StateValue;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lmiuix/animation/controller/AnimState$StateValue;->enable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmiuix/animation/controller/AnimState;->append(Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method setGlobalConfig(Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mGlobalConfig:Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nAnimState{mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/AnimState;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/controller/AnimState;->mMap:Ljava/util/Map;

    const-string v1, "    "

    invoke-static {p0, v1}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
