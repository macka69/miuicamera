.class Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorUpdateRunner"
.end annotation


# instance fields
.field private mSeekBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/androidbasewidget/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/androidbasewidget/widget/SeekBar;

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;)V

    :cond_1
    return-void
.end method
