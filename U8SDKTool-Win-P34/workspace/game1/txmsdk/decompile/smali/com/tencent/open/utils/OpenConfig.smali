.class public Lcom/tencent/open/utils/OpenConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/open/utils/OpenConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/tencent/open/utils/OpenConfig;->a:Ljava/util/HashMap;

    .line 34
    sput-object v0, Lcom/tencent/open/utils/OpenConfig;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/open/utils/OpenConfig;->f:J

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/utils/OpenConfig;->g:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/open/utils/OpenConfig;->h:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->a()V

    .line 77
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->b()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/utils/OpenConfig;I)I
    .registers 2

    .prologue
    .line 25
    iput p1, p0, Lcom/tencent/open/utils/OpenConfig;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/open/utils/OpenConfig;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 101
    .line 103
    const-string v1, ""

    .line 106
    :try_start_2
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_1f
    iget-object v2, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_24} :catch_52

    move-result-object v0

    .line 121
    :goto_25
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_44
    .catchall {:try_start_3a .. :try_end_43} :catchall_7c

    goto :goto_3a

    .line 129
    :catch_44
    move-exception v2

    .line 130
    :try_start_45
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_7c

    .line 133
    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4e} :catch_76

    move-object v0, v1

    .line 139
    :goto_4f
    return-object v0

    :cond_50
    move-object v0, p1

    .line 109
    goto :goto_1f

    .line 113
    :catch_52
    move-exception v0

    .line 115
    :try_start_53
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_5e

    move-result-object v0

    goto :goto_25

    .line 116
    :catch_5e
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 118
    goto :goto_4f

    .line 128
    :cond_64
    :try_start_64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_44
    .catchall {:try_start_64 .. :try_end_67} :catchall_7c

    move-result-object v1

    .line 133
    :try_start_68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_70

    move-object v0, v1

    .line 137
    goto :goto_4f

    .line 135
    :catch_70
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 138
    goto :goto_4f

    .line 135
    :catch_76
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 138
    goto :goto_4f

    .line 132
    :catchall_7c
    move-exception v1

    .line 133
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    .line 137
    :goto_83
    throw v1

    .line 135
    :catch_84
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83
.end method

.method private a()V
    .registers 3

    .prologue
    .line 85
    const-string v0, "com.tencent.open.config.json"

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d} :catch_e

    .line 91
    :goto_d
    return-void

    .line 88
    :catch_e
    move-exception v0

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    goto :goto_d
.end method

.method static synthetic a(Lcom/tencent/open/utils/OpenConfig;Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/open/utils/OpenConfig;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_1d
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 160
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 162
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    .line 166
    :goto_38
    return-void

    .line 163
    :catch_39
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 217
    const-string v0, "cgi back, do update"

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->b(Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    .line 219
    const-string v0, "com.tencent.open.config.json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/utils/OpenConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/utils/OpenConfig;->f:J

    .line 221
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 172
    iget v0, p0, Lcom/tencent/open/utils/OpenConfig;->g:I

    if-eqz v0, :cond_a

    .line 174
    const-string v0, "update thread is running, return"

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->b(Ljava/lang/String;)V

    .line 209
    :goto_9
    return-void

    .line 177
    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/open/utils/OpenConfig;->g:I

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string v1, "appid"

    iget-object v2, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "appid_for_getting_config"

    iget-object v2, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "sdkv"

    const-string v2, "2.9.1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/tencent/open/utils/OpenConfig$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/open/utils/OpenConfig$1;-><init>(Lcom/tencent/open/utils/OpenConfig;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/tencent/open/utils/OpenConfig$1;->start()V

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/tencent/open/utils/OpenConfig;->h:Z

    if-eqz v0, :cond_22

    .line 288
    const-string v0, "OpenConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_22
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    const-string v1, "Common_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 228
    if-nez v0, :cond_b

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_b
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 234
    iget-wide v4, p0, Lcom/tencent/open/utils/OpenConfig;->f:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1e

    .line 236
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->b()V

    .line 238
    :cond_1e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/OpenConfig;
    .registers 4

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/open/utils/OpenConfig;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/OpenConfig;->a:Ljava/util/HashMap;

    .line 55
    :cond_b
    if-eqz p1, :cond_f

    .line 56
    sput-object p1, Lcom/tencent/open/utils/OpenConfig;->b:Ljava/lang/String;

    .line 58
    :cond_f
    if-nez p1, :cond_17

    .line 59
    sget-object v0, Lcom/tencent/open/utils/OpenConfig;->b:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 60
    sget-object p1, Lcom/tencent/open/utils/OpenConfig;->b:Ljava/lang/String;

    .line 65
    :cond_17
    :goto_17
    sget-object v0, Lcom/tencent/open/utils/OpenConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/utils/OpenConfig;

    .line 66
    if-nez v0, :cond_2b

    .line 67
    new-instance v0, Lcom/tencent/open/utils/OpenConfig;

    invoke-direct {v0, p0, p1}, Lcom/tencent/open/utils/OpenConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/tencent/open/utils/OpenConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2b
    return-object v0

    .line 62
    :cond_2c
    const-string p1, "0"

    goto :goto_17
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->b(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->c()V

    .line 274
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-nez v0, :cond_23

    .line 282
    :cond_22
    :goto_22
    return v1

    .line 277
    :cond_23
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_36

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_32
    move v1, v0

    goto :goto_22

    :cond_34
    move v0, v1

    goto :goto_32

    .line 279
    :cond_36
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_22

    .line 280
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_22
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->b(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->c()V

    .line 249
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/OpenConfig;->b(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/tencent/open/utils/OpenConfig;->c()V

    .line 261
    iget-object v0, p0, Lcom/tencent/open/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
