<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student.Master" AutoEventWireup="true" CodeBehind="view_account.aspx.cs" Inherits="LibrarySystem.student.view_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C2" runat="server">
    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>MY ACCOUNT DETAIL</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <!-- Book Card -->
            <div id="pay-invoice">
                <div class="card-body">
                        <table style="width: 100%;" id="tb1" runat="server" class="table text-center">
                            <tr>
                                <td colspan="3" class="text-center">
                                    <h3><strong><asp:Label ID="lb_user" runat="server"></asp:Label></strong></h3>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="5" style="width: 208px">
                                    <asp:Image ID="img_account" runat="server" Height="228" Width="207" /></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="width: 260px" align="right">Full Name:</td>
                                <td align="left" style="padding-left: 5px;">
                                    <asp:Label ID="lb_name" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 260px" align="right">Email:</td>
                                <td align="left" style="padding-left: 5px;">
                                    <asp:Label ID="lb_email" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 260px" align="right">Contact:</td>
                                <td align="left" style="padding-left: 5px;">
                                    <asp:Label ID="lb_contact" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
