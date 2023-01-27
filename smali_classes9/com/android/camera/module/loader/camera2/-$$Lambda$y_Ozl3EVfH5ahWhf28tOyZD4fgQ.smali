.class public final synthetic Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;->INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$y_Ozl3EVfH5ahWhf28tOyZD4fgQ;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
