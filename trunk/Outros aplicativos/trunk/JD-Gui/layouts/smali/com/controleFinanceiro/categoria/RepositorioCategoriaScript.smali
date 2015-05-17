.class public Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;
.super Lcom/controleFinanceiro/categoria/RepositorioCategoria;
.source "RepositorioCategoriaScript.java"


# static fields
.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field private static final SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

.field private static final SCRIPT_DATABASE_DELETE:Ljava/lang/String; = "DROP TABLE IF EXISTS FIN_CATEGORIA"

.field private static final VERSAO_BANCO:I = 0x1


# instance fields
.field private dbHelper:Lcom/controleFinanceiro/SQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    const-string v2, "create table FIN_CATEGORIA ( _id integer primary key autoincrement, CAT_ST_DESCRICAO text not null,CAT_ST_TIPO text not null);"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 16
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values(\'Educa\u00e7\u00e3o\',\'Saida\');"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values(\'Ve\u00edculos\',\'Saida\');"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 18
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values(\'Dom\u00e9sticos\',\'Saida\');"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 19
    const-string v2, "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null,CON_IN_AGENCIA integer not null, CON_IN_NCONTA integer not null, CON_RE_VALORINICIAL number(9,2) not null);"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 21
    const-string v2, "insert into fin_conta(con_st_banco,con_in_agencia,con_in_nconta,con_re_valorinicial)values(\'Itau\',0278,98765,500);"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>()V

    .line 37
    new-instance v0, Lcom/controleFinanceiro/SQLiteHelper;

    const-string v2, "controle_financeiro"

    const/4 v3, 0x1

    .line 38
    sget-object v4, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    const-string v5, "DROP TABLE IF EXISTS FIN_CATEGORIA"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/controleFinanceiro/SQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object v0, p0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    .line 41
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-void
.end method


# virtual methods
.method public fechar()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->fechar()V

    .line 48
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->close()V

    .line 51
    :cond_0
    return-void
.end method
