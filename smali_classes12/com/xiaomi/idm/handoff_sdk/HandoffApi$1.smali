.class Lcom/xiaomi/idm/handoff_sdk/HandoffApi$1;
.super Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub;
.source "HandoffApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/handoff_sdk/HandoffApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$1;->this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback$Stub;-><init>()V

    return-void
.end method
