.class public final Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
.super Ljava/lang/Object;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSParamBuilder"
.end annotation


# instance fields
.field commDataType:I

.field commType:I

.field connLevel:I

.field privateData:[B

.field serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field verifySameAccount:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commType:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commDataType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->connLevel:I

    iput-boolean v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->verifySameAccount:Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->privateData:[B

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0
    .param p1    # Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method


# virtual methods
.method public commDataType(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commDataType:I

    return-object p0
.end method

.method public commType(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commType:I

    return-object p0
.end method

.method public connLevel(I)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->connLevel:I

    return-object p0
.end method

.method public privateData([B)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->privateData:[B

    return-object p0
.end method

.method public verifySameAccount(Z)Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->verifySameAccount:Z

    return-object p0
.end method
