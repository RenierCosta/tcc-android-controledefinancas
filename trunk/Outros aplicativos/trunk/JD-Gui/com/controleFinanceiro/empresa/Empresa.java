package com.controleFinanceiro.empresa;

import android.provider.BaseColumns;

public class Empresa
{
  public static String[] colunas;
  public String EMP_CH_TELEFONE;
  public String EMP_ST_NOME;
  public int id;
  
  static
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "EMP_ST_NOME";
    arrayOfString[2] = "EMP_CH_TELEFONE";
    colunas = arrayOfString;
  }
  
  public Empresa() {}
  
  public Empresa(int paramInt, String paramString1, String paramString2)
  {
    this.id = paramInt;
    this.EMP_ST_NOME = paramString1;
    this.EMP_CH_TELEFONE = paramString2;
  }
  
  public Empresa(String paramString1, String paramString2)
  {
    this.EMP_ST_NOME = paramString1;
    this.EMP_CH_TELEFONE = paramString2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("Empresa: ");
    String str1 = this.EMP_ST_NOME;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(str1).append("Telefone: ");
    String str2 = this.EMP_CH_TELEFONE;
    return str2;
  }
  
  public static final class Empresas
    implements BaseColumns
  {
    public static final String DEFAULT_SORT_ORDER = "_id ASC";
    public static final String emp_ch_telefone = "EMP_CH_TELEFONE";
    public static final String emp_st_nome = "EMP_ST_NOME";
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.Empresa
 * JD-Core Version:    0.7.0.1
 */