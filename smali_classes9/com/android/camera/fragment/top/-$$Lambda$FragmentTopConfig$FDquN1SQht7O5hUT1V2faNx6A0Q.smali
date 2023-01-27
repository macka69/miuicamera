.class public final synthetic Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;->INSTANCE:Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$setTopImageResource$3(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
