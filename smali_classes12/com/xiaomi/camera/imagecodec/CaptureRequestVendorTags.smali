.class public Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;
.super Ljava/lang/Object;
.source "CaptureRequestVendorTags.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureRequestVendorTags"

.field public static final XIAOMI_IMAGE_NAME:Lcom/xiaomi/camera/imagecodec/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final XIAOMI_JPEG_ORIENTATION:Lcom/xiaomi/camera/imagecodec/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static requestConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/imagecodec/-$$Lambda$CaptureRequestVendorTags$vB_OupsJ9ODp1bj8ISQ7tV2ldJg;->INSTANCE:Lcom/xiaomi/camera/imagecodec/-$$Lambda$CaptureRequestVendorTags$vB_OupsJ9ODp1bj8ISQ7tV2ldJg;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_JPEG_ORIENTATION:Lcom/xiaomi/camera/imagecodec/VendorTag;

    sget-object v0, Lcom/xiaomi/camera/imagecodec/-$$Lambda$CaptureRequestVendorTags$R0Cupojs4360bVfpUpYd-q04EnU;->INSTANCE:Lcom/xiaomi/camera/imagecodec/-$$Lambda$CaptureRequestVendorTags$R0Cupojs4360bVfpUpYd-q04EnU;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_IMAGE_NAME:Lcom/xiaomi/camera/imagecodec/VendorTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "xiaomi.jpeg.orientation"

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/String;
    .locals 1

    const-string v0, "xiaomi.snapshot.imageName"

    return-object v0
.end method

.method static requestKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find/call Key constructor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CaptureRequestVendorTags"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
