.class final Lcom/ss/android/ugc/effectmanager/effect/model/Effect$1;
.super Ljava/lang/Object;
.source "Effect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    new-instance p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-direct {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0

    new-array p0, p1, [Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect$1;->newArray(I)[Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object p0

    return-object p0
.end method
