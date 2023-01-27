.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;

    invoke-direct {v0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$setRecordType$1(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
