<%@ Page Title="Lista de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListagemListaCompra.aspx.cs" Inherits="CestaCompra.Apresentacao.ListagemListaCompra" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" EnableViewState="true">
    <h2><%: Title %></h2>



    <div id="DivListaGrid" class="container-fluid">
        <asp:button id="BtnCriarNovaLista" class="btn btn-success btn-lg col-md-6" runat="server" tabindex="1" onclick="BtnCriarNovaLista_Click" text="Criar Nova Lista" />

        <asp:gridview id="GvwLista" runat="server" width="50%" cellspacing="1" cellpadding="0"
            allowsorting="True" gridlines="None" autogeneratecolumns="False" allowpaging="True"
            pagesize="20" onpageindexchanging="Paginacao_Grid"
            cssclass="table table-hover table-striped" showheader="false">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="BtnAbriLista" class="btn btn-light btn-lg col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                             OnCommand="Editar_Command" CommandArgument='<%# Eval("idlistaCompra") %>'/>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
    </div>

</asp:Content>
