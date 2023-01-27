.class public final synthetic Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;

    invoke-direct {v0}, Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;-><init>()V

    sput-object v0, Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;->INSTANCE:Lcom/android/camera/-$$Lambda$OnScreenHint$jWK8lBSZAKboV6PXAp9eQNIYw_o;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/OnScreenHint;->lambda$showTips$1(Landroid/view/View;)V

    return-void
.end method
