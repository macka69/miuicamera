.class public final enum Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;
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
    name = "ENCODE_STANDARD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

.field public static final enum ENCODE_STANDARD_H265:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

.field public static final enum ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    const-string v1, "ENCODE_STANDARD_H264"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    const-string v1, "ENCODE_STANDARD_H265"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H265:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    const-string v1, "ENCODE_STANDARD_MPEG4"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    sget-object v5, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    aput-object v5, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H265:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

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
