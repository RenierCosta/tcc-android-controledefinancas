.class public final Lcom/controleFinanceiro/conta/Conta$Contas;
.super Ljava/lang/Object;
.source "Conta.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/conta/Conta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contas"
.end annotation


# static fields
.field public static final CON_CH_NCONTA:Ljava/lang/String; = "CON_CH_NCONTA"

.field public static final CON_IN_AGENCIA:Ljava/lang/String; = "CON_IN_AGENCIA"

.field public static final CON_RE_VALORINICIAL:Ljava/lang/String; = "CON_RE_VALORINICIAL"

.field public static final CON_ST_BANCO:Ljava/lang/String; = "CON_ST_BANCO"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method
