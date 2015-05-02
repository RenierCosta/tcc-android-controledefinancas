package com.controleFinanceiro.empresa;

import java.util.Comparator;

public class OrdenaEmpresa
  implements Comparator<Empresa>
{
  public int compare(Empresa paramEmpresa1, Empresa paramEmpresa2)
  {
    String str1 = paramEmpresa1.EMP_ST_NOME;
    String str2 = paramEmpresa2.EMP_ST_NOME;
    return str1.compareTo(str2);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.OrdenaEmpresa
 * JD-Core Version:    0.7.0.1
 */