.class public final synthetic Lcom/xiaomi/camera/rx/-$$Lambda$SimpleDisposable$bJxzrfW_YiF7t7XQVXX-O9eg9xE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/rx/SimpleDisposable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rx/-$$Lambda$SimpleDisposable$bJxzrfW_YiF7t7XQVXX-O9eg9xE;->f$0:Lcom/xiaomi/camera/rx/SimpleDisposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rx/-$$Lambda$SimpleDisposable$bJxzrfW_YiF7t7XQVXX-O9eg9xE;->f$0:Lcom/xiaomi/camera/rx/SimpleDisposable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->lambda$dispose$0$SimpleDisposable()V

    return-void
.end method
