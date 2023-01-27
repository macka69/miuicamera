.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;
.super Ljava/lang/Object;
.source "CustomFacebeautyOrder.java"


# static fields
.field public static final BEARD_ORDER:I = 0xa

.field public static final BLUSHER_ORDER:I = 0x5

.field public static final EYEBROW_ORDER:I = 0x4

.field public static final EYELASH_ORDER:I = 0x3

.field public static final EYELINER_ORDER:I = 0x2

.field public static final EYESHADOW_OREDER:I = 0x1

.field public static final FACEMAKEUP_ORDER:I = 0x8

.field public static final LIPGLOSS_ORDER:I = 0x9

.field public static final MAKEUPORDER_COUNT:I = 0xb

.field public static final MOLE_ORDER:I = 0x7

.field public static final PUPIL_ORDER:I = 0x0

.field public static final SPOT_ORDER:I = 0x6

.field private static canuSerOrder:[Ljava/lang/Integer;

.field private static orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMakeUpOrderItems([I)[Ljava/lang/Integer;
    .locals 4

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Integer;

    sput-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->canuSerOrder:[Ljava/lang/Integer;

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->orderList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/CustomFacebeautyOrder;->canuSerOrder:[Ljava/lang/Integer;

    return-object p0
.end method
