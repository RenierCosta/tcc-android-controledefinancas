package com.controleFinanceiro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class SQLiteHelper
  extends SQLiteOpenHelper
{
  private static final String CATEGORIA = "categoria";
  private String[] scriptSQLCreate;
  private String scriptSQLDelete;
  
  public SQLiteHelper(Context paramContext, String paramString1, int paramInt, String[] paramArrayOfString, String paramString2)
  {
    super(paramContext, paramString1, null, paramInt);
    this.scriptSQLCreate = paramArrayOfString;
    this.scriptSQLDelete = paramString2;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    int i = Log.i("categoria", "Criando banco com sql");
    int j = this.scriptSQLCreate.length;
    int k = 0;
    for (;;)
    {
      if (k >= j) {
        return;
      }
      String str = this.scriptSQLCreate[k];
      int m = Log.i("categoria", str);
      paramSQLiteDatabase.execSQL(str);
      k += 1;
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    String str1 = "Atualizando da versão " + paramInt1 + " para " + paramInt2 + ". Todos os registros serão deletados.";
    int i = Log.w("categoria", str1);
    String str2 = this.scriptSQLDelete;
    int j = Log.i("categoria", str2);
    String str3 = this.scriptSQLDelete;
    paramSQLiteDatabase.execSQL(str3);
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.SQLiteHelper
 * JD-Core Version:    0.7.0.1
 */