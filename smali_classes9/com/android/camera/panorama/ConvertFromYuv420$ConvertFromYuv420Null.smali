.class Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;
.super Ljava/lang/Object;
.source "ConvertFromYuv420.java"

# interfaces
.implements Lcom/android/camera/panorama/IImage2BytesConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/ConvertFromYuv420;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvertFromYuv420Null"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/ConvertFromYuv420;


# direct methods
.method private constructor <init>(Lcom/android/camera/panorama/ConvertFromYuv420;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;->this$0:Lcom/android/camera/panorama/ConvertFromYuv420;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/panorama/ConvertFromYuv420;Lcom/android/camera/panorama/ConvertFromYuv420$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;-><init>(Lcom/android/camera/panorama/ConvertFromYuv420;)V

    return-void
.end method


# virtual methods
.method public image2bytes(Landroid/media/Image;)[B
    .locals 2

    invoke-static {p1}, Lcom/android/camera/panorama/PanoramaGP3ImageFormat;->getImageFormat(Landroid/media/Image;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YUV420_PLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;->this$0:Lcom/android/camera/panorama/ConvertFromYuv420;

    new-instance v1, Lcom/android/camera/panorama/ConvertFromYuv420Planar;

    invoke-direct {v1}, Lcom/android/camera/panorama/ConvertFromYuv420Planar;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/panorama/ConvertFromYuv420;->access$102(Lcom/android/camera/panorama/ConvertFromYuv420;Lcom/android/camera/panorama/IImage2BytesConverter;)Lcom/android/camera/panorama/IImage2BytesConverter;

    goto :goto_0

    :cond_0
    const-string v1, "YUV420_SEMIPLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;->this$0:Lcom/android/camera/panorama/ConvertFromYuv420;

    new-instance v1, Lcom/android/camera/panorama/ConvertFromYuv420SemiPlanar;

    invoke-direct {v1}, Lcom/android/camera/panorama/ConvertFromYuv420SemiPlanar;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/panorama/ConvertFromYuv420;->access$102(Lcom/android/camera/panorama/ConvertFromYuv420;Lcom/android/camera/panorama/IImage2BytesConverter;)Lcom/android/camera/panorama/IImage2BytesConverter;

    goto :goto_0

    :cond_1
    const-string v1, "YVU420_SEMIPLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;->this$0:Lcom/android/camera/panorama/ConvertFromYuv420;

    new-instance v1, Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;

    invoke-direct {v1}, Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/panorama/ConvertFromYuv420;->access$102(Lcom/android/camera/panorama/ConvertFromYuv420;Lcom/android/camera/panorama/IImage2BytesConverter;)Lcom/android/camera/panorama/IImage2BytesConverter;

    :goto_0
    iget-object p0, p0, Lcom/android/camera/panorama/ConvertFromYuv420$ConvertFromYuv420Null;->this$0:Lcom/android/camera/panorama/ConvertFromYuv420;

    invoke-static {p0}, Lcom/android/camera/panorama/ConvertFromYuv420;->access$100(Lcom/android/camera/panorama/ConvertFromYuv420;)Lcom/android/camera/panorama/IImage2BytesConverter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/panorama/IImage2BytesConverter;->image2bytes(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
