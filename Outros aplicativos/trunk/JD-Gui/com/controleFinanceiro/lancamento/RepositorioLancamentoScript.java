package com.controleFinanceiro.lancamento;

import android.content.Context;
import com.controleFinanceiro.SQLiteHelper;

public class RepositorioLancamentoScript
  extends RepositorioLancamento
{
  private static final String NOME_BANCO = "controle_financeiro";
  private static final String[] SCRIPT_DATABASE_CREATE;
  private static final String SCRIPT_DATABASE_DELETE = "DROP TABLE IF EXISTS FIN_LANCAMENTO";
  private static final int VERSAO_BANCO = 1;
  private SQLiteHelper dbHelper;
  
  static
  {
    String[] arrayOfString = new String[9];
    arrayOfString[0] = "create table FIN_LANCAMENTO ( _id integer primary key autoincrement, LAN_ST_DESCRICAO text not null, LAN_DT_VENCIMENTO date not null, LAN_IN_STATUS integer, LAN_RE_VALOR number(9,2) not null, LAN_IN_CATEGORIA integer, LAN_IN_EMPRESA integer, LAN_IN_CONTA integer, LAN_IN_TIPO integer, LAN_ST_OBSERVACAO text, LAN_RE_MULTA number(9,2) default 0, LAN_RE_DESCONTO number(9,2) default 0, LAN_DT_PAGAMENTO date);";
    arrayOfString[1] = "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null,CON_IN_AGENCIA integer not null, CON_IN_NCONTA integer not null, CON_RE_VALORINICIAL number(9,2) not null);";
    arrayOfString[2] = "create table FIN_CATEGORIA ( _id integer primary key autoincrement, CAT_ST_DESCRICAO text not null, CAT_IN_TIPO integer);";
    arrayOfString[3] = "create table FIN_EMPRESA (_id integer primary key autoincrement, EMP_ST_NOME text not null, EMP_ST_TELEFONE text);";
    arrayOfString[4] = "create table FIN_USUARIO (_id integer primary key autoincrement, USU_ST_SENHA text not null);";
    arrayOfString[5] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Educação',1);";
    arrayOfString[6] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Salário',0);";
    arrayOfString[7] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_IN_TIPO) values('Alimentação',1);";
    arrayOfString[8] = "insert into FIN_USUARIO (USU_ST_SENHA) values ('');";
    SCRIPT_DATABASE_CREATE = arrayOfString;
  }
  
  public RepositorioLancamentoScript(Context paramContext)
  {
    String[] arrayOfString = SCRIPT_DATABASE_CREATE;
    Context localContext = paramContext;
    SQLiteHelper localSQLiteHelper = new SQLiteHelper(localContext, "controle_financeiro", 1, arrayOfString, "DROP TABLE IF EXISTS FIN_LANCAMENTO");
    this.dbHelper = localSQLiteHelper;
    db = this.dbHelper.getWritableDatabase();
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
 * Qualified Name:     com.controleFinanceiro.lancamento.RepositorioLancamentoScript
 * JD-Core Version:    0.7.0.1
 */