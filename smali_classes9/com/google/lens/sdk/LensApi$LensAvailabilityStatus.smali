.class public interface abstract annotation Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/lens/sdk/LensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LensAvailabilityStatus"
.end annotation


# static fields
.field public static final LENS_AVAILABILITY_UNKNOWN:I = -0x1

.field public static final LENS_READY:I = 0x0

.field public static final LENS_UNAVAILABLE:I = 0x1

.field public static final LENS_UNAVAILABLE_AGSA_OUTDATED:I = 0x6

.field public static final LENS_UNAVAILABLE_ASSISTANT_EYES_FLAG_DISABLED:I = 0x8

.field public static final LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE:I = 0x3

.field public static final LENS_UNAVAILABLE_DEVICE_LOCKED:I = 0x5

.field public static final LENS_UNAVAILABLE_FEATURE_UNAVAILABLE:I = 0xb

.field public static final LENS_UNAVAILABLE_INVALID_CURSOR:I = 0x4

.field public static final LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED:I = 0x2

.field public static final LENS_UNAVAILABLE_SERVICE_BUSY_FAILURE:I = 0xa

.field public static final LENS_UNAVAILABLE_SERVICE_UNAVAILABLE:I = 0x9

.field public static final LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE:I = 0xc
