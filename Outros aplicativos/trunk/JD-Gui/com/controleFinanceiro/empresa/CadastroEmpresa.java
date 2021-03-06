package com.controleFinanceiro.empresa;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import com.controleFinanceiro.configuracao.Configuracao;
import java.util.List;

public class CadastroEmpresa
  extends ListActivity
{
  protected static final int CONFIGURACAO = 5;
  protected static final int INSERIR_EDITAR = 1;
  protected static final int SOBRE = 7;
  public static RepositorioEmpresa repositorio;
  private List<Empresa> empresas;
  AlertDialog janelaSobre;
  
  public void atualizarLista()
  {
    List localList1 = repositorio.listarEmpresas();
    this.empresas = localList1;
    List localList2 = this.empresas;
    EmpresaListAdapter localEmpresaListAdapter = new EmpresaListAdapter(this, localList2);
    setListAdapter(localEmpresaListAdapter);
  }
  
  protected void editarEmpresa(int paramInt)
  {
    Empresa localEmpresa = (Empresa)this.empresas.get(paramInt);
    Intent localIntent1 = new Intent(this, EditarEmpresa.class);
    int i = localEmpresa.id;
    Intent localIntent2 = localIntent1.putExtra("_id", i);
    startActivityForResult(localIntent1, 1);
  }
  
  public void fecharJanelaSobre()
  {
    this.janelaSobre.cancel();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1) {
      return;
    }
    atualizarLista();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    repositorio = new RepositorioEmpresaScript(this);
    atualizarLista();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    MenuItem localMenuItem1 = paramMenu.add(0, 1, 0, 2131034172).setIcon(2130837521);
    MenuItem localMenuItem2 = paramMenu.add(0, 5, 0, 2131034123).setIcon(2130837513);
    MenuItem localMenuItem3 = paramMenu.add(0, 7, 0, 2131034173).setIcon(2130837530);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    repositorio.fechar();
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    editarEmpresa(paramInt);
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      Intent localIntent1 = new Intent(this, EditarEmpresa.class);
      startActivityForResult(localIntent1, 1);
      continue;
      Intent localIntent2 = new Intent(this, Configuracao.class);
      startActivityForResult(localIntent2, 5);
      continue;
      View localView = LayoutInflater.from(this).inflate(2130903060, null);
      AlertDialog local1 = new AlertDialog(this)
      {
        protected void onCreate(Bundle paramAnonymousBundle)
        {
          super.onCreate(paramAnonymousBundle);
          Button localButton = (Button)findViewById(2131099766);
          View.OnClickListener local1 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              CadastroEmpresa.this.setResult(0);
              CadastroEmpresa.this.fecharJanelaSobre();
            }
          };
          localButton.setOnClickListener(local1);
        }
      };
      this.janelaSobre = local1;
      this.janelaSobre.setIcon(2130837520);
      this.janelaSobre.setTitle(2131034190);
      this.janelaSobre.setView(localView);
      this.janelaSobre.show();
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    atualizarLista();
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.empresa.CadastroEmpresa
 * JD-Core Version:    0.7.0.1
 */