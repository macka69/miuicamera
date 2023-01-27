.class public final synthetic Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;

    invoke-direct {v0}, Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;->INSTANCE:Lcom/android/camera/data/data/global/-$$Lambda$DataItemGlobal$F4GVzV_6Hilho4ssGdGStPVvUuM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->lambda$getSortModes$0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
