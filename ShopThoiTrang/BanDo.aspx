<%@ Page Title="" Language="C#" MasterPageFile="~/ShopThoiTrang.Master" AutoEventWireup="true" CodeBehind="BanDo.aspx.cs" Inherits="ShopThoiTrang.BanDo" %>

<%@ Register Src="~/MenuLeft.ascx" TagPrefix="uc1" TagName="MenuLeft" %>
<%@ Register Src="~/backtopWeb.ascx" TagPrefix="uc1" TagName="backtopWeb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <script src="js/j-query.js"></script>
    <div class="content " style="min-height:400px; margin-bottom:30px;">
        <uc1:backtopWeb runat="server" ID="backtopWeb" />
        <div class="container">
            <div class="col-md-3">
                <uc1:MenuLeft runat="server" ID="MenuLeft" />
            </div>
            <div class="col-md-8" style="margin-top:40px;">
                <div style=" border:1px solid #a9a9a9; margin:0 auto;width:83%;">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.3542455613465!2d105.77976975168298!3d21.05850910620527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2aba129325%3A0x1f72e665dbc0db5b!2zNDMgQ-G7lSBOaHXhur8sIEPhu5UgTmh14bq_IDEsIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1484555866770" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
           
            </div>
        </div>
    </div>
</asp:Content>
