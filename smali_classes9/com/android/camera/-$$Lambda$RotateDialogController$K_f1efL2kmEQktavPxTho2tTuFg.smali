.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;

    invoke-direct {v0}, Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;-><init>()V

    sput-object v0, Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;->INSTANCE:Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/camera/RotateDialogController;->lambda$showSystemAlertDialog$6(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
