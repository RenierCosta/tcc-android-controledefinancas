.class public Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;
.super Lcom/controleFinanceiro/lancamento/RepositorioLancamento;
.source "RepositorioLancamentoScript.java"


# static fields
.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field private static final SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

.field private static final SCRIPT_DATABASE_DELETE:Ljava/lang/String; = "DROP TABLE IF EXISTS FIN_LANCAMENTO"

.field private static final VERSAO_BANCO:I = 0x1


# instance fields
.field private dbHelper:Lcom/controleFinanceiro/SQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    const-string v2, "create table FIN_LANCAMENTO ( _id integer primary key autoincrement, LAN_ST_DESCRICAO text not null, LAN_DT_VENCIMENTO date not null, LAN_IN_STATUS integer, LAN_RE_VALOR number(9,2) not null, LAN_IN_CATEGORIA integer, LAN_IN_EMPRESA integer, LAN_IN_CONTA integer, LAN_IN_TIPO integer, LAN_ST_OBSERVACAO text, LAN_RE_MULTA number(9,2) default 0, LAN_RE_DESCONTO number(9,2) default 0, LAN_DT_PAGAMENTO date);"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 15
    const-string v2, "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null,CON_IN_AGENCIA integer not null, CON_IN_NCONTA integer not null, CON_RE_VALORINICIAL number(9,2) not null);"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "create table FIN_CATEGORIA ( _id integer primary key autoincrement, CAT_ST_DESCRICAO text not null, CAT_IN_TIPO integer);"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 18
    const-string v2, "create table FIN_EMPRESA (_id integer primary key autoincrement, EMP_ST_NOME text not null, EMP_ST_TELEFONE text);"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 19
    const-string v2, "create table FIN_USUARIO (_id integer primary key autoincrement, USU_ST_SENHA text not null);"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 22
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values(\'Educa\u00e7\u00e3o\',1);"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 23
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values(\'Sal\u00e1rio\',0);"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 24
    const-string v2, "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values(\'Alimenta\u00e7\u00e3o\',1);"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 25
    const-string v2, "insert into FIN_USUARIO (USU_ST_SENHA) values (\'\');"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;-><init>()V

    .line 41
    new-instance v0, Lcom/controleFinanceiro/SQLiteHelper;

    const-string v2, "controle_financeiro"

    const/4 v3, 0x1

    .line 42
    sget-object v4, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->SCRIPT_DATABASE_CREATE:[Ljava/lang/String;

    const-string v5, "DROP TABLE IF EXISTS FIN_LANCAMENTO"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/controleFinanceiro/SQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    .line 45
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method


# virtual methods
.method public fechar()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->fechar()V

    .line 52
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;->dbHelper:Lcom/controleFinanceiro/SQLiteHelper;

    invoke-virtual {v0}, Lcom/controleFinanceiro/SQLiteHelper;->close()V

    .line 55
    :cond_0
    return-void
.end method
