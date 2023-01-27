.class public final synthetic Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;->INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$CompletablePreFixCamera2Setup$vo6-QvbRqgK4RzcRm2mEaX9P43w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->lambda$loadSettings$1(Ljava/lang/Throwable;)V

    return-void
.end method
