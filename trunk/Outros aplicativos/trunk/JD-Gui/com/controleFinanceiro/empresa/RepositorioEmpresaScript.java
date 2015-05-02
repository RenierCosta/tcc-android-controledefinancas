package com.controleFinanceiro.empresa;

import android.content.Context;
import com.controleFinanceiro.SQLiteHelper;

public class RepositorioEmpresaScript
  extends RepositorioEmpresa
{
  private static final String NOME_BANCO = "controle_financeiro";
  private static final String[] SCRIPT_DATABASE_CREATE;
  private static final String SCRIPT_DATABASE_DELETE = "DROP TABLE IF EXISTS FIN_EMPRESA";
  private static final int VERSAO_BANCO = 1;
  private SQLiteHelper dbHelper;
  
  static
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "create table FIN_CONTA ( _id integer primary key autoincrement, CON_ST_BANCO text not null);";
    arrayOfString[1] = "insert into FIN_CONTA(CON_ST_BANCO) values('Bradesco');";
    arrayOfString[2] = "insert into FIN_CONTA(CON_ST_BANCO) values('Itaú');";
    arrayOfString[3] = "insert into FIN_CONTA(CON_ST_BANCO) values('Banco do Brasil');";
    SCRIPT_DATABASE_CREATE = arrayOfString;
  }
  
  public RepositorioEmpresaScript(Context paramContext)
  {
    String[] arrayOfString = SCRIPT_DATABASE_CREATE;
    Context localContext = paramContext;
    SQLiteHelper localSQLiteHelper = new SQLiteHelper(localContext, "controle_financeiro", 1, arrayOfString, "DROP TABLE IF EXISTS FIN_EMPRESA");
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
 * Qualified Name:     com.controleFinanceiro.empresa.RepositorioEmpresaScript
 * JD-Core Version:    0.7.0.1
 */