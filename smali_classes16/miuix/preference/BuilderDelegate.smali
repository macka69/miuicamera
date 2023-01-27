.class Lmiuix/preference/BuilderDelegate;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "BuilderDelegate.java"


# instance fields
.field private mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method
