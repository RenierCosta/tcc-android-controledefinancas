package com.controleFinanceiro.empresa;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public class EmpresaListAdapter
  extends BaseAdapter
{
  private Context context;
  private List<Empresa> lista;
  
  public EmpresaListAdapter(Context paramContext, List<Empresa> paramList)
  {
    this.context = paramContext;
    this.lista = paramList;
  }
  
  public int getCount()
  {
    return this.lista.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.lista.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Empresa localEmpresa = (Empresa)this.lista.get(paramInt);
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903043, null);
    try
    {
      TextView localTextView1 = (TextView)localView.findViewById(2131099658);
      String str1 = localEmpresa.EMP_ST_NOME;
      localTextView1.setText(str1);
      TextView localTextView2 = (TextView)localView.findViewById(2131099659);
      String str2 = localEmpresa.EMP_CH_TELEFONE;
      localTextView2.setText(str2);
      return localView;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        StackTraceElement[] arrayOfStackTraceElement = localException.getStackTrace();
      }
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.EmpresaListAdapter
 * JD-Core Version:    0.7.0.1
 */