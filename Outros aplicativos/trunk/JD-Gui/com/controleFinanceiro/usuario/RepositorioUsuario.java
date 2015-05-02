package com.controleFinanceiro.usuario;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;

public class RepositorioUsuario
{
  private static final String NOME_BANCO = "controle_financeiro";
  public static final String NOME_TABELA = "FIN_USUARIO";
  private static final String USUARIO = "usuario";
  protected SQLiteDatabase db;
  
  protected RepositorioUsuario() {}
  
  public RepositorioUsuario(Context paramContext)
  {
    SQLiteDatabase localSQLiteDatabase = paramContext.openOrCreateDatabase("controle_financeiro", 0, null);
    this.db = localSQLiteDatabase;
  }
  
  public int atualizar(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = this.db.update("FIN_USUARIO", paramContentValues, paramString, paramArrayOfString);
    String str = "Atualizou [" + i + "] registros";
    int j = Log.i("usuario", str);
    return i;
  }
  
  public int atualizar(Usuario paramUsuario)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramUsuario.USU_ST_SENHA;
    localContentValues.put("USU_ST_SENHA", str1);
    String str2 = String.valueOf(paramUsuario.id);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str2;
    return atualizar(localContentValues, "_id=?", arrayOfString);
  }
  
  public Usuario buscarUsuario(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = this.db;
    String[] arrayOfString = Usuario.colunas;
    String str1 = "_id=" + paramLong;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    Cursor localCursor = localSQLiteDatabase.query(true, "FIN_USUARIO", arrayOfString, str1, null, str2, str3, str4, str5);
    Usuario localUsuario1;
    if (localCursor.getCount() > 0)
    {
      boolean bool = localCursor.moveToFirst();
      localUsuario1 = new Usuario();
      int i = localCursor.getInt(0);
      localUsuario1.id = i;
      String str6 = localCursor.getString(1);
      localUsuario1.USU_ST_SENHA = str6;
    }
    for (Usuario localUsuario2 = localUsuario1;; localUsuario2 = null)
    {
      return localUsuario2;
      localCursor.close();
    }
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
    int i = this.db.delete("FIN_USUARIO", paramString, paramArrayOfString);
    String str = "Deletou [" + i + "] registros";
    int j = Log.i("usuario", str);
    return i;
  }
  
  public void fechar()
  {
    if (this.db == null) {
      return;
    }
    this.db.close();
  }
  
  public Cursor getCursor()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.db;
      String[] arrayOfString = Usuario.colunas;
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_USUARIO", arrayOfString, null, null, null, null, null, null);
      localCursor2 = localCursor1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar os usuários: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int i = Log.e("usuario", str2);
        Cursor localCursor2 = null;
      }
    }
    return localCursor2;
  }
  
  public long inserir(ContentValues paramContentValues)
  {
    return this.db.insert("FIN_USUARIO", "", paramContentValues);
  }
  
  public long inserir(Usuario paramUsuario)
  {
    ContentValues localContentValues = new ContentValues();
    String str = paramUsuario.USU_ST_SENHA;
    localContentValues.put("USU_ST_SENHA", str);
    return inserir(localContentValues);
  }
  
  public Cursor query(SQLiteQueryBuilder paramSQLiteQueryBuilder, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = this.db;
    SQLiteQueryBuilder localSQLiteQueryBuilder = paramSQLiteQueryBuilder;
    String[] arrayOfString1 = paramArrayOfString1;
    String str1 = paramString1;
    String[] arrayOfString2 = paramArrayOfString2;
    String str2 = paramString2;
    String str3 = paramString3;
    String str4 = paramString4;
    return localSQLiteQueryBuilder.query(localSQLiteDatabase, arrayOfString1, str1, arrayOfString2, str2, str3, str4);
  }
  
  public String recuperaSenha(int paramInt)
  {
    String str1 = "";
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.db;
      String[] arrayOfString = Usuario.colunas;
      String str2 = "_id=" + paramInt;
      Cursor localCursor = localSQLiteDatabase.query("FIN_USUARIO", arrayOfString, str2, null, null, null, null);
      if (localCursor.moveToNext()) {
        str1 = localCursor.getString(1);
      }
      localCursor.close();
      str3 = str1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o usuário: ");
        String str4 = localSQLException.toString();
        String str5 = str4;
        int i = Log.e("usuario", str5);
        String str3 = "";
      }
    }
    return str3;
  }
  
  public long salvar(Usuario paramUsuario)
  {
    long l = paramUsuario.id;
    if (l != 0L) {
      int i = atualizar(paramUsuario);
    }
    for (;;)
    {
      return l;
      l = inserir(paramUsuario);
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.usuario.RepositorioUsuario
 * JD-Core Version:    0.7.0.1
 */