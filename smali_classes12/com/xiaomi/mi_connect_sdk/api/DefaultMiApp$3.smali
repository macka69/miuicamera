.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;
.super Ljava/lang/Object;
.source "DefaultMiApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

.field final synthetic val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    return-void
.end method
