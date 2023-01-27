.class public Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
.super Ljava/lang/Object;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceFilter"
.end annotation


# instance fields
.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->types:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->uuids:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->uuids:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->types:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addType(Ljava/lang/String;)Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUUID(Ljava/lang/String;)Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->uuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
