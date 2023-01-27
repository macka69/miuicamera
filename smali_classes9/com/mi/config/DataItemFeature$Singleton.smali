.class Lcom/mi/config/DataItemFeature$Singleton;
.super Ljava/lang/Object;
.source "DataItemFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/config/DataItemFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mi/config/DataItemFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/config/DataItemFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/config/DataItemFeature;-><init>(Lcom/mi/config/DataItemFeature$1;)V

    sput-object v0, Lcom/mi/config/DataItemFeature$Singleton;->INSTANCE:Lcom/mi/config/DataItemFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
