package com.controleFinanceiro.categoria;

import android.content.Context;
import com.controleFinanceiro.SQLiteHelper;

public class RepositorioCategoriaScript
  extends RepositorioCategoria
{
  private static final String NOME_BANCO = "controle_financeiro";
  private static final String[] SCRIPT_DATABASE_CREATE;
  private static final String SCRIPT_DATABASE_DELETE = "DROP TABLE IF EXISTS FIN_CATEGORIA";
  private static final int VERSAO_BANCO = 1;
  private SQLiteHelper dbHelper;
  
  static
  {
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "create table FIN_CATEGORIA ( _id integer primary key autoincrement, CAT_ST_DESCRICAO text not null,CAT_ST_TIPO text not null);";
    arrayOfString[1] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values('Educação','Saida');";
    arrayOfString[2] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values('Veículos','Saida');";
    arrayOfString[3] = "insert into FIN_CATEGORIA(CAT_ST_DESCRICAO,CAT_ST_TIPO) values('Domésticos','Saida');";
    arrayOfString[4] = "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null,CON_IN_AGENCIA integer not null, CON_IN_NCONTA integer not null, CON_RE_VALORINICIAL number(9,2) not null);";
    arrayOfString[5] = "insert into fin_conta(con_st_banco,con_in_agencia,con_in_nconta,con_re_valorinicial)values('Itau',0278,98765,500);";
    SCRIPT_DATABASE_CREATE = arrayOfString;
  }
  
  public RepositorioCategoriaScript(Context paramContext)
  {
    String[] arrayOfString = SCRIPT_DATABASE_CREATE;
    Context localContext = paramContext;
    SQLiteHelper localSQLiteHelper = new SQLiteHelper(localContext, "controle_financeiro", 1, arrayOfString, "DROP TABLE IF EXISTS FIN_CATEGORIA");
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
 * Qualified Name:     com.controleFinanceiro.categoria.RepositorioCategoriaScript
 * JD-Core Version:    0.7.0.1
 */