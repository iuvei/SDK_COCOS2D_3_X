.class public abstract Lcom/tencent/android/tpush/rpc/b;
.super Landroid/os/Binder;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/rpc/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.android.tpush.rpc.ITask"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/android/tpush/rpc/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/tencent/android/tpush/rpc/a;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.tencent.android.tpush.rpc.ITask"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/tencent/android/tpush/rpc/a;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/tencent/android/tpush/rpc/a;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/tencent/android/tpush/rpc/c;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/rpc/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_40

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.tencent.android.tpush.rpc.ITask"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.tencent.android.tpush.rpc.ITask"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/android/tpush/rpc/b;->a()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    :sswitch_1b
    const-string v1, "com.tencent.android.tpush.rpc.ITask"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/tencent/android/tpush/rpc/b;->b()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 61
    :sswitch_27
    const-string v1, "com.tencent.android.tpush.rpc.ITask"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/rpc/e;->a(Landroid/os/IBinder;)Lcom/tencent/android/tpush/rpc/d;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/tencent/android/tpush/rpc/b;->a(Ljava/lang/String;Lcom/tencent/android/tpush/rpc/d;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
