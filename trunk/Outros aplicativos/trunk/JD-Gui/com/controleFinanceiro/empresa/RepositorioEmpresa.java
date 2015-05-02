package com.controleFinanceiro.empresa;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RepositorioEmpresa
{
  private static final String EMPRESA = "empresa";
  private static final String NOME_BANCO = "controle_financeiro";
  public static final String NOME_TABELA = "FIN_EMPRESA";
  protected static SQLiteDatabase db;
  
  protected RepositorioEmpresa() {}
  
  public RepositorioEmpresa(Context paramContext)
  {
    db = paramContext.openOrCreateDatabase("controle_financeiro", 0, null);
  }
  
  public static int atualizar(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = db.update("FIN_EMPRESA", paramContentValues, paramString, paramArrayOfString);
    String str = "Atualizou [" + i + "] registros";
    int j = Log.i("empresa", str);
    return i;
  }
  
  public static int atualizar(Empresa paramEmpresa)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramEmpresa.EMP_ST_NOME;
    localContentValues.put("EMP_ST_NOME", str1);
    String str2 = paramEmpresa.EMP_CH_TELEFONE;
    localContentValues.put("EMP_CH_TELEFONE", str2);
    String str3 = String.valueOf(paramEmpresa.id);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str3;
    return atualizar(localContentValues, "_id=?", arrayOfString);
  }
  
  public static long inserir(ContentValues paramContentValues)
  {
    return db.insert("FIN_EMPRESA", "", paramContentValues);
  }
  
  public static long inserir(Empresa paramEmpresa)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramEmpresa.EMP_ST_NOME;
    localContentValues.put("EMP_ST_NOME", str1);
    String str2 = paramEmpresa.EMP_CH_TELEFONE;
    localContentValues.put("EMP_CH_TELEFONE", str2);
    return inserir(localContentValues);
  }
  
  public static long salvar(Empresa paramEmpresa)
  {
    long l = paramEmpresa.id;
    if (l != 0L) {
      int i = atualizar(paramEmpresa);
    }
    for (;;)
    {
      return l;
      l = inserir(paramEmpresa);
    }
  }
  
  public Empresa buscarEmpresa(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = db;
    String[] arrayOfString = Empresa.colunas;
    String str1 = "_id=" + paramLong;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    Cursor localCursor = localSQLiteDatabase.query(true, "FIN_EMPRESA", arrayOfString, str1, null, str2, str3, str4, str5);
    Empresa localEmpresa1;
    if (localCursor.getCount() > 0)
    {
      boolean bool = localCursor.moveToFirst();
      localEmpresa1 = new Empresa();
      int i = localCursor.getInt(0);
      localEmpresa1.id = i;
      String str6 = localCursor.getString(1);
      localEmpresa1.EMP_ST_NOME = str6;
      String str7 = localCursor.getString(2);
      localEmpresa1.EMP_CH_TELEFONE = str7;
    }
    for (Empresa localEmpresa2 = localEmpresa1;; localEmpresa2 = null)
    {
      return localEmpresa2;
      localCursor.close();
    }
  }
  
  public Empresa buscarEmpresaPorNome(String paramString)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = db;
        String[] arrayOfString = Empresa.colunas;
        String str1 = "EMP_ST_NOME='" + null + "'";
        Cursor localCursor = localSQLiteDatabase.query("FIN_EMPRESA", arrayOfString, str1, null, null, null, null);
        int i;
        if (localCursor.moveToNext())
        {
          localEmpresa1 = new Empresa();
          i = 0;
        }
        int j;
        String str2;
        localStringBuilder = new StringBuilder("Erro ao buscar a empresa pelo nome: ");
      }
      catch (SQLException localSQLException1)
      {
        try
        {
          j = localCursor.getInt(i);
          localEmpresa1.id = j;
          str2 = localCursor.getString(1);
          localEmpresa1.EMP_ST_NOME = str2;
          localObject1 = localEmpresa1;
          localCursor.close();
          localObject2 = localObject1;
          return localObject2;
        }
        catch (SQLException localSQLException2)
        {
          for (;;)
          {
            Empresa localEmpresa1;
            Object localObject2;
            StringBuilder localStringBuilder;
            String str3;
            String str4;
            int k;
            Empresa localEmpresa2 = localEmpresa1;
          }
        }
        localSQLException1 = localSQLException1;
      }
      str3 = localSQLException1.toString();
      str4 = str3;
      k = Log.e("empresa", str4);
      localObject2 = null;
    }
  }
  
  public List<Empresa> carregaComboEmpresa()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("EMP_ST_NOME");
      do
      {
        Empresa localEmpresa = new Empresa();
        int k = localCursor.getInt(i);
        localEmpresa.id = k;
        String str = localCursor.getString(j);
        localEmpresa.EMP_ST_NOME = str;
        boolean bool = localArrayList.add(localEmpresa);
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
    int i = db.delete("FIN_EMPRESA", paramString, paramArrayOfString);
    String str = "Deletou [" + i + "] registros";
    int j = Log.i("empresa", str);
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
      String[] arrayOfString = Empresa.colunas;
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_EMPRESA", arrayOfString, null, null, null, null, null, null);
      localCursor2 = localCursor1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar as empresas: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int i = Log.e("empresa", str2);
        Cursor localCursor2 = null;
      }
    }
    return localCursor2;
  }
  
  public List<Empresa> listarEmpresas()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("EMP_ST_NOME");
      int k = localCursor.getColumnIndex("EMP_CH_TELEFONE");
      do
      {
        Empresa localEmpresa = new Empresa();
        boolean bool = localArrayList.add(localEmpresa);
        int m = localCursor.getInt(i);
        localEmpresa.id = m;
        String str1 = localCursor.getString(j);
        localEmpresa.EMP_ST_NOME = str1;
        String str2 = localCursor.getString(k);
        localEmpresa.EMP_CH_TELEFONE = str2;
      } while (localCursor.moveToNext());
    }
    OrdenaEmpresa localOrdenaEmpresa = new OrdenaEmpresa();
    Collections.sort(localArrayList, localOrdenaEmpresa);
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
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.RepositorioEmpresa
 * JD-Core Version:    0.7.0.1
 */