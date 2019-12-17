<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add_penalty.aspx.cs" Inherits="LibrarySystem.add_penalty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    <div class="col-lg-12">
        <div class="alert alert-danger" runat="server" id="error" role="alert" style="display: none;">
            <strong>Your Books NOT Added!</strong>
        </div>
        <div class="alert alert-success" runat="server" id="msg" role="alert" style="display: none;">
            <strong>Your Books Added Successfully!</strong>
        </div>
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Add / Edit Penalty</strong>
            </div>
            <div class="card-body">
                <!-- Book Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="f1" runat="server">

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Add Edit Penalty ($)</label>
                                <asp:TextBox ID="txt_penalty" runat="server" class="form-control" required></asp:TextBox>
                            </div>


                            <div>
                                <asp:Button ID="btn_add" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Penalty" OnClick="btn_add_Click" />
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <!-- .card -->

    </div>
    <!--/.col-->
</asp:Content>
