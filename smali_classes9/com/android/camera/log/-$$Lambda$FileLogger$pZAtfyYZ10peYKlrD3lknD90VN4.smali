.class public final synthetic Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;

    invoke-direct {v0}, Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;-><init>()V

    sput-object v0, Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;->INSTANCE:Lcom/android/camera/log/-$$Lambda$FileLogger$pZAtfyYZ10peYKlrD3lknD90VN4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/log/FileLogger;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
