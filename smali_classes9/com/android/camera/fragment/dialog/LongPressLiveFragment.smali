.class public Lcom/android/camera/fragment/dialog/LongPressLiveFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LongPressLiveFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalDialog"


# instance fields
.field private mId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const v0, 0x7f1106b4

    iput v0, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a023d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a023a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x7f1106b2

    iput p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a023d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a023a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x7f1106b4

    iput p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->selectLpFeature(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private selectLpFeature(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iget p0, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    const-string p1, "ThermalDialog"

    const v0, 0x7f1106b4

    if-ne p0, v0, :cond_0

    const-string p0, "selectLpFeature key_lp_dialog_record"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "key_lp_dialog_record"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "selectLpFeature key_lp_dialog_burst"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "key_lp_dialog_burst"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "pref_lpl_selector_use_hint_shown"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$LongPressLiveFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$LongPressLiveFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->lambda$onCreateDialog$1(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$LongPressLiveFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0080

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$g03wpsxMzm5GF5Z_TInyHrdbsJI;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$g03wpsxMzm5GF5Z_TInyHrdbsJI;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    const v3, 0x7f0a023d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$TceUlZ4P_KZq0J95VVSHy4gMzew;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$TceUlZ4P_KZq0J95VVSHy4gMzew;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v4, v1, [Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110440

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$HTJCpMbAJ3PMxBEia5KufpgUnPc;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/-$$Lambda$LongPressLiveFragment$HTJCpMbAJ3PMxBEia5KufpgUnPc;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;)V

    const p0, 0x7f1102ff

    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
