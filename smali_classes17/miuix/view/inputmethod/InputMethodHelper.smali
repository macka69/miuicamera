.class public Lmiuix/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source "InputMethodHelper.java"


# static fields
.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/view/inputmethod/InputMethodHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/view/inputmethod/InputMethodHelper$1;

    invoke-direct {v0}, Lmiuix/view/inputmethod/InputMethodHelper$1;-><init>()V

    sput-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiuix/view/inputmethod/InputMethodHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/view/inputmethod/InputMethodHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;
    .locals 1

    sget-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/view/inputmethod/InputMethodHelper;

    return-object p0
.end method


# virtual methods
.method public getManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public hideKeyBoard(Landroid/widget/EditText;)V
    .locals 1

    iget-object p0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method public showKeyBoard(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object p0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
