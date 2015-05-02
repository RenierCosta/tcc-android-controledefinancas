package com.controleFinanceiro.conta;

import android.provider.BaseColumns;

public class Conta
{
  public static String[] colunas;
  public String CON_CH_NCONTA;
  public int CON_IN_AGENCIA;
  public Number CON_RE_VALORATUAL;
  public Number CON_RE_VALORINICIAL;
  public String CON_ST_BANCO;
  public int id;
  
  static
  {
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "CON_ST_BANCO";
    arrayOfString[2] = "CON_IN_AGENCIA";
    arrayOfString[3] = "CON_CH_NCONTA";
    arrayOfString[4] = "CON_RE_VALORINICIAL";
    colunas = arrayOfString;
  }
  
  public Conta() {}
  
  public Conta(int paramInt1, String paramString1, int paramInt2, String paramString2, Number paramNumber1, Number paramNumber2)
  {
    this.id = paramInt1;
    this.CON_ST_BANCO = paramString1;
    this.CON_IN_AGENCIA = paramInt2;
    this.CON_CH_NCONTA = paramString2;
    this.CON_RE_VALORINICIAL = paramNumber1;
    this.CON_RE_VALORATUAL = paramNumber2;
  }
  
  public Conta(String paramString1, int paramInt, String paramString2, Number paramNumber1, Number paramNumber2)
  {
    this.CON_ST_BANCO = paramString1;
    this.CON_IN_AGENCIA = paramInt;
    this.CON_CH_NCONTA = paramString2;
    this.CON_RE_VALORINICIAL = paramNumber1;
    this.CON_RE_VALORATUAL = paramNumber2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("Banco: ");
    String str1 = this.CON_ST_BANCO;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(str1).append("Agência: ");
    int i = this.CON_IN_AGENCIA;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(i).append("Conta: ");
    String str2 = this.CON_CH_NCONTA;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(str2).append("Valor Inicial: ");
    Number localNumber = this.CON_RE_VALORINICIAL;
    return localNumber;
  }
  
  public static final class Contas
    implements BaseColumns
  {
    public static final String CON_CH_NCONTA = "CON_CH_NCONTA";
    public static final String CON_IN_AGENCIA = "CON_IN_AGENCIA";
    public static final String CON_RE_VALORINICIAL = "CON_RE_VALORINICIAL";
    public static final String CON_ST_BANCO = "CON_ST_BANCO";
    public static final String DEFAULT_SORT_ORDER = "_id ASC";
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.conta.Conta
 * JD-Core Version:    0.7.0.1
 */