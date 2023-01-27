.class public final synthetic Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;

    invoke-direct {v0}, Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;-><init>()V

    sput-object v0, Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;->INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$EIaZIqGw1jIz7o2t1MA1vFP4P94;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->lambda$static$1(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
