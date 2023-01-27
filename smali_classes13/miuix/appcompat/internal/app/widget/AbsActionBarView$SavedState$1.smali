.class final Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;
    .locals 1

    new-instance p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    new-instance p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState$1;->newArray(I)[Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;
    .locals 0

    new-array p0, p1, [Lmiuix/appcompat/internal/app/widget/AbsActionBarView$SavedState;

    return-object p0
.end method
