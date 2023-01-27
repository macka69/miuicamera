.class public final Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
.super Ljava/lang/Object;
.source "IDMServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RSParamBuilder"
.end annotation


# instance fields
.field commType:I

.field discType:I

.field idmService:Lcom/xiaomi/idm/api/IDMService;

.field intentStr:Ljava/lang/String;

.field intentType:Ljava/lang/String;

.field serviceSecurityType:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;)V
    .locals 1
    .param p1    # Lcom/xiaomi/idm/api/IDMService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentType:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->idmService:Lcom/xiaomi/idm/api/IDMService;

    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->discType:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->commType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->serviceSecurityType:I

    return-void
.end method


# virtual methods
.method public commType(I)Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->commType:I

    return-object p0
.end method

.method public discType(I)Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->discType:I

    return-object p0
.end method

.method public intentStr(Ljava/lang/String;)Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentStr:Ljava/lang/String;

    return-object p0
.end method

.method public intentType(Ljava/lang/String;)Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentType:Ljava/lang/String;

    return-object p0
.end method

.method public serviceSecurityType(I)Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->serviceSecurityType:I

    return-object p0
.end method
