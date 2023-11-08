<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            color: blue; font-size:15pt;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>This is my first page of the E Commerce website</p>
    <p>On this page I will display product images</p>
</asp:Content>
