.class final enum Ljava8/util/stream/StreamOpFlag$Type;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/StreamOpFlag$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum OP:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum STREAM:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

.field public static final enum UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const-string v1, "SPLITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const-string v1, "STREAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const-string v1, "OP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const-string v1, "TERMINAL_OP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljava8/util/stream/StreamOpFlag$Type;

    const-string v1, "UPSTREAM_TERMINAL_OP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava8/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava8/util/stream/StreamOpFlag$Type;

    sget-object v7, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v7, v1, v2

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v2, v1, v3

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v2, v1, v4

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljava8/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/StreamOpFlag$Type;
    .locals 1

    const-class v0, Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/StreamOpFlag$Type;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/StreamOpFlag$Type;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->$VALUES:[Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v0}, [Ljava8/util/stream/StreamOpFlag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/StreamOpFlag$Type;

    return-object v0
.end method
