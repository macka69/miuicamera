.class public final enum Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;
.super Ljava/lang/Enum;
.source "ProcessingMetadataQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/photos/api/ProcessingMetadataQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

.field public static final enum DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

.field public static final enum INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;


# instance fields
.field private final identifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    const-string v1, "INDETERMINATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    new-instance v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    const-string v1, "DETERMINATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    new-array v1, v4, [Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    sget-object v4, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->$VALUES:[Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->identifier:I

    return-void
.end method

.method public static fromIdentifier(I)Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;
    .locals 1

    sget-object v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;
    .locals 1

    const-class v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;
    .locals 1

    sget-object v0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->$VALUES:[Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, [Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->identifier:I

    return p0
.end method
