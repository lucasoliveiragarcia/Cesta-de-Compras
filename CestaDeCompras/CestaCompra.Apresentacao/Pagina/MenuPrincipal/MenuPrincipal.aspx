<%@ Page Title="Menu Principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="CestaCompra.Apresentacao.MenuPrincipal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="list-group">
        <a href="../../Pagina/ListaCompra/ListagemListaCompra" class="list-group-item list-group-item-action">Minhas Listas de Compra</a>
        <a href="#" class="list-group-item list-group-item-action list-group-item-primary">Fazer Compras</a>
        <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Sugerir Item</a>
        <a href="../../Pagina/Historico/Historico" class="list-group-item list-group-item-action list-group-item-success">Histórico</a>
        <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Sair do Aplicativo</a>
    </div>
</asp:Content>
