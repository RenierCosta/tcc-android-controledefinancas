.class public final Lcom/controleFinanceiro/empresa/Empresa$Empresas;
.super Ljava/lang/Object;
.source "Empresa.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/empresa/Empresa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empresas"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final emp_ch_telefone:Ljava/lang/String; = "EMP_CH_TELEFONE"

.field public static final emp_st_nome:Ljava/lang/String; = "EMP_ST_NOME"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method
