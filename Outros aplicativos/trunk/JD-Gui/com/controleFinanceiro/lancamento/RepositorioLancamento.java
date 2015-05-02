package com.controleFinanceiro.lancamento;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import com.controleFinanceiro.conta.Conta;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class RepositorioLancamento
{
  private static final String LANCAMENTO = "lancamento";
  private static final String NOME_BANCO = "controle_financeiro";
  public static final String NOME_TABELA = "FIN_LANCAMENTO";
  protected static SQLiteDatabase db;
  
  protected RepositorioLancamento() {}
  
  public RepositorioLancamento(Context paramContext)
  {
    db = paramContext.openOrCreateDatabase("controle_financeiro", 0, null);
  }
  
  public static float calculaTotalConta(int paramInt, float paramFloat)
  {
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = db;
        String[] arrayOfString = Lancamento.colunas;
        String str1 = "LAN_IN_CONTA = " + paramInt + " AND " + "LAN_IN_STATUS" + " = 1";
        paramInt = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, str1, null, null, null, null);
        if (!paramInt.moveToNext()) {
          continue;
        }
        i = paramInt.getColumnIndex("LAN_RE_VALOR");
        j = paramInt.getColumnIndex("LAN_IN_TIPO");
        f1 = paramInt.getColumnIndex("LAN_RE_DESCONTO");
        f2 = paramInt.getColumnIndex("LAN_RE_MULTA");
        f3 = f2;
        f4 = 0.0F;
        f6 = 0.0F;
      }
      catch (SQLException localSQLException1)
      {
        int i;
        int j;
        float f2;
        float f3;
        float f4;
        float f6;
        float f5;
        float f13;
        int k;
        float f14;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        int m = 0;
        float f23 = 0.0F;
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str2 = localSQLException1.toString();
        String str3 = str2;
        int n = Log.e("lancamento", str3);
        int i1 = m;
        float f15 = 0.0F;
        float f24 = f23;
        int i2 = i1;
        continue;
        float f22;
        float f1 = 0;
        float f12 = 0.0F;
        continue;
      }
      try
      {
        if (paramInt.getInt(j) == 0)
        {
          float f7 = paramInt.getFloat(i);
          float f8 = paramInt.getFloat(f1);
          float f9 = f7 - f8;
          float f10 = paramInt.getFloat(f3);
          float f11 = f9 + f10;
          f5 = f4 + f11;
          f2 = paramInt.moveToNext();
          if (f2 != null) {
            continue;
          }
          f1 = f5;
          f12 = f6;
        }
      }
      catch (SQLException localSQLException2)
      {
        f22 = f5;
        f23 = f6;
        continue;
      }
      try
      {
        paramInt.close();
        f13 = f1 - f12 + paramFloat;
        k = f1;
        f14 = f12;
        f15 = f13;
        f16 = f14;
        return f15;
      }
      catch (SQLException localSQLException3)
      {
        f23 = f12;
        f22 = f1;
        continue;
      }
      f17 = paramInt.getFloat(i);
      f18 = paramInt.getFloat(f1);
      f19 = f17 - f18;
      f2 = paramInt.getFloat(f3);
      f20 = f2;
      f21 = f19 + f20;
      f6 += f21;
    }
  }
  
  public int atualizar(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = db.update("FIN_LANCAMENTO", paramContentValues, paramString, paramArrayOfString);
    String str = "Atualizou [" + i + "] registros";
    int j = Log.i("lancamento", str);
    return i;
  }
  
  public int atualizar(Lancamento paramLancamento)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramLancamento.LAN_ST_DESCRICAO;
    localContentValues.put("LAN_ST_DESCRICAO", str1);
    String str2 = String.valueOf(paramLancamento.LAN_DT_VENCIMENTO);
    localContentValues.put("LAN_DT_VENCIMENTO", str2);
    Integer localInteger1 = Integer.valueOf(paramLancamento.LAN_IN_STATUS);
    localContentValues.put("LAN_IN_STATUS", localInteger1);
    String str3 = String.valueOf(paramLancamento.LAN_RE_VALOR);
    localContentValues.put("LAN_RE_VALOR", str3);
    Integer localInteger2 = Integer.valueOf(paramLancamento.LAN_IN_CATEGORIA);
    localContentValues.put("LAN_IN_CATEGORIA", localInteger2);
    Integer localInteger3 = Integer.valueOf(paramLancamento.LAN_IN_EMPRESA);
    localContentValues.put("LAN_IN_EMPRESA", localInteger3);
    Integer localInteger4 = Integer.valueOf(paramLancamento.LAN_IN_CONTA);
    localContentValues.put("LAN_IN_CONTA", localInteger4);
    Integer localInteger5 = Integer.valueOf(paramLancamento.LAN_IN_TIPO);
    localContentValues.put("LAN_IN_TIPO", localInteger5);
    String str4 = paramLancamento.LAN_ST_OBSERVACAO;
    localContentValues.put("LAN_ST_OBSERVACAO", str4);
    String str5 = String.valueOf(paramLancamento.LAN_RE_DESCONTO);
    localContentValues.put("LAN_RE_DESCONTO", str5);
    String str6 = String.valueOf(paramLancamento.LAN_RE_MULTA);
    localContentValues.put("LAN_RE_MULTA", str6);
    String str7 = String.valueOf(paramLancamento.LAN_DT_PAGAMENTO);
    localContentValues.put("LAN_DT_PAGAMENTO", str7);
    String str8 = String.valueOf(paramLancamento.id);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = str8;
    return atualizar(localContentValues, "_id=?", arrayOfString);
  }
  
  public Lancamento buscarLancamento(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = db;
    String[] arrayOfString = Lancamento.colunas;
    StringBuilder localStringBuilder1 = new StringBuilder("_id=");
    long l1 = paramLong;
    String str1 = l1;
    Cursor localCursor = localSQLiteDatabase.query(true, "FIN_LANCAMENTO", arrayOfString, str1, null, null, null, null, null);
    Lancamento localLancamento1;
    if (localCursor.getCount() > 0)
    {
      boolean bool = localCursor.moveToFirst();
      localLancamento1 = new Lancamento();
      long l2 = localCursor.getLong(0);
      localLancamento1.id = l2;
      String str2 = localCursor.getString(1);
      localLancamento1.LAN_ST_DESCRICAO = str2;
      Date localDate1 = Date.valueOf(localCursor.getString(2));
      localLancamento1.LAN_DT_VENCIMENTO = localDate1;
      int i = localCursor.getInt(3);
      localLancamento1.LAN_IN_STATUS = i;
      Float localFloat1 = Float.valueOf(localCursor.getFloat(4));
      localLancamento1.LAN_RE_VALOR = localFloat1;
      int j = localCursor.getInt(5);
      localLancamento1.LAN_IN_CATEGORIA = j;
      int k = localCursor.getInt(6);
      localLancamento1.LAN_IN_EMPRESA = k;
      int m = localCursor.getInt(7);
      localLancamento1.LAN_IN_CONTA = m;
      int n = localCursor.getInt(8);
      localLancamento1.LAN_IN_TIPO = n;
      String str3 = localCursor.getString(9);
      localLancamento1.LAN_ST_OBSERVACAO = str3;
      Float localFloat2 = Float.valueOf(localCursor.getFloat(10));
      localLancamento1.LAN_RE_DESCONTO = localFloat2;
      Float localFloat3 = Float.valueOf(localCursor.getFloat(11));
      localLancamento1.LAN_RE_MULTA = localFloat3;
      if (localCursor.getString(12).equals("null"))
      {
        Calendar localCalendar = Calendar.getInstance();
        int i1 = localCalendar.get(1);
        int i2 = localCalendar.get(2);
        int i3 = localCalendar.get(5);
        String str4 = String.valueOf(i1);
        StringBuilder localStringBuilder2 = new StringBuilder(str4).append("-");
        int i4 = i2;
        StringBuilder localStringBuilder3 = localStringBuilder2.append(i4).append(1).append("-");
        int i5 = i3;
        Date localDate2 = Date.valueOf(i5);
        localLancamento1.LAN_DT_PAGAMENTO = localDate2;
      }
    }
    for (Lancamento localLancamento2 = localLancamento1;; localLancamento2 = null)
    {
      return localLancamento2;
      Date localDate3 = Date.valueOf(localCursor.getString(12));
      localLancamento1.LAN_DT_PAGAMENTO = localDate3;
      break;
      localCursor.close();
    }
  }
  
  public float calculaSaldoAtualContas()
  {
    float f1 = 0.0F;
    float f2 = 0.0F;
    float f3 = calculaSaldoInicialContas();
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, "LAN_IN_STATUS = 1", null, null, null, null);
      int i;
      int j;
      int k;
      int m;
      if (localCursor.moveToNext())
      {
        i = localCursor.getColumnIndex("LAN_RE_VALOR");
        j = localCursor.getColumnIndex("LAN_IN_TIPO");
        k = localCursor.getColumnIndex("LAN_RE_DESCONTO");
        m = localCursor.getColumnIndex("LAN_RE_MULTA");
      }
      for (;;)
      {
        if (localCursor.getInt(j) == 0)
        {
          float f4 = localCursor.getFloat(i);
          float f5 = localCursor.getFloat(k);
          float f6 = f4 - f5;
          float f7 = localCursor.getFloat(m);
          float f8 = f6 + f7;
          f2 += f8;
        }
        while (!localCursor.moveToNext())
        {
          localCursor.close();
          f9 = f2 - f1 + f3;
          return f9;
          float f10 = localCursor.getFloat(i);
          float f11 = localCursor.getFloat(k);
          f9 = f10 - f11;
          float f12 = localCursor.getFloat(m);
          float f13 = f12;
          float f14 = f9 + f13;
          f1 += f14;
        }
      }
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int n = Log.e("lancamento", str2);
        float f9 = 0.0F;
      }
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
  
  public float calculaTotalCategoria(int paramInt, String paramString1, String paramString2)
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      StringBuilder localStringBuilder1 = new StringBuilder("LAN_IN_CATEGORIA = ");
      int i = paramInt;
      StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append(" AND ").append("LAN_DT_VENCIMENTO").append(" >= '");
      String str1 = paramString1;
      StringBuilder localStringBuilder3 = localStringBuilder2.append(str1).append("' AND ").append("LAN_DT_VENCIMENTO").append(" <= '");
      String str2 = paramString2;
      String str3 = str2 + "'";
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, str3, null, null, null, null);
      if (localCursor.moveToNext())
      {
        int j = localCursor.getColumnIndex("LAN_RE_VALOR");
        int k = localCursor.getColumnIndex("LAN_RE_DESCONTO");
        int m = localCursor.getColumnIndex("LAN_RE_MULTA");
        do
        {
          float f2 = localCursor.getFloat(j);
          float f3 = localCursor.getFloat(k);
          float f4 = f2 - f3;
          float f5 = localCursor.getFloat(m);
          float f6 = f4 + f5;
          f1 += f6;
        } while (localCursor.moveToNext());
      }
      localCursor.close();
      f7 = f1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder4 = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str4 = localSQLException.toString();
        String str5 = str4;
        int n = Log.e("lancamento", str5);
        float f7 = 0.0F;
      }
    }
    return f7;
  }
  
  public float calculaTotalDespesas()
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, "LAN_IN_TIPO = 1", null, null, null, null);
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("LAN_RE_VALOR");
        int j = localCursor.getColumnIndex("LAN_RE_DESCONTO");
        int k = localCursor.getColumnIndex("LAN_RE_MULTA");
        do
        {
          float f2 = localCursor.getFloat(i);
          float f3 = localCursor.getFloat(j);
          float f4 = f2 - f3;
          float f5 = localCursor.getFloat(k);
          float f6 = f4 + f5;
          f1 += f6;
        } while (localCursor.moveToNext());
      }
      localCursor.close();
      f7 = f1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int m = Log.e("lancamento", str2);
        float f7 = 0.0F;
      }
    }
    return f7;
  }
  
  public float calculaTotalDespesasAberto()
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, "LAN_IN_TIPO = 1 AND LAN_IN_STATUS = 0", null, null, null, null);
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("LAN_RE_VALOR");
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
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int j = Log.e("lancamento", str2);
        float f3 = 0.0F;
      }
    }
    return f3;
  }
  
  public float calculaTotalReceitas()
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, "LAN_IN_TIPO = 0", null, null, null, null);
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("LAN_RE_VALOR");
        int j = localCursor.getColumnIndex("LAN_RE_DESCONTO");
        int k = localCursor.getColumnIndex("LAN_RE_MULTA");
        do
        {
          float f2 = localCursor.getFloat(i);
          float f3 = localCursor.getFloat(j);
          float f4 = f2 - f3;
          float f5 = localCursor.getFloat(k);
          float f6 = f4 + f5;
          f1 += f6;
        } while (localCursor.moveToNext());
      }
      localCursor.close();
      f7 = f1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int m = Log.e("lancamento", str2);
        float f7 = 0.0F;
      }
    }
    return f7;
  }
  
  public float calculaTotalReceitasAberto()
  {
    float f1 = 0.0F;
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, "LAN_IN_TIPO = 0 AND LAN_IN_STATUS = 0", null, null, null, null);
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("LAN_RE_VALOR");
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
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int j = Log.e("lancamento", str2);
        float f3 = 0.0F;
      }
    }
    return f3;
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
    int i = db.delete("FIN_LANCAMENTO", paramString, paramArrayOfString);
    String str = "Deletou [" + i + "] registros";
    int j = Log.i("lancamento", str);
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
      String[] arrayOfString = Lancamento.colunas;
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, null, null, null, null, null, null);
      localCursor2 = localCursor1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder("Erro ao buscar as contas: ");
        String str1 = localSQLException.toString();
        String str2 = str1;
        int i = Log.e("lancamento", str2);
        Cursor localCursor2 = null;
      }
    }
    return localCursor2;
  }
  
  public long inserir(ContentValues paramContentValues)
  {
    return db.insert("FIN_LANCAMENTO", "", paramContentValues);
  }
  
  public long inserir(Lancamento paramLancamento)
  {
    ContentValues localContentValues = new ContentValues();
    String str1 = paramLancamento.LAN_ST_DESCRICAO;
    localContentValues.put("LAN_ST_DESCRICAO", str1);
    String str2 = String.valueOf(paramLancamento.LAN_DT_VENCIMENTO);
    localContentValues.put("LAN_DT_VENCIMENTO", str2);
    Integer localInteger1 = Integer.valueOf(paramLancamento.LAN_IN_STATUS);
    localContentValues.put("LAN_IN_STATUS", localInteger1);
    String str3 = String.valueOf(paramLancamento.LAN_RE_VALOR);
    localContentValues.put("LAN_RE_VALOR", str3);
    Integer localInteger2 = Integer.valueOf(paramLancamento.LAN_IN_CATEGORIA);
    localContentValues.put("LAN_IN_CATEGORIA", localInteger2);
    Integer localInteger3 = Integer.valueOf(paramLancamento.LAN_IN_EMPRESA);
    localContentValues.put("LAN_IN_EMPRESA", localInteger3);
    Integer localInteger4 = Integer.valueOf(paramLancamento.LAN_IN_CONTA);
    localContentValues.put("LAN_IN_CONTA", localInteger4);
    Integer localInteger5 = Integer.valueOf(paramLancamento.LAN_IN_TIPO);
    localContentValues.put("LAN_IN_TIPO", localInteger5);
    String str4 = paramLancamento.LAN_ST_OBSERVACAO;
    localContentValues.put("LAN_ST_OBSERVACAO", str4);
    String str5 = String.valueOf(paramLancamento.LAN_RE_DESCONTO);
    localContentValues.put("LAN_RE_DESCONTO", str5);
    String str6 = String.valueOf(paramLancamento.LAN_RE_MULTA);
    localContentValues.put("LAN_RE_MULTA", str6);
    String str7 = String.valueOf(paramLancamento.LAN_DT_PAGAMENTO);
    localContentValues.put("LAN_DT_PAGAMENTO", str7);
    return inserir(localContentValues);
  }
  
  public List<Lancamento> listaLancamentoPorVencimento(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList1 = new ArrayList();
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      StringBuilder localStringBuilder1 = new StringBuilder("LAN_DT_VENCIMENTO>='");
      String str1 = paramString1;
      StringBuilder localStringBuilder2 = localStringBuilder1.append(str1).append("' AND ").append("LAN_DT_VENCIMENTO").append("<='");
      String str2 = paramString2;
      String str3 = str2 + "'";
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, str3, null, null, null, null);
      int i;
      int j;
      int k;
      int m;
      int n;
      int i1;
      int i2;
      int i3;
      int i4;
      int i5;
      int i6;
      if (localCursor1.moveToNext())
      {
        i = localCursor1.getColumnIndex("_id");
        j = localCursor1.getColumnIndex("LAN_ST_DESCRICAO");
        k = localCursor1.getColumnIndex("LAN_DT_VENCIMENTO");
        m = localCursor1.getColumnIndex("LAN_IN_STATUS");
        n = localCursor1.getColumnIndex("LAN_RE_VALOR");
        i1 = localCursor1.getColumnIndex("LAN_IN_CATEGORIA");
        i2 = localCursor1.getColumnIndex("LAN_IN_EMPRESA");
        i3 = localCursor1.getColumnIndex("LAN_IN_CONTA");
        i4 = localCursor1.getColumnIndex("LAN_RE_DESCONTO");
        i5 = localCursor1.getColumnIndex("LAN_RE_MULTA");
        i6 = localCursor1.getColumnIndex("LAN_IN_TIPO");
      }
      for (;;)
      {
        localLancamento1 = new Lancamento();
        ArrayList localArrayList2 = localArrayList1;
        Lancamento localLancamento2 = localLancamento1;
        boolean bool = localArrayList2.add(localLancamento2);
        long l = localCursor1.getLong(i);
        localLancamento1.id = l;
        Cursor localCursor2 = localCursor1;
        int i7 = j;
        String str4 = localCursor2.getString(i7);
        localLancamento1.LAN_ST_DESCRICAO = str4;
        Date localDate1 = Date.valueOf(localCursor1.getString(k));
        localLancamento1.LAN_DT_VENCIMENTO = localDate1;
        Cursor localCursor3 = localCursor1;
        int i8 = m;
        int i9 = localCursor3.getInt(i8);
        localLancamento1.LAN_IN_STATUS = i9;
        Cursor localCursor4 = localCursor1;
        int i10 = n;
        float f1 = localCursor4.getFloat(i10);
        Cursor localCursor5 = localCursor1;
        int i11 = i4;
        float f2 = localCursor5.getFloat(i11);
        float f3 = f1 - f2;
        Cursor localCursor6 = localCursor1;
        int i12 = i5;
        float f4 = localCursor6.getFloat(i12);
        Float localFloat = Float.valueOf(f3 + f4);
        localLancamento1.LAN_RE_VALOR = localFloat;
        int i13 = localCursor1.getInt(i1);
        localLancamento1.LAN_IN_CATEGORIA = i13;
        Cursor localCursor7 = localCursor1;
        int i14 = i2;
        int i15 = localCursor7.getInt(i14);
        localLancamento1.LAN_IN_EMPRESA = i15;
        Cursor localCursor8 = localCursor1;
        int i16 = i3;
        int i17 = localCursor8.getInt(i16);
        localLancamento1.LAN_IN_CONTA = i17;
        Cursor localCursor9 = localCursor1;
        int i18 = i6;
        int i19 = localCursor9.getInt(i18);
        localLancamento1.LAN_IN_TIPO = i19;
        Date localDate2 = localLancamento1.LAN_DT_VENCIMENTO;
        Date localDate3 = Date.valueOf(paramString3);
        int i20 = localDate2.compareTo(localDate3);
        Cursor localCursor10 = localCursor1;
        int i21 = m;
        if (localCursor10.getInt(i21) != 0) {
          break label727;
        }
        int i22;
        if (i20 < 0) {
          i22 = 2130837532;
        }
        int i23;
        for (localLancamento1.LAN_IM_STATUS = i22; !localCursor1.moveToNext(); localLancamento1.LAN_IM_STATUS = i23)
        {
          Comparator local21 = new com/controleFinanceiro/lancamento/RepositorioLancamento$2;
          Comparator local22 = local21;
          RepositorioLancamento localRepositorioLancamento = this;
          local22.<init>(localRepositorioLancamento);
          ArrayList localArrayList3 = localArrayList1;
          Comparator local23 = local21;
          Collections.sort(localArrayList3, local23);
          localCursor1.close();
          localArrayList4 = localArrayList1;
          return localArrayList4;
          if (i20 != 0) {
            break label710;
          }
          i23 = 2130837505;
        }
      }
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        Lancamento localLancamento1;
        StringBuilder localStringBuilder3 = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str5 = localSQLException.toString();
        String str6 = str5;
        int i24 = Log.e("lancamento", str6);
        ArrayList localArrayList4 = null;
        continue;
        label710:
        localArrayList4 = null;
        ArrayList localArrayList5 = localArrayList4;
        localLancamento1.LAN_IM_STATUS = localArrayList5;
        continue;
        label727:
        int i25 = 2130837526;
        localLancamento1.LAN_IM_STATUS = i25;
      }
    }
  }
  
  public List<Lancamento> listaLancamentosPendentes(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    try
    {
      SQLiteDatabase localSQLiteDatabase = db;
      String[] arrayOfString = Lancamento.colunas;
      StringBuilder localStringBuilder1 = new StringBuilder("LAN_DT_VENCIMENTO <= '");
      String str1 = paramString;
      String str2 = str1 + "' AND " + "LAN_IN_STATUS" + " = 0";
      Cursor localCursor1 = localSQLiteDatabase.query("FIN_LANCAMENTO", arrayOfString, str2, null, null, null, null);
      int i;
      int j;
      int k;
      int m;
      int n;
      int i1;
      int i2;
      int i3;
      int i4;
      int i5;
      int i6;
      if (localCursor1.moveToNext())
      {
        i = localCursor1.getColumnIndex("_id");
        j = localCursor1.getColumnIndex("LAN_ST_DESCRICAO");
        k = localCursor1.getColumnIndex("LAN_DT_VENCIMENTO");
        m = localCursor1.getColumnIndex("LAN_IN_STATUS");
        n = localCursor1.getColumnIndex("LAN_RE_VALOR");
        i1 = localCursor1.getColumnIndex("LAN_IN_CATEGORIA");
        i2 = localCursor1.getColumnIndex("LAN_IN_EMPRESA");
        i3 = localCursor1.getColumnIndex("LAN_IN_CONTA");
        i4 = localCursor1.getColumnIndex("LAN_RE_DESCONTO");
        i5 = localCursor1.getColumnIndex("LAN_RE_MULTA");
        i6 = localCursor1.getColumnIndex("LAN_IN_TIPO");
      }
      for (;;)
      {
        localLancamento1 = new Lancamento();
        ArrayList localArrayList2 = localArrayList1;
        Lancamento localLancamento2 = localLancamento1;
        boolean bool = localArrayList2.add(localLancamento2);
        long l = localCursor1.getLong(i);
        localLancamento1.id = l;
        Cursor localCursor2 = localCursor1;
        int i7 = j;
        String str3 = localCursor2.getString(i7);
        localLancamento1.LAN_ST_DESCRICAO = str3;
        Date localDate1 = Date.valueOf(localCursor1.getString(k));
        localLancamento1.LAN_DT_VENCIMENTO = localDate1;
        Cursor localCursor3 = localCursor1;
        int i8 = m;
        int i9 = localCursor3.getInt(i8);
        localLancamento1.LAN_IN_STATUS = i9;
        Cursor localCursor4 = localCursor1;
        int i10 = n;
        float f1 = localCursor4.getFloat(i10);
        Cursor localCursor5 = localCursor1;
        int i11 = i4;
        float f2 = localCursor5.getFloat(i11);
        float f3 = f1 - f2;
        Cursor localCursor6 = localCursor1;
        int i12 = i5;
        float f4 = localCursor6.getFloat(i12);
        Float localFloat = Float.valueOf(f3 + f4);
        localLancamento1.LAN_RE_VALOR = localFloat;
        int i13 = localCursor1.getInt(i1);
        localLancamento1.LAN_IN_CATEGORIA = i13;
        Cursor localCursor7 = localCursor1;
        int i14 = i2;
        int i15 = localCursor7.getInt(i14);
        localLancamento1.LAN_IN_EMPRESA = i15;
        Cursor localCursor8 = localCursor1;
        int i16 = i3;
        int i17 = localCursor8.getInt(i16);
        localLancamento1.LAN_IN_CONTA = i17;
        Cursor localCursor9 = localCursor1;
        int i18 = i6;
        int i19 = localCursor9.getInt(i18);
        localLancamento1.LAN_IN_TIPO = i19;
        Date localDate2 = localLancamento1.LAN_DT_VENCIMENTO;
        Date localDate3 = Date.valueOf(paramString);
        int i20 = localDate2.compareTo(localDate3);
        Cursor localCursor10 = localCursor1;
        int i21 = m;
        if (localCursor10.getInt(i21) != 0) {
          break label703;
        }
        int i22;
        if (i20 < 0) {
          i22 = 2130837532;
        }
        int i23;
        for (localLancamento1.LAN_IM_STATUS = i22; !localCursor1.moveToNext(); localLancamento1.LAN_IM_STATUS = i23)
        {
          Comparator local31 = new com/controleFinanceiro/lancamento/RepositorioLancamento$3;
          Comparator local32 = local31;
          RepositorioLancamento localRepositorioLancamento = this;
          local32.<init>(localRepositorioLancamento);
          ArrayList localArrayList3 = localArrayList1;
          Comparator local33 = local31;
          Collections.sort(localArrayList3, local33);
          localCursor1.close();
          localArrayList4 = localArrayList1;
          return localArrayList4;
          if (i20 != 0) {
            break label686;
          }
          i23 = 2130837505;
        }
      }
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        Lancamento localLancamento1;
        StringBuilder localStringBuilder2 = new StringBuilder("Erro ao buscar o lançamento pela descrição: ");
        String str4 = localSQLException.toString();
        String str5 = str4;
        int i24 = Log.e("lancamento", str5);
        ArrayList localArrayList4 = null;
        continue;
        label686:
        localArrayList4 = null;
        ArrayList localArrayList5 = localArrayList4;
        localLancamento1.LAN_IM_STATUS = localArrayList5;
        continue;
        label703:
        int i25 = 2130837526;
        localLancamento1.LAN_IM_STATUS = i25;
      }
    }
  }
  
  public List<Lancamento> listarTodosLancamentos(String paramString)
  {
    Cursor localCursor1 = getCursor();
    ArrayList localArrayList1 = new ArrayList();
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    if (localCursor1.moveToFirst())
    {
      Cursor localCursor2 = localCursor1;
      String str1 = "_id";
      i = localCursor2.getColumnIndex(str1);
      Cursor localCursor3 = localCursor1;
      String str2 = "LAN_ST_DESCRICAO";
      j = localCursor3.getColumnIndex(str2);
      Cursor localCursor4 = localCursor1;
      String str3 = "LAN_DT_VENCIMENTO";
      k = localCursor4.getColumnIndex(str3);
      Cursor localCursor5 = localCursor1;
      String str4 = "LAN_IN_STATUS";
      m = localCursor5.getColumnIndex(str4);
      Cursor localCursor6 = localCursor1;
      String str5 = "LAN_RE_VALOR";
      n = localCursor6.getColumnIndex(str5);
      Cursor localCursor7 = localCursor1;
      String str6 = "LAN_IN_CATEGORIA";
      i1 = localCursor7.getColumnIndex(str6);
      Cursor localCursor8 = localCursor1;
      String str7 = "LAN_IN_EMPRESA";
      i2 = localCursor8.getColumnIndex(str7);
      Cursor localCursor9 = localCursor1;
      String str8 = "LAN_IN_CONTA";
      i3 = localCursor9.getColumnIndex(str8);
      Cursor localCursor10 = localCursor1;
      String str9 = "LAN_IN_TIPO";
      i4 = localCursor10.getColumnIndex(str9);
      Cursor localCursor11 = localCursor1;
      String str10 = "LAN_RE_DESCONTO";
      i5 = localCursor11.getColumnIndex(str10);
      Cursor localCursor12 = localCursor1;
      String str11 = "LAN_RE_MULTA";
      i6 = localCursor12.getColumnIndex(str11);
    }
    for (;;)
    {
      Lancamento localLancamento1 = new Lancamento();
      ArrayList localArrayList2 = localArrayList1;
      Lancamento localLancamento2 = localLancamento1;
      boolean bool = localArrayList2.add(localLancamento2);
      long l = localCursor1.getLong(i);
      localLancamento1.id = l;
      String str12 = localCursor1.getString(j);
      localLancamento1.LAN_ST_DESCRICAO = str12;
      Date localDate1 = Date.valueOf(localCursor1.getString(k));
      localLancamento1.LAN_DT_VENCIMENTO = localDate1;
      int i7 = localCursor1.getInt(m);
      localLancamento1.LAN_IN_STATUS = i7;
      float f1 = localCursor1.getFloat(n);
      float f2 = localCursor1.getFloat(i5);
      float f3 = f1 - f2;
      float f4 = localCursor1.getFloat(i6);
      Float localFloat = Float.valueOf(f3 + f4);
      localLancamento1.LAN_RE_VALOR = localFloat;
      int i8 = localCursor1.getInt(i1);
      localLancamento1.LAN_IN_CATEGORIA = i8;
      int i9 = localCursor1.getInt(i2);
      localLancamento1.LAN_IN_EMPRESA = i9;
      int i10 = localCursor1.getInt(i3);
      localLancamento1.LAN_IN_CONTA = i10;
      int i11 = localCursor1.getInt(i4);
      localLancamento1.LAN_IN_TIPO = i11;
      Date localDate2 = localLancamento1.LAN_DT_VENCIMENTO;
      Date localDate3 = Date.valueOf(paramString);
      int i12 = localDate2.compareTo(localDate3);
      if (localCursor1.getInt(m) == 0) {
        if (i12 < 0)
        {
          int i13 = 2130837532;
          localLancamento1.LAN_IM_STATUS = i13;
        }
      }
      while (!localCursor1.moveToNext())
      {
        Comparator local11 = new com/controleFinanceiro/lancamento/RepositorioLancamento$1;
        Comparator local12 = local11;
        RepositorioLancamento localRepositorioLancamento = this;
        local12.<init>(localRepositorioLancamento);
        ArrayList localArrayList3 = localArrayList1;
        Comparator local13 = local11;
        Collections.sort(localArrayList3, local13);
        localCursor1.close();
        return localArrayList1;
        if (i12 == 0)
        {
          int i14 = 2130837505;
          localLancamento1.LAN_IM_STATUS = i14;
        }
        else
        {
          int i15 = 2130837526;
          localLancamento1.LAN_IM_STATUS = i15;
          continue;
          int i16 = 2130837512;
          localLancamento1.LAN_IM_STATUS = i16;
        }
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
  
  public long salvar(Lancamento paramLancamento)
  {
    long l = paramLancamento.id;
    if (l != 0L) {
      int i = atualizar(paramLancamento);
    }
    for (;;)
    {
      return l;
      l = inserir(paramLancamento);
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.RepositorioLancamento
 * JD-Core Version:    0.7.0.1
 */