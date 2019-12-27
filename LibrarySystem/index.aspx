<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LibrarySystem.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-2">
            <div class="card-body pb-0">
                <h1 class="mb-0">
                    <span class="count">
                        <asp:Label ID="lb_admin" runat="server"></asp:Label></span>
                </h1>
                <p class="text-light">Admin Total</p>
            </div>
        </div>
    </div>

                <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-4">
                    <div class="card-body pb-0">
                        <h1 class="mb-0">
                            <span class="count"><asp:Label ID="lb_user" runat="server"></asp:Label></span>
                        </h1>
                        <p class="text-light">User Total</p>
                    </div>
                </div>
            </div>

                <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-3">
                    <div class="card-body pb-0">
                        <h1 class="mb-0">
                            <span class="count"><asp:Label ID="lb_books" runat="server"></asp:Label></span>
                        </h1>
                        <p class="text-light">Books Total</p>

                    </div>
                </div>
            </div>

                <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-2">
                    <div class="card-body pb-0">
                        <h1 class="mb-0">
                            <span class="count"><asp:Label ID="lb_issued" runat="server"></asp:Label></span>
                        </h1>
                        <p class="text-light">Total Books Issued</p>
                    </div>
                </div>
            </div>

    <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; TPCOP's Website 2019</span>
          </div>
        </div>
      </footer>
</asp:Content>
