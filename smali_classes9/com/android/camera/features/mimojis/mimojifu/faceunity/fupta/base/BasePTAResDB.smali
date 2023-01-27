.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BasePTAResDB;
.super Ljava/lang/Object;
.source "BasePTAResDB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFuItemsColorForCreate(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFuItemsForCreate(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;",
            ")V"
        }
    .end annotation
.end method
