.class final Lmiuix/preference/DropDownPreference$SavedState$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiuix/preference/DropDownPreference$SavedState;",
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

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/preference/DropDownPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/preference/DropDownPreference$SavedState;
    .locals 0

    new-instance p0, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference$SavedState$1;->newArray(I)[Lmiuix/preference/DropDownPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiuix/preference/DropDownPreference$SavedState;
    .locals 0

    new-array p0, p1, [Lmiuix/preference/DropDownPreference$SavedState;

    return-object p0
.end method
