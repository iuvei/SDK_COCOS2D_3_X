.class public Lcom/baidu/android/pushservice/e/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidu/pushservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lappicons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/e/p;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    if-nez p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v3, v2, 0x28

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v0, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v0

    int-to-float v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v3

    int-to-float v3, v3

    invoke-virtual {v6, v7, v9, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v0, 0x1f

    invoke-virtual {v6, v7, v8, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    sparse-switch v2, :sswitch_data_86

    const/16 v1, 0xc0

    const/16 v0, 0xc0

    :goto_67
    const/4 v2, 0x1

    invoke-static {v5, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :sswitch_6d
    const/16 v1, 0x24

    const/16 v0, 0x24

    goto :goto_67

    :sswitch_72
    const/16 v1, 0x30

    const/16 v0, 0x30

    goto :goto_67

    :sswitch_77
    const/16 v1, 0x48

    const/16 v0, 0x48

    goto :goto_67

    :sswitch_7c
    const/16 v1, 0x60

    const/16 v0, 0x60

    goto :goto_67

    :sswitch_81
    const/16 v1, 0x90

    const/16 v0, 0x90

    goto :goto_67

    :sswitch_data_86
    .sparse-switch
        0x78 -> :sswitch_6d
        0xa0 -> :sswitch_72
        0xf0 -> :sswitch_77
        0x140 -> :sswitch_7c
        0x1e0 -> :sswitch_81
    .end sparse-switch
.end method

.method private static a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_1a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_15

    array-length v4, v3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v4, :cond_15

    aget-object v5, v3, v0

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    :cond_36
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_44
    move-object v0, v1

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/e/d;)V
    .registers 11

    const/4 v6, 0x1

    :try_start_1
    invoke-static {p0, p2}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/e/d;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_8

    move-result v0

    if-eqz v0, :cond_27

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "ShortcutUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no permission to check if shortcut installed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "duplicate"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/e/p;->d(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lcom/baidu/android/pushservice/message/a/e;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_66
    if-eqz v0, :cond_1cb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cb

    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_127

    const-string v2, "com.baidu.searchbox.action.aloader.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.searchbox.aloaderhost.ALoaderActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "isBackToLauncher"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_URL_NEW_WINDOW"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "src"

    const-string v4, "launcher_icon"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_9e
    const-string v2, "appid"

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://m.baidu.com/lightapp/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_c3} :catch_109

    :goto_c3
    const-string v2, "pageId"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.baidu.searchbox.aloaderhost.ALoaderActivity"

    invoke-direct {v2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string v2, "ShortcutUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open by searchbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4
    :goto_f4
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/android/pushservice/e/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_109
    move-exception v2

    const-string v5, "ShortcutUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    :cond_127
    const-string v2, "_lightapp_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://m.baidu.com/lightapp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fromShortcut"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "apikey"

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appname"

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_runtime_act_impl"

    const-string v4, "com.baidu.lappgui.LappHostActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/e/e;->h(Ljava/lang/String;)Lcom/baidu/android/pushservice/f/h;

    move-result-object v2

    if-eqz v2, :cond_19d

    iget-object v4, v2, Lcom/baidu/android/pushservice/f/h;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19d

    const-string v4, "host_appid"

    iget-object v5, v2, Lcom/baidu/android/pushservice/f/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "host_version"

    iget-object v2, v2, Lcom/baidu/android/pushservice/f/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"

    invoke-direct {v2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_19d
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string v2, "ShortcutUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open by runtime in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apkey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f4

    :cond_1cb
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.browser.apps"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_233

    const-string v0, "com.baidu.browser.apps"

    const-string v2, "com.baidu.browser.apps"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.baidu.browser.apps"

    const-string v5, "com.baidu.browser.framework.BdBrowserActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1f0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://m.baidu.com/lightapp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string v2, "ShortcutUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Host Not found,use browser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f4

    :cond_233
    const-string v0, "com.android.browser"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_243

    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f0

    :cond_243
    const-string v0, "browser"

    goto :goto_1f0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/high16 v3, 0x10000000

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "ShortcutUtils"

    const-string v1, "delShortcut Parameter can\'t be null "

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "browser"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_35
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.baidu.com/lightapp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_57
    :goto_57
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    :cond_60
    const-string v2, "com.baidu.searchbox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, "com.baidu.searchbox.action.aloader.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.searchbox.aloaderhost.ALoaderActivity"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.searchbox.aloaderhost.ALoaderActivity"

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_57

    :cond_85
    const-string v2, "com.baidu.browser.apps"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.baidu.com/lightapp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.baidu.browser.apps"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.browser.apps"

    const-string v4, "com.baidu.browser.framework.BdBrowserActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_57

    :cond_c1
    const-string v2, "com.android.browser"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.baidu.com/lightapp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_57

    :cond_f2
    invoke-static {p0}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/baidu/android/pushservice/e/e;->h(Ljava/lang/String;)Lcom/baidu/android/pushservice/f/h;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_57

    iget-object v2, v2, Lcom/baidu/android/pushservice/f/h;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_57
.end method

.method public static a([BLjava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/e/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bdi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6b} :catch_6c

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    const-string v1, "ShortcutUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/e/d;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/e/d;->d()Ljava/lang/String;

    move-result-object v8

    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "com.android.launcher.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_1d

    const-string v0, "com.android.launcher2.permission.READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    if-nez v0, :cond_25

    const-string v0, "com.android.launcher2.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_25
    if-nez v0, :cond_2d

    const-string v0, "com.android.launcher3.permission.READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    if-nez v0, :cond_35

    const-string v0, "com.android.launcher3.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_35
    if-nez v0, :cond_44

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, ""

    const-string v3, "no authority"

    invoke-static {v1, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "title=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v8, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a1

    move v0, v6

    :goto_79
    if-eqz v1, :cond_7e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string v1, "ShortcutUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isInstalled is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    return v0

    :cond_a1
    move v0, v7

    goto :goto_79
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 11

    invoke-static {p3, p1}, Lcom/baidu/android/pushservice/e/p;->a(ZLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "ShortcutUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download Lightapp icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    new-instance v2, Lcom/baidu/frontia/a/c/c;

    invoke-direct {v2, p0}, Lcom/baidu/frontia/a/c/c;-><init>(Landroid/content/Context;)V

    :try_start_30
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/baidu/frontia/a/c/c;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5e

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/e/p;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5e} :catch_67
    .catchall {:try_start_30 .. :try_end_5e} :catchall_8c

    :cond_5e
    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    :cond_61
    :goto_61
    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/e/p;->a([BLjava/lang/String;)V

    goto :goto_6

    :catch_67
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :try_start_6b
    const-string v3, "ShortcutUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_8c

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    move-object v0, v1

    goto :goto_61

    :catchall_8c
    move-exception v0

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v3, v0, [B

    :goto_e
    const/4 v0, 0x0

    :try_start_f
    array-length v4, v3

    invoke-virtual {p0, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_1b

    move-result v0

    :goto_14
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3a

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :catch_1b
    move-exception v0

    const-string v4, "ShortcutUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_14

    :cond_3a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;)[B
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/android/pushservice/e/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bdi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz p0, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v1, v4, v6

    if-lez v1, :cond_5c

    :cond_5b
    :goto_5b
    return-object v0

    :cond_5c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6e} :catch_6f

    goto :goto_5b

    :catch_6f
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "ShortcutUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    const/16 v4, 0x2d0

    const/16 v3, 0x21c

    const/16 v2, 0x186

    const/16 v1, 0x104

    const/16 v0, 0xc3

    if-nez p1, :cond_d

    :goto_c
    return-object p1

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;)I

    move-result v5

    sparse-switch v5, :sswitch_data_34

    const/16 v0, 0x438

    move v1, v0

    move v0, v2

    :goto_1e
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_c

    :sswitch_24
    move v1, v3

    goto :goto_1e

    :sswitch_26
    move v1, v3

    goto :goto_1e

    :sswitch_28
    move v0, v1

    move v1, v4

    goto :goto_1e

    :sswitch_2b
    move v0, v1

    move v1, v4

    goto :goto_1e

    :sswitch_2e
    const/16 v0, 0x438

    move v1, v0

    move v0, v2

    goto :goto_1e

    nop

    :sswitch_data_34
    .sparse-switch
        0x78 -> :sswitch_24
        0xa0 -> :sswitch_26
        0xf0 -> :sswitch_28
        0x140 -> :sswitch_2b
        0x1e0 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static c(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    const/16 v2, 0x26

    const/16 v1, 0x1a

    const/16 v0, 0x14

    if-nez p1, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-static {p0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;)I

    move-result v3

    sparse-switch v3, :sswitch_data_2a

    move v0, v2

    move v1, v2

    :goto_18
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_8

    :sswitch_1e
    move v1, v0

    goto :goto_18

    :sswitch_20
    move v1, v0

    goto :goto_18

    :sswitch_22
    move v0, v1

    goto :goto_18

    :sswitch_24
    move v0, v1

    goto :goto_18

    :sswitch_26
    move v0, v2

    move v1, v2

    goto :goto_18

    nop

    :sswitch_data_2a
    .sparse-switch
        0x78 -> :sswitch_1e
        0xa0 -> :sswitch_20
        0xf0 -> :sswitch_22
        0x140 -> :sswitch_24
        0x1e0 -> :sswitch_26
    .end sparse-switch
.end method

.method private static d(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "lightapp_baidu_logo"

    const-string v2, "http://bs.baidu.com/lapp-runtime/picture/runtime_baidu.png"

    invoke-static {p0, v1, v2, v5}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v5

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
