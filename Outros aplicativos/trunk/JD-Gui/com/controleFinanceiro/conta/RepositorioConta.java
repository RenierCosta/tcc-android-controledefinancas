package com.controleFinanceiro.conta;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import com.controleFinanceiro.lancamento.RepositorioLancamento;
import java.util.ArrayList;
import java.util.List;

public class RepositorioConta
{
  private static final String CONTA = "conta";
  private static final String NOME_BANCO = "controle_financeiro";
  public static final String NOME_TABELA = "FIN_CONTA";
  protected static SQLiteDatabase db;
  
  protected RepositorioConta() {}
  
  public RepositorioConta(Context paramContext)
  {
    db = paramContext.openOrCreateDatabase("controle_financeiro", 0, null);
  }
  
  public int atualizar(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = db.update("FIN_CONTA", paramContentValues, paramString, paramArrayOfString);
    String str = "Atualizou [" + i + "] registros";
    int j = Log.i("conta", str);
    return i;
  }
  
  public int atualizar(Conta paramConta)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramConta.CON_ST_BANCO;
    localContentValues.put("CON_ST_BANCO", str1);
    Integer localInteger = Integer.valueOf(paramConta.CON_IN_AGENCIA);
    localContentValues.put("CON_IN_AGENCIA", localInteger);
    String str2 = paramConta.CON_CH_NCONTA;
    localContentValues.put("CON_CH_NCONTA", str2);
    String str3 = String.valueOf(paramConta.CON_RE_VALORINICIAL);
    localContentValues.put("CON_RE_VALORINICIAL", str3);
    String str4 = String.valueOf(paramConta.id);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str4;
    return atualizar(localContentValues, "_id=?", arrayOfString);
  }
  
  public Conta buscarConta(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = db;
    String[] arrayOfString = Conta.colunas;
    String str1 = "_id=" + paramLong;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    Cursor localCursor = localSQLiteDatabase.query(true, "FIN_CONTA", arrayOfString, str1, null, str2, str3, str4, str5);
    Conta localConta1;
    if (localCursor.getCount() > 0)
    {
      boolean bool = localCursor.moveToFirst();
      localConta1 = new Conta();
      int i = localCursor.getInt(0);
      localConta1.id = i;
      String str6 = localCursor.getString(1);
      localConta1.CON_ST_BANCO = str6;
      int j = localCursor.getInt(2);
      localConta1.CON_IN_AGENCIA = j;
      String str7 = localCursor.getString(3);
      localConta1.CON_CH_NCONTA = str7;
      Float localFloat = Float.valueOf(localCursor.getFloat(4));
      localConta1.CON_RE_VALORINICIAL = localFloat;
    }
    for (Conta localConta2 = localConta1;; localConta2 = null)
    {
      return localConta2;
      localCursor.close();
    }
  }
  
  public Conta buscarContaPorBanco(String paramString)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = db;
        String[] arrayOfString = Conta.colunas;
        String str1 = "CON_ST_BANCO='" + paramString + "'";
        Cursor localCursor = localSQLiteDatabase.query("FIN_CONTA", arrayOfString, str1, null, null, null, null);
        int i;
        if (localCursor.moveToNext())
        {
          localConta1 = new Conta();
          i = 0;
        }
        int j;
        String str2;
        localStringBuilder = new StringBuilder("Erro ao buscar a conta pelo nome: ");
      }
      catch (SQLException localSQLException1)
      {
        try
        {
          j = localCursor.getInt(i);
          localConta1.id = j;
          str2 = localCursor.getString(1);
          localConta1.CON_ST_BANCO = str2;
          localObject1 = localConta1;
          localCursor.close();
          localObject2 = localObject1;
          return localObject2;
        }
        catch (SQLException localSQLException2)
        {
          for (;;)
          {
            Conta localConta1;
            Object localObject2;
            StringBuilder localStringBuilder;
            String str3;
            String str4;
            int k;
            Conta localConta2 = localConta1;
          }
        }
        localSQLException1 = localSQLException1;
      }
      str3 = localSQLException1.toString();
      str4 = str3;
      k = Log.e("conta", str4);
      localObject2 = null;
    }
  }
  
  public float calculaSaldoInicialContas()
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Conta.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_CONTA", arrayOfString, "_id <> 0", null, null, null, null);
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("CON_RE_VALORINICIAL");
        do
        {
          float f2 = localCursor.getFloat(i);
          f1 += f2;
        } while (localCursor.moveToNext());
      }
      localCursor.close();
      f3 = f1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar a Conta: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int j = Log.e("conta", str2);
        float f3 = 0.0F;
      }
    }
    return f3;
  }
  
  public List<Conta> carregaComboConta()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("CON_ST_BANCO");
      do
      {
        Conta localConta = new Conta();
        int k = localCursor.getInt(i);
        localConta.id = k;
        String str = localCursor.getString(j);
        localConta.CON_ST_BANCO = str;
        boolean bool = localArrayList.add(localConta);
      } while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }
  
  public int deletar(long paramLong)
  {
    String str = String.valueOf(paramLong);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str;
    return deletar("_id=?", arrayOfString);
  }
  
  public int deletar(String paramString, String[] paramArrayOfString)
  {
    int i = db.delete("FIN_CONTA", paramString, paramArrayOfString);
    String str = "Deletou [" + i + "] registros";
    int j = Log.i("conta", str);
    return i;
  }
  
  public void fechar()
  {
    if (db == null) {
      return;
    }
    db.close();
  }
  
  public Cursor getCursor()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Conta.colunas;
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_CONTA", arrayOfString, null, null, null, null, null, null);
      localCursor2 = localCursor1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar as contas: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int i = Log.e("conta", str2);
        Cursor localCursor2 = null;
      }
    }
    return localCursor2;
  }
  
  public long inserir(ContentValues paramContentValues)
  {
    return db.insert("FIN_CONTA", "", paramContentValues);
  }
  
  public long inserir(Conta paramConta)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramConta.CON_ST_BANCO;
    localContentValues.put("CON_ST_BANCO", str1);
    Integer localInteger = Integer.valueOf(paramConta.CON_IN_AGENCIA);
    localContentValues.put("CON_IN_AGENCIA", localInteger);
    String str2 = paramConta.CON_CH_NCONTA;
    localContentValues.put("CON_CH_NCONTA", str2);
    String str3 = String.valueOf(paramConta.CON_RE_VALORINICIAL);
    localContentValues.put("CON_RE_VALORINICIAL", str3);
    return inserir(localContentValues);
  }
  
  public List<Conta> listarContas()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("CON_ST_BANCO");
      int k = localCursor.getColumnIndex("CON_IN_AGENCIA");
      int m = localCursor.getColumnIndex("CON_CH_NCONTA");
      int n = localCursor.getColumnIndex("CON_RE_VALORINICIAL");
      do
      {
        Conta localConta = new Conta();
        boolean bool = localArrayList.add(localConta);
        int i1 = localCursor.getInt(i);
        localConta.id = i1;
        String str1 = localCursor.getString(j);
        localConta.CON_ST_BANCO = str1;
        int i2 = localCursor.getInt(k);
        localConta.CON_IN_AGENCIA = i2;
        String str2 = localCursor.getString(m);
        localConta.CON_CH_NCONTA = str2;
        Float localFloat1 = Float.valueOf(localCursor.getFloat(n));
        localConta.CON_RE_VALORINICIAL = localFloat1;
        int i3 = localCursor.getInt(i);
        float f = localCursor.getFloat(n);
        Float localFloat2 = Float.valueOf(RepositorioLancamento.calculaTotalConta(i3, f));
        localConta.CON_RE_VALORATUAL = localFloat2;
      } while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }
  
  public Cursor query(SQLiteQueryBuilder paramSQLiteQueryBuilder, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = db;
    SQLiteQueryBuilder localSQLiteQueryBuilder = paramSQLiteQueryBuilder;
    String[] arrayOfString1 = paramArrayOfString1;
    String str1 = paramString1;
    String[] arrayOfString2 = paramArrayOfString2;
    String str2 = paramString2;
    String str3 = paramString3;
    String str4 = paramString4;
    return localSQLiteQueryBuilder.query(localSQLiteDatabase, arrayOfString1, str1, arrayOfString2, str2, str3, str4);
  }
  
  public long salvar(Conta paramConta)
  {
    long l = paramConta.id;
    if (l != 0L) {
      int i = atualizar(paramConta);
    }
    for (;;)
    {
      return l;
      l = inserir(paramConta);
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.conta.RepositorioConta
 * JD-Core Version:    0.7.0.1
 */