.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;

    invoke-direct {v0}, Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
