.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$hEaEW-wXgJ0rB5xQp6ptqLxrDjY;

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

    check-cast p1, Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    return-void
.end method
