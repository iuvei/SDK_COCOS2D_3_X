.class Lcom/tencent/stat/common/o;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/tencent/stat/common/o;->a:I

    return-void
.end method

.method public static a()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/tencent/stat/common/o;->a:I

    if-ne v2, v0, :cond_7

    :goto_6
    return v0

    :cond_7
    sget v2, Lcom/tencent/stat/common/o;->a:I

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/bin"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    :goto_2d
    :try_start_2d
    array-length v4, v3

    if-ge v2, v4, :cond_57

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v2, 0x1

    sput v2, Lcom/tencent/stat/common/o;->a:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_55} :catch_56

    goto :goto_6

    :catch_56
    move-exception v0

    :cond_57
    sput v1, Lcom/tencent/stat/common/o;->a:I

    move v0, v1

    goto :goto_6

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d
.end method
