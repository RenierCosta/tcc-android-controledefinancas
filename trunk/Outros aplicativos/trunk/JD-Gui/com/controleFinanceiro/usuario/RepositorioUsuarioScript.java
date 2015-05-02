package com.controleFinanceiro.usuario;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.controleFinanceiro.SQLiteHelper;

public class RepositorioUsuarioScript
  extends RepositorioUsuario
{
  private static final String NOME_BANCO = "controle_financeiro";
  private static final String[] SCRIPT_DATABASE_CREATE;
  private static final String SCRIPT_DATABASE_DELETE = "DROP TABLE IF EXISTS FIN_USUARIO";
  private static final int VERSAO_BANCO = 1;
  private SQLiteHelper dbHelper;
  
  static
  {
    String[] arrayOfString = new String[17];
    arrayOfString[0] = "create table FIN_LANCAMENTO ( _id integer primary key autoincrement, LAN_ST_DESCRICAO text not null, LAN_DT_VENCIMENTO date not null, LAN_IN_STATUS integer, LAN_RE_VALOR number(9,2) not null, LAN_IN_CATEGORIA integer, LAN_IN_EMPRESA integer, LAN_IN_CONTA integer, LAN_IN_TIPO integer, LAN_ST_OBSERVACAO text, LAN_RE_MULTA number(9,2) default 0, LAN_RE_DESCONTO number(9,2) default 0, LAN_DT_PAGAMENTO date);";
    arrayOfString[1] = "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null,CON_IN_AGENCIA integer not null, CON_CH_NCONTA char(13) not null, CON_RE_VALORINICIAL number(9,2) not null);";
    arrayOfString[2] = "create table FIN_CATEGORIA ( _id integer primary key autoincrement, CAT_ST_DESCRICAO text not null, CAT_IN_TIPO integer);";
    arrayOfString[3] = "create table FIN_EMPRESA (_id integer primary key autoincrement, EMP_ST_NOME text not null, EMP_CH_TELEFONE char(13));";
    arrayOfString[4] = "create table FIN_USUARIO (_id integer primary key autoincrement, USU_ST_SENHA text not null);";
    arrayOfString[5] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Alimentação',1)";
    arrayOfString[6] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Automóvel','1');";
    arrayOfString[7] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Cartões de Crédito',1);";
    arrayOfString[8] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Dependentes',1);";
    arrayOfString[9] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Despesas Pessoais',1);";
    arrayOfString[10] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Educação',1)";
    arrayOfString[11] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Habitação',1);";
    arrayOfString[12] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Lazer',1);";
    arrayOfString[13] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Saúde',1);";
    arrayOfString[14] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Transporte',1);";
    arrayOfString[15] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Rendimentos',0);";
    arrayOfString[16] = "insert into FIN_USUARIO (USU_ST_SENHA) values ('');";
    SCRIPT_DATABASE_CREATE = arrayOfString;
  }
  
  public RepositorioUsuarioScript(Context paramContext)
  {
    String[] arrayOfString = SCRIPT_DATABASE_CREATE;
    Context localContext = paramContext;
    SQLiteHelper localSQLiteHelper = new SQLiteHelper(localContext, "controle_financeiro", 1, arrayOfString, "DROP TABLE IF EXISTS FIN_USUARIO");
    this.dbHelper = localSQLiteHelper;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    this.db = localSQLiteDatabase;
  }
  
  public void fechar()
  {
    super.fechar();
    if (this.dbHelper == null) {
      return;
    }
    this.dbHelper.close();
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.usuario.RepositorioUsuarioScript
 * JD-Core Version:    0.7.0.1
 */