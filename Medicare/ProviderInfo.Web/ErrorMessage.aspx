<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorMessage.aspx.cs" Inherits="ProviderInfo.Web.ErrorMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <h1>ASACS</h1>
        <p class="lead">Atlanta Sharing Alliance Coordination System</p>
    </div>
    <div class="row">
        <h3 style="color: red;">Something went wrong!</h3>
        <div>
            Error message:
        </div>
    </div>
    <div class="row">
        <asp:Label ClientIDMode="Static" ID="lblErrorMessage" runat="server" Width="100%"></asp:Label>
    </div>
</asp:Content>