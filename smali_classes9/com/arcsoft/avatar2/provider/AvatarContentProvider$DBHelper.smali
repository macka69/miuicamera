.class public Lcom/arcsoft/avatar2/provider/AvatarContentProvider$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AvatarContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar2/provider/AvatarContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/arcsoft/avatar2/provider/AvatarContentProvider;


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/provider/AvatarContentProvider;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/arcsoft/avatar2/provider/AvatarContentProvider$DBHelper;->a:Lcom/arcsoft/avatar2/provider/AvatarContentProvider;

    const-string p1, "_arc_avatar.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE avatar_db (_id integer primary key autoincrement,thumbnail BLOB,config_path TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS avatar_db"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/provider/AvatarContentProvider$DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
