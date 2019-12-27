<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student.Master" AutoEventWireup="true" CodeBehind="my_issue_books.aspx.cs" Inherits="LibrarySystem.student.my_issue_books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>My Issued Books</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="min-height: 500px; background-color: white">
        <asp:DataList ID="d1" runat="server">
            <HeaderTemplate>
                <table class="table text-center">
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>ISBN</th>
                        <th>Books Issue Date</th>
                        <th>Approx Return Date</th>
                        <th>Is Books Return</th>
                        <th>Books Returned Date</th>
                        <th>Latedays</th>
                        <th>Penalty ($)</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("student_id") %></td>
                    <td><%#Eval("student_username") %></td>
                    <td><%#Eval("books_isbn") %></td>
                    <td><%#Eval("books_issue_date") %></td>
                    <td><%#Eval("books_approx_return_date") %></td>
                    <td><%#Eval("is_books_return") %></td>
                    <td><%#Eval("books_return_date") %></td>
                    <td><%#Eval("latedays") %></td>
                    <td><strong><%#Eval("penalty") %></strong></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:DataList>
    </div>

</asp:Content>
