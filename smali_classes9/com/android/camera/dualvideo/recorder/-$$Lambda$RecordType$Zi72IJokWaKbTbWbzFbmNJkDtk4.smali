.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$RecordType$Zi72IJokWaKbTbWbzFbmNJkDtk4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$RecordType$Zi72IJokWaKbTbWbzFbmNJkDtk4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$RecordType$Zi72IJokWaKbTbWbzFbmNJkDtk4;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->lambda$getTypeByName$0(Ljava/lang/String;Lcom/android/camera/dualvideo/recorder/RecordType;)Z

    move-result p0

    return p0
.end method
