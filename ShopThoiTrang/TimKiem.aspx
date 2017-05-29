﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ShopThoiTrang.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="ShopThoiTrang.TimKiem" %>

<%@ Register Src="~/MenuLeft.ascx" TagPrefix="uc1" TagName="MenuLeft" %>
<%@ Register Src="~/backtopWeb.ascx" TagPrefix="uc1" TagName="backtopWeb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content">
        <uc1:backtopWeb runat="server" ID="backtopWeb" />
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <uc1:MenuLeft runat="server" ID="MenuLeft" />
                </div>
                <div class="col-md-9">
                    <div style="margin-top: 30px;">
                        <h2 class="tieudegiua">
                            <span class="title-content">KẾT QUẢ TÌM KIẾM</span>
                        </h2>
                    </div>
                    <div style="margin:40px 70px;">
                        <asp:DataList ID="dtltimkiem" runat="server" RepeatColumns="2" OnItemCommand="dtltimkiem_ItemCommand">
                            <ItemTemplate>
                                <div style="width: 100%; ">
                                    <div class="item" style="margin: 10px;">
                                        <a href="#">
                                            <asp:ImageButton ID="ImageButton1" Style="width: 100%" ImageUrl='<%# Bind("image")%>' runat="server" CommandName="myCommand" />
                                            <div class="giamgia">
                                                <h3 style="font-size: 11px;">Giảm</h3>
                                                <h3 style="font-size: 16px;">10%</h3>
                                            </div>
                                        </a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <h3 class="item_text">
                                    <asp:HyperLink ID="hpltensp" runat="server" Text='<%# Eval("TenHang").ToString().Length<=26?Eval("TenHang"):Eval("TenHang").ToString().Substring(0,26)+"..." %>' Style="display: block; width: 100%; text-align: center;">
                                       
                                    </asp:HyperLink>

                                </h3>
                                        <p>
                                            <strong><%# String.Format("{0:0,00}", int.Parse(DataBinder.Eval(Container.DataItem, "giaMoi").ToString()))  %></strong>
                                            <span><%# String.Format("{0:0,00}", int.Parse(DataBinder.Eval(Container.DataItem, "giaCu").ToString()))  %></span>
                                           <asp:LinkButton ID="LinkButton1" class="discount" CommandName="myCommand" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                                        </p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                         

                    </div>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
