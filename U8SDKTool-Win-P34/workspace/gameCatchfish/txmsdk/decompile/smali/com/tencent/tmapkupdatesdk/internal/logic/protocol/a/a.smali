.class public Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;
.super Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "CheckAppUpdateHttpRequest"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    .line 40
    return-void
.end method

.method private a(Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;)Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 247
    .line 248
    if-eqz p1, :cond_a3

    .line 250
    new-instance v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    invoke-direct {v1}, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;-><init>()V

    .line 251
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versionname:Ljava/lang/String;

    .line 253
    iget v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    iput v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    .line 262
    iget-object v7, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    .line 263
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 265
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;

    .line 267
    if-eqz v0, :cond_25

    .line 269
    iget-byte v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->type:B

    if-ne v4, v9, :cond_25

    .line 273
    iget-object v3, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->urlList:Ljava/util/ArrayList;

    if-eqz v3, :cond_95

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_43
    move-object v3, v0

    move v4, v5

    .line 281
    :goto_45
    if-nez v4, :cond_72

    .line 283
    if-eqz v7, :cond_72

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 285
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_53
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;

    .line 287
    if-eqz v0, :cond_53

    .line 289
    iget-byte v8, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->type:B

    if-ne v8, v5, :cond_53

    .line 292
    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->urlList:Ljava/util/ArrayList;

    if-eqz v2, :cond_98

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_71
    move-object v2, v0

    .line 301
    :cond_72
    if-eqz v4, :cond_9b

    .line 303
    const/4 v0, 0x4

    iput v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    .line 304
    iput-object v3, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    .line 313
    :goto_79
    iget-wide v2, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    long-to-int v0, v2

    iput v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newapksize:I

    .line 315
    iget-wide v2, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    long-to-int v0, v2

    iput v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->patchsize:I

    .line 317
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->fileMd5:Ljava/lang/String;

    .line 318
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->sigMd5:Ljava/lang/String;

    .line 319
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newFeature:Ljava/lang/String;

    .line 321
    iget-byte v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    iput-byte v0, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    move-object v0, v1

    .line 323
    :goto_94
    return-object v0

    .line 273
    :cond_95
    const-string v0, ""

    goto :goto_43

    .line 292
    :cond_98
    const-string v0, ""

    goto :goto_71

    .line 308
    :cond_9b
    iput v9, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    .line 309
    iput-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    goto :goto_79

    :cond_a0
    move-object v3, v2

    move v4, v6

    goto :goto_45

    :cond_a3
    move-object v0, v2

    goto :goto_94
.end method


# virtual methods
.method protected a()V
    .registers 7

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a()V

    .line 55
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_97

    .line 56
    new-instance v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateRequest;

    invoke-direct {v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateRequest;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateRequest;->appInfoForUpdateList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-byte v0, v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateRequest;->flag:B

    .line 60
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "appInfoForUpdateList= ["

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";versionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";targetVersionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetVersionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";targetGrayVersionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->targetGrayVersionCode:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "| \n\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 64
    :cond_78
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 67
    :cond_97
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    if-eqz p2, :cond_311

    instance-of v0, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateResponse;

    if-eqz v0, :cond_311

    .line 81
    check-cast p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateResponse;

    .line 83
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "response=  ["

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateResponse;->ret:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "| "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget v0, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateResponse;->ret:I

    if-nez v0, :cond_312

    .line 88
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v4, "checkAppUpdate success"

    invoke-static {v0, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v0, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/GetAppUpdateResponse;->appUpdateInfoGroup:Ljava/util/Map;

    .line 98
    if-eqz v0, :cond_1ab

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1ab

    .line 100
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1ab

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_1ab

    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5e

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_76
    :goto_76
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;

    .line 111
    iget v8, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    .line 113
    invoke-static {v8, v2}, Lcom/tencent/tmapkupdatesdk/internal/c/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 115
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_8d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkgname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";versionCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";uploadFlag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8, v2}, Lcom/tencent/tmapkupdatesdk/internal/c/b;->a(II)Z

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";overwriteChannelid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "| \n\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-direct {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a(Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;)Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    move-result-object v8

    .line 124
    if-eqz v8, :cond_76

    .line 127
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v0

    iget-object v9, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_321

    .line 133
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 135
    iget v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    if-ne v0, v10, :cond_321

    move v0, v1

    .line 141
    :goto_fe
    iget-object v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->sigMd5:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_108

    if-eqz v0, :cond_10a

    .line 142
    :cond_108
    iput v1, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    .line 145
    :cond_10a
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatemethod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newapksize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newapksize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "patchsize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->patchsize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "overwriteChannelid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, v8, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_76

    .line 159
    :cond_1ab
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_21d

    .line 167
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1d6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;

    .line 169
    iget-object v8, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->packageName:Ljava/lang/String;

    .line 170
    iget v9, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionCode:I

    .line 171
    iget-object v10, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppInfoForUpdate;->versionName:Ljava/lang/String;

    .line 174
    const/4 v3, 0x0

    .line 177
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1ed
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    .line 179
    iget-object v12, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    .line 180
    if-eqz v8, :cond_1ed

    if-eqz v12, :cond_1ed

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ed

    move v3, v1

    .line 188
    :goto_206
    if-eqz v3, :cond_20c

    .line 190
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 196
    :cond_20c
    new-instance v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;-><init>()V

    .line 197
    iput-object v8, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    .line 198
    iput-object v10, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versionname:Ljava/lang/String;

    .line 199
    iput v9, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    .line 200
    iput v1, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    .line 201
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 208
    :cond_21d
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "returnSuceessList = ["

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_228
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";versionCode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "| \n\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_228

    .line 212
    :cond_25f
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 217
    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "needUpdateApkInfos = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_295
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";versionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";grayVersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "| \n\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_295

    .line 228
    :cond_2d8
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_311

    .line 231
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 232
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v1, "send Message ApkUpdateMessageHandler.GetNeedUpdateApk"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_311
    :goto_311
    return-void

    .line 239
    :cond_312
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v1, "checkAppUpdate fail"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->b()V

    goto :goto_311

    :cond_31d
    move-object v0, v3

    move v3, v2

    goto/16 :goto_206

    :cond_321
    move v0, v2

    goto/16 :goto_fe
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 330
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 331
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 332
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/a;->a:Ljava/lang/String;

    const-string v1, "send Message ApkUpdateMessageHandler.CheckUpdateFailed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method
