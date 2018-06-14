<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CestaCompra.Apresentacao._Login" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Container text-center">
        </br>
        </br>

        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Usuário</label>
                <asp:TextBox runat="server" ID="TxtUsuario"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Senha&nbsp&nbsp</label>
                <asp:TextBox runat="server" ID="TxtSenha" type="password"></asp:TextBox>
            </div>
            <asp:Button ID="BtnAcesso" class="btn btn-primary" runat="server" TabIndex="4" OnClick="BtnEntrar_Click" Text="Entrar" />
            <asp:LinkButton ID="LkbEsqueceuSenha" OnClientClick="return window.confirm('Deseja realmente solicitar recuperação de senha?');" OnClick="LkbEsqueceuSenha_Click" runat="server">Esqueceu sua senha?</asp:LinkButton>
        </form>
        
    </div>
</asp:Content>
