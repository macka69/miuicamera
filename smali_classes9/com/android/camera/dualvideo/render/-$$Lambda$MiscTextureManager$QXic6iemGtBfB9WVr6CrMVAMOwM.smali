.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->lambda$release$3(Lcom/android/camera/dualvideo/render/MiscRenderItem;)V

    return-void
.end method
