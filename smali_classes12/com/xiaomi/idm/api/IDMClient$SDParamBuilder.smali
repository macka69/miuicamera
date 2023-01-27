.class public final Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;
.super Ljava/lang/Object;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDParamBuilder"
.end annotation


# instance fields
.field discType:I

.field serviceFilter:Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;

.field serviceSecurityType:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)V
    .locals 0
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceFilter:Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;

    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->discType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceSecurityType:I

    return-void
.end method


# virtual methods
.method public discType(I)Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->discType:I

    return-object p0
.end method

.method public serviceSecurityType(I)Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceSecurityType:I

    return-object p0
.end method
