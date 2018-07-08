<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CestaCompra.Apresentacao._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>

    </style>
    <div id="Principal" style="position:relative; width:400px; height:400px ; top:100px; left:35%;
    margin-top:-50px; margin-left:-50px;">
        <ul class="list-unstyled">
            <li class="media">
                <img class="mr-3" style="position:relative; width: 10%;left:0%;" src="../imagem/economizar.png" alt=" image">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Nunca foi tão fácil economizar nas compras de supermercado.</h5>
                </div>
            </li>
            <li class="media my-4">
                <img class="mr-3" style="position:relative; width: 10%;left:0%;" src="../imagem/comunidade.png" alt=" image">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Junte-se a comunidade disposta a economizar!</h5>
                </div>
            </li>
            <li class="media">
                <img class="mr-3" style="position:relative; width: 10%;left:0%;" src="../imagem/acessoMulti.png" alt=" image">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Gerencia suas listas de compras em um só lugar.</h5>
                </div>
            </li>
        </ul>

        <div class="btn-group-horizontal">
            <a href="Login/Login" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Fazer Login</a>
            <a href="Cadastrar/Cadastrar" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Cadastrar</a>
        </div>
    </div>
</asp:Content>
