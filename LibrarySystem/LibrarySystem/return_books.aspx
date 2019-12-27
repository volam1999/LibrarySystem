<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="return_books.aspx.cs" Inherits="LibrarySystem.return_books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table text-center" id="table">
                            <thead>
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
                                    <th>Return Books</th>
                                </tr>
                            </thead>
                            <tbody>
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
                            <td><a href="return_books_handler.aspx?id=<%#Eval("id") %>" class="btn btn-outline-success btn-lg btn-block">RETURN</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
