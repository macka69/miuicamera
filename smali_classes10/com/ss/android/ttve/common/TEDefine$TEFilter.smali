.class public Lcom/ss/android/ttve/common/TEDefine$TEFilter;
.super Ljava/lang/Object;
.source "TEDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TEFilter"
.end annotation


# static fields
.field public static final TEFilterType_Audio:I = 0x1

.field public static final TEFilterType_Caption:I = 0x4

.field public static final TEFilterType_Color:I = 0x2

.field public static final TEFilterType_Effect_Color:I = 0x7

.field public static final TEFilterType_Effect_Filter:I = 0x8

.field public static final TEFilterType_Info_Sticker:I = 0x9

.field public static final TEFilterType_MV:I = 0xb

.field public static final TEFilterType_Music_Srt_Effect_filter:I = 0xa

.field public static final TEFilterType_Sticker:I = 0x0

.field public static final TEFilterType_TimeEffect:I = 0x6

.field public static final TEFilterType_Transform:I = 0x3

.field public static final TEFilterType_Unknown:I = -0x1

.field public static final TEFilterType_WaterMark:I = 0x5

.field public static final TRANSFORM2D:Ljava/lang/String; = "transform_2d"


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/common/TEDefine;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/common/TEDefine;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/common/TEDefine$TEFilter;->this$0:Lcom/ss/android/ttve/common/TEDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
