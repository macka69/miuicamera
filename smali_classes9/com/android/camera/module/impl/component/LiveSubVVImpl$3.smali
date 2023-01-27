.class Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->OnRecordFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

.field final synthetic val$rawInfoPath:Ljava/lang/String;

.field final synthetic val$thumbPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$rawInfoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->apply(Lcom/android/camera/module/loader/NullHolder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/camera/module/loader/NullHolder;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    const/16 v1, 0x5a

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/Util;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$rawInfoPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$500(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->rawInfo:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/Util;->saveToFile(Ljava/lang/String;Ljava/io/File;)Z

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    return-object p0
.end method
