.class public Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand$PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBuilder"
.end annotation


# instance fields
.field private mPropertyCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand$PropertyBuilder;->mPropertyCommandMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand$PropertyBuilder;->mPropertyCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand$PropertyBuilder;->mPropertyCommandMap:Ljava/util/HashMap;

    return-object p0
.end method
