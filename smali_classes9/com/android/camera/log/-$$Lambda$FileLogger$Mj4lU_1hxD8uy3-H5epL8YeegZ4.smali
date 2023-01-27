.class public final synthetic Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$Mj4lU_1hxD8uy3-H5epL8YeegZ4;->f$2:Ljava/lang/Throwable;

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/FileLogger;->lambda$v$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
