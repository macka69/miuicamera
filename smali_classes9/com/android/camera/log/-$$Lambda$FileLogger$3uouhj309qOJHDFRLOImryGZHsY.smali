.class public final synthetic Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/log/-$$Lambda$FileLogger$3uouhj309qOJHDFRLOImryGZHsY;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/log/FileLogger;->lambda$v$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
