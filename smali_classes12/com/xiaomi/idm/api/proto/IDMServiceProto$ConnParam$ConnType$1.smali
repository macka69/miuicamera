.class final Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;
.super Ljava/lang/Object;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;->findValueByNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method
