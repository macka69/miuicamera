.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->triggerUpdateBlurTex()V

    return-void
.end method
