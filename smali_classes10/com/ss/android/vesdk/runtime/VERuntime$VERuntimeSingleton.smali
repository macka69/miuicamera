.class final enum Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;
.super Ljava/lang/Enum;
.source "VERuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/VERuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VERuntimeSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

.field public static final enum INSTANCE:Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;


# instance fields
.field private veRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    aput-object v0, v1, v2

    sput-object v1, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->$VALUES:[Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/ss/android/vesdk/runtime/VERuntime;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime$1;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->veRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->$VALUES:[Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    return-object v0
.end method


# virtual methods
.method public getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->veRuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    return-object p0
.end method
