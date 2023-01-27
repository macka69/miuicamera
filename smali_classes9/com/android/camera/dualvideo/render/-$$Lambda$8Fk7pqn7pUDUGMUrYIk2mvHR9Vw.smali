.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$8Fk7pqn7pUDUGMUrYIk2mvHR9Vw;

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

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    return-object p0
.end method
