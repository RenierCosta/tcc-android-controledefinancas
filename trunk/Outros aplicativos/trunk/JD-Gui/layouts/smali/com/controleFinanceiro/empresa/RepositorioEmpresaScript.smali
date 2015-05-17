.class public Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;
.super Lcom/controleFinanceiro/empresa/RepositorioEmpresa;
.source "RepositorioEmpresaScript.java"


# static fields
.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field private static final SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

.field private static final SCRIPT_DATABASE_DELETE:Ljava/lang/String; = "DROP TABLE IF EXISTS FIN_EMPRESA"

.field private static final VERSAO_BANCO:I = 0x1


# instance fields
.field private dbHelper:Lcom/controleFinanceiro/SQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    const-string v2, "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null);"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 15
    const-string v2, "insert into FIN_CONTA(CON_ST_BANCO) values(\'Bradesco\');"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 16
    const-string v2, "insert into FIN_CONTA(CON_ST_BANCO) values(\'Ita\u00fa\');"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 17
    const-string v2, "insert into FIN_CONTA(CON_ST_BANCO) values(\'Banco do Brasil\');"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;-><init>()V

    .line 30
    new-instance v0, Lcom/controleFinanceiro/SQLiteHelper;

    const-string v2, "controle_financeiro"

    const/4 v3, 0x1

    .line 31
    sget-object v4, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    const-string v5, "DROP TABLE IF EXISTS FIN_EMPRESA"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/controleFinanceiro/SQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    .line 34
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method


# virtual methods
.method public fechar()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->fechar()V

    .line 41
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/RepositorioEmpresaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->close()V

    .line 44
    :cond_0
    return-void
.end method
