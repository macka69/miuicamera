.class public final enum Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;
.super Ljava/lang/Enum;
.source "VEVideoEncodeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEVideoEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENCODE_PRESET"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

.field public static final enum ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_ULTRAFAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_SUPERFAST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_VERYFAST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_FASTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_FAST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_MEDIUM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_SLOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_SLOWER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_VERYSLOW"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const-string v1, "ENCODE_LEVEL_PLACEBO"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    sget-object v12, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v12, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v8

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v9

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
