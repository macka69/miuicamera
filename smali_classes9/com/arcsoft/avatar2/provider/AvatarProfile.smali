.class public Lcom/arcsoft/avatar2/provider/AvatarProfile;
.super Ljava/lang/Object;
.source "AvatarProfile.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.arcsoft.content.provider.avatar2.content.provider"

.field public static final AVATAR_URI:Landroid/net/Uri;

.field public static final CONFIG_PATH:Ljava/lang/String; = "config_path"

.field public static final DATABASE_NAME:Ljava/lang/String; = "_arc_avatar.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final ID_AVATAR_DB:I = 0x1

.field public static final SQL_CREATE_TABLE_AVATAR_DB:Ljava/lang/String; = "CREATE TABLE avatar_db (_id integer primary key autoincrement,thumbnail BLOB,config_path TEXT);"

.field public static final SQL_DROP_TABLE_AVATAR_DB:Ljava/lang/String; = "DROP TABLE IF EXISTS avatar_db"

.field public static final TABLE_NAME:Ljava/lang/String; = "avatar_db"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final _ID:Ljava/lang/String; = "_id"

.field protected static final a:Ljava/lang/String; = "content://com.arcsoft.content.provider.avatar2.content.provider/"

.field public static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.arcsoft.content.provider.avatar2.content.provider/avatar_db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/avatar2/provider/AvatarProfile;->AVATAR_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/arcsoft/avatar2/provider/AvatarProfile;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.arcsoft.content.provider.avatar2.content.provider"

    const-string v2, "avatar_db"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
