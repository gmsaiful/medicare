<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProviderInfo.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row col-md-12 pageHeader">
        <h2>Provider Search</h2>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-4">
                        <asp:Label runat="server" ClientIDMode="Static" CssClass="col-md-2 control-label">Provider&nbsp;Number</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label runat="server" ClientIDMode="Static" CssClass="col-md-2 control-label">Provider&nbsp;Name</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label runat="server" ClientIDMode="Static" CssClass="col-md-2 control-label">Provider&nbsp;Zip&nbsp;Code</asp:Label>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-md-4">
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="txtNumber" CssClass="form-control NumericOnly" />
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="txtName" CssClass="form-control" />
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="txtZip" CssClass="form-control NumericOnly" Width="150px" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-5 col-md-6">
                        <input type="button" id="btnSearch" value="Search" CssClass="btn btn-default" onclick="return SearchClick();"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCount" ClientIDMode="Static" runat="server" CssClass="control-label"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div id="divResult" class="col-md-12">
            <div id="jsGrid"></div>
        </div>
    </div>
    <script>
        $(".NumericOnly")
            .keypress(function (e) {
                if (e.which !== 8 && e.which !== 0 && (e.which < 48 || e.which > 57)) {
                    toastr.error("Digits Only");
                    return false;
                }
                return true;
            });
    </script>
</asp:Content>
