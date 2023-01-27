.class final enum Ljava8/util/stream/StreamShape;
.super Ljava/lang/Enum;
.source "StreamShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/StreamShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/util/stream/StreamShape;

.field public static final enum DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

.field public static final enum INT_VALUE:Ljava8/util/stream/StreamShape;

.field public static final enum LONG_VALUE:Ljava8/util/stream/StreamShape;

.field public static final enum REFERENCE:Ljava8/util/stream/StreamShape;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava8/util/stream/StreamShape;

    const-string v1, "REFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    new-instance v0, Ljava8/util/stream/StreamShape;

    const-string v1, "INT_VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava8/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    new-instance v0, Ljava8/util/stream/StreamShape;

    const-string v1, "LONG_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava8/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    new-instance v0, Ljava8/util/stream/StreamShape;

    const-string v1, "DOUBLE_VALUE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava8/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava8/util/stream/StreamShape;

    sget-object v6, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    aput-object v6, v1, v2

    sget-object v2, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    aput-object v2, v1, v3

    sget-object v2, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljava8/util/stream/StreamShape;->$VALUES:[Ljava8/util/stream/StreamShape;

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

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/StreamShape;
    .locals 1

    const-class v0, Ljava8/util/stream/StreamShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/StreamShape;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/StreamShape;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamShape;->$VALUES:[Ljava8/util/stream/StreamShape;

    invoke-virtual {v0}, [Ljava8/util/stream/StreamShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/StreamShape;

    return-object v0
.end method
