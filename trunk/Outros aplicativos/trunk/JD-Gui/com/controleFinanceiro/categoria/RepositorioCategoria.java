package com.controleFinanceiro.categoria;

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

public class RepositorioCategoria
{
  private static final String CATEGORIA = "categoria";
  private static final String NOME_BANCO = "controle_financeiro";
  public static final String NOME_TABELA = "FIN_CATEGORIA";
  protected static SQLiteDatabase db;
  
  protected RepositorioCategoria() {}
  
  public RepositorioCategoria(Context paramContext)
  {
    db = paramContext.openOrCreateDatabase("controle_financeiro", 0, null);
  }
  
  public static int atualizar(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = db.update("FIN_CATEGORIA", paramContentValues, paramString, paramArrayOfString);
    String str = "Atualizou [" + i + "] registros";
    int j = Log.i("categoria", str);
    return i;
  }
  
  public static int atualizar(Categoria paramCategoria)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramCategoria.CAT_ST_DESCRICAO;
    localContentValues.put("CAT_ST_DESCRICAO", str1);
    Integer localInteger = Integer.valueOf(paramCategoria.CAT_IN_TIPO);
    localContentValues.put("CAT_IN_TIPO", localInteger);
    String str2 = String.valueOf(paramCategoria.id);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str2;
    return atualizar(localContentValues, "_id=?", arrayOfString);
  }
  
  public static long inserir(ContentValues paramContentValues)
  {
    return db.insert("FIN_CATEGORIA", "", paramContentValues);
  }
  
  public static long inserir(Categoria paramCategoria)
  {
    ContentValues localContentValues = new ContentValues();
    String str = paramCategoria.CAT_ST_DESCRICAO;
    localContentValues.put("CAT_ST_DESCRICAO", str);
    Integer localInteger = Integer.valueOf(paramCategoria.CAT_IN_TIPO);
    localContentValues.put("CAT_IN_TIPO", localInteger);
    return inserir(localContentValues);
  }
  
  public static long salvar(Categoria paramCategoria)
  {
    long l = paramCategoria.id;
    if (l != 0L) {
      int i = atualizar(paramCategoria);
    }
    for (;;)
    {
      return l;
      l = inserir(paramCategoria);
    }
  }
  
  public Categoria buscarCategoria(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = db;
    String[] arrayOfString = Categoria.colunas;
    String str1 = "_id=" + paramLong;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    Cursor localCursor = localSQLiteDatabase.query(true, "FIN_CATEGORIA", arrayOfString, str1, null, str2, str3, str4, str5);
    Categoria localCategoria1;
    if (localCursor.getCount() > 0)
    {
      boolean bool = localCursor.moveToFirst();
      localCategoria1 = new Categoria();
      int i = localCursor.getInt(0);
      localCategoria1.id = i;
      String str6 = localCursor.getString(1);
      localCategoria1.CAT_ST_DESCRICAO = str6;
      int j = localCursor.getInt(2);
      localCategoria1.CAT_IN_TIPO = j;
    }
    for (Categoria localCategoria2 = localCategoria1;; localCategoria2 = null)
    {
      return localCategoria2;
      localCursor.close();
    }
  }
  
  public Categoria buscarCategoriaPorNome(String paramString)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = db;
        String[] arrayOfString = Categoria.colunas;
        String str1 = "CAT_ST_DESCRICAO='" + paramString + "'";
        Cursor localCursor = localSQLiteDatabase.query("FIN_CATEGORIA", arrayOfString, str1, null, null, null, null);
        int i;
        if (localCursor.moveToNext())
        {
          localCategoria1 = new Categoria();
          i = 0;
        }
        int j;
        String str2;
        int k;
        localStringBuilder = new StringBuilder("Erro ao buscar a categoria pelo nome: ");
      }
      catch (SQLException localSQLException1)
      {
        try
        {
          j = localCursor.getInt(i);
          localCategoria1.id = j;
          str2 = localCursor.getString(1);
          localCategoria1.CAT_ST_DESCRICAO = str2;
          k = localCursor.getInt(2);
          localCategoria1.CAT_IN_TIPO = k;
          localObject1 = localCategoria1;
          localCursor.close();
          localObject2 = localObject1;
          return localObject2;
        }
        catch (SQLException localSQLException2)
        {
          for (;;)
          {
            Categoria localCategoria1;
            Object localObject2;
            StringBuilder localStringBuilder;
            String str3;
            String str4;
            int m;
            Categoria localCategoria2 = localCategoria1;
          }
        }
        localSQLException1 = localSQLException1;
      }
      str3 = localSQLException1.toString();
      str4 = str3;
      m = Log.e("categoria", str4);
      localObject2 = null;
    }
  }
  
  public int buscarTipoCategoria(String paramString)
  {
    int i = 0;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Categoria.colunas;
      String str1 = "CAT_ST_DESCRICAO='" + paramString + "'";
      Cursor localCursor = localSQLiteDatabase.query("FIN_CATEGORIA", arrayOfString, str1, null, null, null, null);
      if (localCursor.moveToNext()) {
        i = localCursor.getInt(2);
      }
      localCursor.close();
      j = i;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar a categoria pelo nome: ");
        String str2 = localSQLException.toString();
        String str3 = str2;
        int k = Log.e("categoria", str3);
        int j = 0;
      }
    }
    return j;
  }
  
  public List<Categoria> carregaComboCategoria()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("CAT_ST_DESCRICAO");
      do
      {
        Categoria localCategoria = new Categoria();
        int k = localCursor.getInt(i);
        localCategoria.id = k;
        String str = localCursor.getString(j);
        localCategoria.CAT_ST_DESCRICAO = str;
        boolean bool = localArrayList.add(localCategoria);
      } while (localCursor.moveToNext());
    }
    OrdenaCategoria localOrdenaCategoria = new OrdenaCategoria();
    Collections.sort(localArrayList, localOrdenaCategoria);
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
    int i = db.delete("FIN_CATEGORIA", paramString, paramArrayOfString);
    String str = "Deletou [" + i + "] registros";
    int j = Log.i("categoria", str);
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
      String[] arrayOfString = Categoria.colunas;
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_CATEGORIA", arrayOfString, null, null, null, null, null, null);
      localCursor2 = localCursor1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar a categoria: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int i = Log.e("categoria", str2);
        Cursor localCursor2 = null;
      }
    }
    return localCursor2;
  }
  
  public List<Categoria> listarCategoria()
  {
    Cursor localCursor = getCursor();
    ArrayList localArrayList = new ArrayList();
    int i;
    int j;
    int k;
    if (localCursor.moveToFirst())
    {
      i = localCursor.getColumnIndex("_id");
      j = localCursor.getColumnIndex("CAT_ST_DESCRICAO");
      k = localCursor.getColumnIndex("CAT_IN_TIPO");
    }
    for (;;)
    {
      Categoria localCategoria = new Categoria();
      boolean bool = localArrayList.add(localCategoria);
      int m = localCursor.getInt(i);
      localCategoria.id = m;
      String str = localCursor.getString(j);
      localCategoria.CAT_ST_DESCRICAO = str;
      if (localCursor.getInt(k) == 0) {}
      for (localCategoria.CAT_ST_TIPO = "Entrada"; !localCursor.moveToNext(); localCategoria.CAT_ST_TIPO = "Saída")
      {
        localCursor.close();
        return localArrayList;
      }
    }
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
 * Qualified Name:     com.controleFinanceiro.categoria.RepositorioCategoria
 * JD-Core Version:    0.7.0.1
 */