.class public final enum Lcom/miui/filtersdk/utils/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/filtersdk/utils/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum NORMAL:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string v1, "ROTATION_90"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string v1, "ROTATION_180"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const-string v1, "ROTATION_270"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/miui/filtersdk/utils/Rotation;

    sget-object v6, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v6, v1, v2

    sget-object v2, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

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

.method public static fromInt(I)Lcom/miui/filtersdk/utils/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    :cond_2
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    :cond_3
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    :cond_4
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    const-class v0, Lcom/miui/filtersdk/utils/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/filtersdk/utils/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

    invoke-virtual {v0}, [Lcom/miui/filtersdk/utils/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/utils/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    sget-object v0, Lcom/miui/filtersdk/utils/Rotation$1;->$SwitchMap$com$miui$filtersdk$utils$Rotation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Rotation!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
