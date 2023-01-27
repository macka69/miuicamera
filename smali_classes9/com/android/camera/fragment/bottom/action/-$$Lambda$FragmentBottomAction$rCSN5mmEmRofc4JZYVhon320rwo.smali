.class public final synthetic Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;->INSTANCE:Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$rCSN5mmEmRofc4JZYVhon320rwo;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->lambda$changeBackgroundForDualVideo$3(Lcom/android/camera/dualvideo/util/UserSelectData;)Z

    move-result p0

    return p0
.end method
