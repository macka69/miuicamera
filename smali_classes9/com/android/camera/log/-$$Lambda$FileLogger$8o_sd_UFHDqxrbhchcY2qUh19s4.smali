.class public final synthetic Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$8o_sd_UFHDqxrbhchcY2qUh19s4;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/android/camera/log/FileLogger;->lambda$w$11(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
