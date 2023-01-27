.class Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;
.super Ljava/lang/Object;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/timerburst/TimerBurstSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Result"
.end annotation


# instance fields
.field mResultHideType:I

.field final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultHideType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->mResultHideType:I

    return p0
.end method

.method public setHideType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->mResultHideType:I

    return-void
.end method
