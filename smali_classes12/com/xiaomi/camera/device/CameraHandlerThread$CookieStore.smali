.class public final Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CookieStore"
.end annotation


# instance fields
.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;-><init>()V

    return-void
.end method

.method static synthetic lambda$getCookie$0(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V

    return-object v0
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    sget-object v0, Lcom/xiaomi/camera/device/-$$Lambda$CameraHandlerThread$CookieStore$zaY8EEhxl7SXk0bCgeGWRZlFr3g;->INSTANCE:Lcom/xiaomi/camera/device/-$$Lambda$CameraHandlerThread$CookieStore$zaY8EEhxl7SXk0bCgeGWRZlFr3g;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    return-object p0
.end method

.method public getCookies()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCookies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
